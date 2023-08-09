package com.example.mlkit;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;

import com.example.mlkit.helpers.MyHelper;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.ml.common.modeldownload.FirebaseModelDownloadConditions;
import com.google.firebase.ml.naturallanguage.FirebaseNaturalLanguage;
import com.google.firebase.ml.naturallanguage.translate.FirebaseTranslateLanguage;
import com.google.firebase.ml.naturallanguage.translate.FirebaseTranslator;
import com.google.firebase.ml.naturallanguage.translate.FirebaseTranslatorOptions;
import com.google.firebase.ml.vision.FirebaseVision;
import com.google.firebase.ml.vision.cloud.FirebaseVisionCloudDetectorOptions;
import com.google.firebase.ml.vision.common.FirebaseVisionImage;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabeler;
import com.google.firebase.ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions;
import com.google.firebase.ml.vision.text.FirebaseVisionCloudTextRecognizerOptions;
import com.google.firebase.ml.vision.text.FirebaseVisionText;
import com.google.firebase.ml.vision.text.FirebaseVisionTextRecognizer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class TextActivity extends BaseActivity {
	private Bitmap mBitmap;
	private ImageView mImageView;
	private TextView mTextView;
	private FirebaseTranslator EnThTranslator;
	private TextToSpeech textToSpeech;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_cloud);

		mTextView = findViewById(R.id.text_view);
		mImageView = findViewById(R.id.image_view);


		FirebaseTranslatorOptions options = new FirebaseTranslatorOptions.Builder()
				.setSourceLanguage(FirebaseTranslateLanguage.EN)
				.setTargetLanguage(FirebaseTranslateLanguage.AR)
				.build();
		EnThTranslator = FirebaseNaturalLanguage.getInstance().getTranslator(options);

		FirebaseModelDownloadConditions conditions = new FirebaseModelDownloadConditions.Builder().build();
		EnThTranslator.downloadModelIfNeeded(conditions).addOnSuccessListener(new OnSuccessListener<Void>() {
			@Override
			public void onSuccess(Void v) {
				mTextView.setText(null);
				findViewById(R.id.image_view).setEnabled(true);
			}
		}).addOnFailureListener(new OnFailureListener() {
			@Override
			public void onFailure(@NonNull Exception e) {
				mTextView.setText(e.getMessage());
			}
		});
		//textTospeech
		textToSpeech = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() {
			@Override
			public void onInit(int status) {
				if (status == TextToSpeech.SUCCESS){
					//Select language
					int lang = textToSpeech.setLanguage(Locale.ENGLISH);
				}
			}
		});
		//voice Recognition
		Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
		intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
		intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());

		if (intent.resolveActivity(getPackageManager()) != null) {
			startActivityForResult(intent, 10);
		} else {
			Toast.makeText(this, "Your Device Don't Support Speech Input", Toast.LENGTH_SHORT).show();
		}

		findViewById(R.id.image_view).setOnClickListener(new View.OnClickListener(){
			public void onClick(View v)
			{
				if (mBitmap != null) {
					runTextRecognition();
				}

				findViewById(R.id.image_view).setOnClickListener(new View.OnClickListener(){
					public void onClick(View v)
					{
						if (textToSpeech.isSpeaking() == true){
							textToSpeech.stop();
							String text = mTextView.getText().toString().trim();
							translate(text);	}
						findViewById(R.id.image_view).setOnClickListener(new View.OnClickListener(){
							public void onClick(View v)
							{
								if (textToSpeech.isSpeaking() == true){
									textToSpeech.stop();
								}

								else if (textToSpeech.isSpeaking() == false){
									String textToConvert ="Welcome back to Eye Vision do you want a help or speak";
									int speech;
									if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
										speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
									} else {
										speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
									}
									Intent i = new Intent(TextActivity.this,MainActivity.class);
									startActivity(i);}
							}


						});
					}


				});
			}

		});
	}

	private void translate(String msg) {
		Log.e("msg", msg);
		EnThTranslator.translate(msg).addOnSuccessListener(new OnSuccessListener<String>() {
			@Override
			public void onSuccess(String translatedText) {
				mTextView.setText(translatedText);

				String textToConvert = mTextView.getText().toString();
				int speech;
				if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
					speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
				} else {
					speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
				}
			}
		}).addOnFailureListener(new OnFailureListener() {
			@Override
			public void onFailure(@NonNull Exception e) {
				mTextView.setText(e.getMessage());
			}
		});
	}
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		if (resultCode == RESULT_OK) {
			switch (requestCode) {
				case 10:
					if (data != null){
						ArrayList<String> result = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
						result.get(0);
						if(result.get(0).toString().equals("open camera")){
							checkStoragePermission(RC_STORAGE_PERMS2);
							mBitmap = MyHelper.resizeImage(imageFile, imageFile.getPath(), mImageView);
							if (mBitmap != null) {
								mTextView.setText(null);
								mImageView.setImageBitmap(mBitmap);
							}

						}

						else
						{

							String textToConvert ="Activity not recognized ";
							int speech;
							if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
								speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
							} else {
								speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
							}
							Intent i = new Intent(TextActivity.this,TextActivity.class);
							startActivity(i);
						}

					}
					break;

				case RC_STORAGE_PERMS2:
					checkStoragePermission(requestCode);
					break;

				case RC_TAKE_PICTURE:
					mBitmap = MyHelper.resizeImage(imageFile, imageFile.getPath(), mImageView);
					if (mBitmap != null) {
						mTextView.setText(null);
						mImageView.setImageBitmap(mBitmap);
					}
					break;
			}
		}
	}

	private void runTextRecognition() {
		FirebaseVisionImage image = FirebaseVisionImage.fromBitmap(mBitmap);
		FirebaseVisionTextRecognizer detector = FirebaseVision.getInstance().getOnDeviceTextRecognizer();
		detector.processImage(image).addOnSuccessListener(new OnSuccessListener<FirebaseVisionText>() {
			@Override
			public void onSuccess(FirebaseVisionText texts) {
				processTextRecognitionResult(texts);
			}
		}).addOnFailureListener(new OnFailureListener() {
			@Override
			public void onFailure(@NonNull Exception e) {
				e.printStackTrace();
			}
		});
	}

	private void runCloudTextRecognition() {
		MyHelper.showDialog(this);

		FirebaseVisionCloudTextRecognizerOptions options = new FirebaseVisionCloudTextRecognizerOptions.Builder()
				.setLanguageHints(Arrays.asList("en", "hi"))
				.setModelType(FirebaseVisionCloudDetectorOptions.LATEST_MODEL)
				.build();

		FirebaseVisionImage image = FirebaseVisionImage.fromBitmap(mBitmap);
		FirebaseVisionTextRecognizer detector = FirebaseVision.getInstance().getCloudTextRecognizer(options);

		detector.processImage(image).addOnSuccessListener(new OnSuccessListener<FirebaseVisionText>() {
			@Override
			public void onSuccess(FirebaseVisionText texts) {
				MyHelper.dismissDialog();
				processTextRecognitionResult(texts);
			}
		}).addOnFailureListener(new OnFailureListener() {
			@Override
			public void onFailure(@NonNull Exception e) {
				MyHelper.dismissDialog();
				e.printStackTrace();
			}
		});
	}

	private void processTextRecognitionResult(FirebaseVisionText firebaseVisionText) {
		mTextView.setText(null);
		if (firebaseVisionText.getTextBlocks().size() == 0) {
			mTextView.setText(R.string.error_not_found);
			return;
		}
		for (FirebaseVisionText.TextBlock block : firebaseVisionText.getTextBlocks()) {
			mTextView.append(block.getText());
			String textToConvert = mTextView.getText().toString();
			int speech;
			if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
				speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
			} else {
				speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
			}
			//In case you want to extract each line
			/*
			for (FirebaseVisionText.Line line: block.getLines()) {
				for (FirebaseVisionText.Element element: line.getElements()) {
					mTextView.append(element.getText() + " ");
				}
			}
			*/
		}
	}

}

