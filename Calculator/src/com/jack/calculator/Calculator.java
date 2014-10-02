package com.jack.calculator;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

/**
 * @author wanglijie
 * This is an exercise in Android.
 * Will complete it in future.
 */
public class Calculator extends Activity {

	// Implement a Calculator
	// Four components: two editText, one textView, one button
	private EditText factorOne = null;
	private EditText factorTwo = null;
	
	private TextView symbol = null;
	private Button calculate = null;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_calculator);
		
		// set name of symbol and calculate
		symbol = (TextView) findViewById(R.id.symbol);
		symbol.setText(R.string.symbol);
		calculate = (Button) findViewById(R.id.calculate);
		calculate.setText(R.string.calculate);
		// bind the listener
		calculate.setOnClickListener(new MyButtonListener());
	}

	class MyButtonListener implements OnClickListener {

		@Override
		public void onClick(View v) {
			
			// get the multi factor
			factorOne = (EditText) findViewById(R.id.factorOne);
			factorTwo = (EditText) findViewById(R.id.factorTwo);
			
			Intent intent = new Intent();
			intent.putExtra("factorOneStr", factorOne.getText().toString());
			intent.putExtra("factorTwoStr", factorTwo.getText().toString());
			intent.setClass(Calculator.this, Result.class);
			startActivity(intent);
		}
		
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.calculator, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
