package com.example.mlkit;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

import android.speech.RecognizerIntent;
import android.speech.tts.TextToSpeech;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;

import java.util.ArrayList;
import java.util.Locale;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemClickListener {
	private String[] classNames;
	private TextToSpeech textToSpeech;
	private static final Class<?>[] CLASSES = new Class<?>[]{
			TextActivity.class,
			ImageActivity.class,


	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		classNames = getResources().getStringArray(R.array.class_name);

		ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, classNames);

		findViewById(R.id.help).setOnClickListener(new View.OnClickListener(){
			public void onClick(View v)
			{
				String textToConvert ="Welcome to Eye Vision help center if you want to stop click another time " +
						"Say read for reading  Say label for looking around as labelling Say caption for looking around as predicting caption" +
						" Say location to get your current address, " +
						"city,postal code and  state " +
						"Click on the bottom of the phone screen to speak  " +
						"On label page say open camera to Open your phone's camera " +
						"After capturing the photo click on the top or middle of the screen to tell what's around you " +
						"if you want to stop click another time and to go to the Home page click for the third time " +
						"  On read page say open camera to Open your phone's camera " +
						" After capturing the photo click on the top or middle of the screen to read the text around you" +
						" if you want to translate the text to  Arabic click another time if you want to stop speaking click for the third time" +
						"if you want to go to the Home page click for the forth time " +
						"On location page click on the top of the phone's screen to go to the map" +
						"On map page wait one minute then click on the bottom of the screen to approve and continue picking your location " +
						" if you want to stop click another time on the top of the phone's screen "+
						"On caption page click on the middle of the screen to capture an image the click on the bottom " +
						"of the screen to predict caption You must wait one to two minutes to predict your caption describing whats happening around you " +
						"On the first time you press on back button on phone you will directed to Image captioning home page " +
						"and when pressing on the press button to the second" +
						"time you will be back to Eye Vision home page  ";

				if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
					textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
				} else {
					textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
				}
				findViewById(R.id.help).setOnClickListener(new View.OnClickListener(){
					public void onClick(View v)
					{ if (textToSpeech.isSpeaking() == true){
						textToSpeech.stop();}
					else if (textToSpeech.isSpeaking() == false){
						String textToConvert ="Click on the buttom of the phone screen to speak";
						if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
							textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
						} else {
							textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
						}}
					}


				});
			}

		});

		findViewById(R.id.speak).setOnClickListener(new View.OnClickListener(){
			public void onClick(View v){
				Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
				intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
				intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());

				if (intent.resolveActivity(getPackageManager()) != null) {
					startActivityForResult(intent, 10);

				}
			}

		});

		textToSpeech = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() {
			@Override
			public void onInit(int status) {
				if (status == TextToSpeech.SUCCESS){
					//Select language
					int lang = textToSpeech.setLanguage(Locale.ENGLISH);

				}
			}
		});

	}

	@Override
	public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
		Intent intent = new Intent(this, CLASSES[position]);
		intent.putExtra(BaseActivity.ACTION_BAR_TITLE, classNames[position]);
		startActivity(intent);
	}

	protected void onActivityResult(int requestCode, int resultCode, Intent data) {

		super.onActivityResult(requestCode, resultCode, data);

		switch (requestCode) {
			case 10:
				if (resultCode == RESULT_OK && data != null) {
					ArrayList<String> result = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
					result.get(0);
					if(result.get(0).toString().equals("label")){
						Intent i = new Intent(MainActivity.this,ImageActivity.class);
						startActivity(i);
						finish();
					}
					else if(result.get(0).toString().equals("read")){
						Intent i = new Intent(MainActivity.this,TextActivity.class);
						startActivity(i);
						finish();
					}
					else if(result.get(0).toString().equals("location")){
						Intent i = new Intent(MainActivity.this, LocationActivity.class);
						startActivity(i);
						String textToConvert ="Welcome to Eye Vision Location Picker";
						int speech;
						if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
							speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
						} else {
							speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
						}

					}
					else if(result.get(0).toString().equals("caption")){
						Uri u = Uri.parse("http://f6bbb5c9fcd6.ngrok.io");
						Intent i = new Intent(Intent.ACTION_VIEW, u);
						startActivity(i);
						String textToConvert ="Welcome to Eye Vision Image Captioning ";
						int speech;
						if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
							speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
						} else {
							speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
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

					}
				}
				break;

		}
	}

	@Override
	protected void onStart() {
		super.onStart();
		String textToConvert ="Welcome back to Eye Vision do you want a help or speak ";
		int speech;
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
			speech = textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
		} else {
			speech = textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
		}
	}
}
