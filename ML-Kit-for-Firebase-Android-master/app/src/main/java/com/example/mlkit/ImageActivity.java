package com.example.mlkit;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;

import android.speech.RecognizerIntent;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.mlkit.helpers.MyHelper;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.ml.vision.FirebaseVision;
import com.google.firebase.ml.vision.common.FirebaseVisionImage;
import com.google.firebase.ml.vision.label.FirebaseVisionCloudImageLabelerOptions;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabeler;
import com.google.firebase.ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class ImageActivity extends BaseActivity {
	private Bitmap mBitmap;
	private ImageView mImageView;
	private TextView mTextView;
	private TextToSpeech textToSpeech;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_cloud);

		mTextView = findViewById(R.id.text_view);
		mImageView = findViewById(R.id.image_view);

		//Text to speech
		textToSpeech = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() {
			@Override
			public void onInit(int status) {
				if (status == TextToSpeech.SUCCESS){
					//Select language
					int lang = textToSpeech.setLanguage(Locale.ENGLISH);

				}
			}
		});
       // speech to text
		Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
		intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
		intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());

		if (intent.resolveActivity(getPackageManager()) != null) {
			startActivityForResult(intent, 10);

		}
		findViewById(R.id.image_view).setOnClickListener(new View.OnClickListener(){
			public void onClick(View v)
			{
				if (mBitmap != null) {
					FirebaseVisionOnDeviceImageLabelerOptions options = new FirebaseVisionOnDeviceImageLabelerOptions.Builder()
							.setConfidenceThreshold(0.7f)
							.build();
					FirebaseVisionImage image = FirebaseVisionImage.fromBitmap(mBitmap);
					FirebaseVisionImageLabeler detector = FirebaseVision.getInstance().getOnDeviceImageLabeler(options);
					detector.processImage(image).addOnSuccessListener(new OnSuccessListener<List<FirebaseVisionImageLabel>>() {
						@Override
						public void onSuccess(List<FirebaseVisionImageLabel> labels) {
							extractLabel(labels);
						}
					}).addOnFailureListener(new OnFailureListener() {
						@Override
						public void onFailure(@NonNull Exception e) {
							mTextView.setText(e.getMessage());
						}
					});
				}
				findViewById(R.id.image_view).setOnClickListener(new View.OnClickListener(){
					public void onClick(View v)
					{ if (textToSpeech.isSpeaking() == true){
						textToSpeech.stop();}
					else if (textToSpeech.isSpeaking() == false){
						String textToConvert ="Welcome back to Eye Vision do you want a help or speak";
						int speech;
						if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
							speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
						} else {
							speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
						}
						Intent i = new Intent(ImageActivity.this,MainActivity.class);
						startActivity(i);}
					}


				});
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
							Intent i = new Intent(ImageActivity.this,ImageActivity.class);
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
	private void extractLabel(List<FirebaseVisionImageLabel> labels) {
		for (FirebaseVisionImageLabel label : labels) {
			mTextView.append(label.getText() + "\n");
			mTextView.append(((int) ((label.getConfidence() * 100.0) + ((label.getConfidence() < 0.0) ? -0.5 : 0.5))) / 100.0 + "\n\n");


			String textToConvert = mTextView.getText().toString();
			if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
				textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
			} else {
				textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
			}


		}
	}




}
