package com.example.xifei.usbtest.main;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.example.xifei.usbtest.R;

public abstract class BaseChatActivity extends ActionBarActivity {

    TextView contentTextView;
    EditText input;
    public abstract void sendString(final String string);

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chat);

        contentTextView= (TextView) findViewById(R.id.content_text);
        input= (EditText) findViewById(R.id.input_edittext);

        //监听发送消息事件
        input.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                final String inputString = input.getText().toString();
                if (inputString.length() == 0) {
                    return;
                }
                sendString(inputString);
                printLineToUI(getString(R.string.local_prompt) + inputString);
                input.setText("");
            }
        });

    }

    public void printLineToUI(final String line) {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                contentTextView.setText(contentTextView.getText() + "\n" + line);
            }
        });
    }

}
