package com.example.mlkit;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.view.View;
import android.widget.TextView;


import androidx.annotation.NonNull;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.ml.vision.FirebaseVision;
import com.google.firebase.ml.vision.common.FirebaseVisionImage;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.ml.vision.label.FirebaseVisionImageLabeler;
import com.google.firebase.ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions;
import com.shivtechs.maplocationpicker.LocationPickerActivity;
import com.shivtechs.maplocationpicker.MapUtility;

import java.util.List;
import java.util.Locale;


public class LocationActivity extends Activity  {
	private TextToSpeech textToSpeech;
	private TextView txtLatLong;
	private TextView txtAddress;
	private static final int ADDRESS_PICKER_REQUEST = 1020;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_location);
		MapUtility.apiKey = getResources().getString(R.string.api_key);
		findViewById(R.id.btnAddressPicker);
		txtLatLong = findViewById(R.id.txtLatLong);
		txtAddress = findViewById(R.id.txtAddress);
         //Text to Speech
		textToSpeech = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() {
			@Override
			public void onInit(int status) {
				if (status == TextToSpeech.SUCCESS){
					//Select language
					int lang = textToSpeech.setLanguage(Locale.ENGLISH);

				}
			}
		});

		findViewById(R.id.btnAddressPicker).setOnClickListener(new View.OnClickListener(){
			public void onClick(View v)
			{String textToConvert ="You pressed on Show Location Picker do not forget to wait a moment then press on continue on the bottom of you device's screen  to get you location";

				if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
					textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
				} else {
					textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
				}
				Intent intent = new Intent(LocationActivity.this, LocationPickerActivity.class);
				startActivityForResult(intent, ADDRESS_PICKER_REQUEST);

				findViewById(R.id.btnAddressPicker).setOnClickListener(new View.OnClickListener(){
					public void onClick(View v)
					{textToSpeech.stop();
						String textToConvert ="Welcome back to Eye Vision do you want a help or speak";

						if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
							textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
						} else {
							textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
						}
						Intent i = new Intent(LocationActivity.this, MainActivity.class);
						startActivity(i);




					}


				});
			}

		});


	}



	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);

		if (requestCode == ADDRESS_PICKER_REQUEST) {
			try {
				if (data != null && data.getStringExtra(MapUtility.ADDRESS) != null) {
					// String address = data.getStringExtra(MapUtility.ADDRESS);
					double currentLatitude = data.getDoubleExtra(MapUtility.LATITUDE, 0.0);
					double currentLongitude = data.getDoubleExtra(MapUtility.LONGITUDE, 0.0);
					Bundle completeAddress =data.getBundleExtra("fullAddress");
                    /* data in completeAddress bundle
                    "fulladdress"
                    "city"
                    "state"
                    "postalcode"
                    "country"
                    "addressline1"
                    "addressline2"
                     */

					txtAddress.setText(new StringBuilder().append("addressline2: ").append
							(completeAddress.getString("addressline2")).append("\ncity: ").append
							(completeAddress.getString("city")).append("\npostalcode: ").append
							(completeAddress.getString("postalcode")).append("\nstate: ").append
							(completeAddress.getString("state")).toString());
					String textToConvert = txtAddress.getText().toString();
					if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
						textToSpeech.speak(textToConvert,TextToSpeech.QUEUE_FLUSH,null,null);
					} else {
						textToSpeech.speak(textToConvert, TextToSpeech.QUEUE_FLUSH, null);
					}

					txtLatLong.setText(new StringBuilder().append("Lat:").append(currentLatitude).append
							("  Long:").append(currentLongitude).toString());

				}
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	}
}
