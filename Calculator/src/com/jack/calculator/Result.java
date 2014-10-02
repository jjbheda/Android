package com.jack.calculator;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class Result extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_result);
		
		// get factors from preview activity 
		Intent intent = getIntent();
		String factorOneStr = intent.getStringExtra("factorOneStr");
		String factorTwoStr = intent.getStringExtra("factorTwoStr");
		
		// calculate
		Integer factorOne = Integer.parseInt(factorOneStr);
		Integer factorTwo = Integer.parseInt(factorTwoStr);
		Integer result = factorOne * factorTwo;
		
		// show result
		TextView textView = (TextView)findViewById(R.id.result);
		textView.setText(result + "");
	}

}
