package com.example.xifei.usbtest.device;

import android.os.Bundle;

import com.example.xifei.usbtest.main.BaseChatActivity;

public class ChatActivity extends BaseChatActivity {

    private AccessoryCommunicator communicator;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        communicator = new AccessoryCommunicator(this) {

            @Override
            public void onReceive(byte[] payload, int length) {
                printLineToUI("host> " + new String(payload, 0, length));
            }

            @Override
            public void onError(String msg) {
                printLineToUI("notify" + msg);
            }

            @Override
            public void onConnected() {
                printLineToUI("connected");
            }

            @Override
            public void onDisconnected() {
                printLineToUI("disconnected");
            }
        };
    }


    @Override
    public void sendString(String string) {
        communicator.send(string.getBytes());
    }
}
