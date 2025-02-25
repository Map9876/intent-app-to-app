package com.example.proxyapp;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;

public class ProxyActivity extends AppCompatActivity {
    private static final String TAG = "ProxyActivity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null) {
            String url = data.toString();
            Log.d(TAG, "Captured URL: " + url);

            // 根据 URL 伪造对应的包名进行跳转
            if (url.contains("example.com/page")) {
                Intent proxyIntent = new Intent();
                proxyIntent.setClassName("com.example.targetapp", "com.example.targetapp.TargetActivity");
                proxyIntent.setData(data);
                startActivity(proxyIntent);
            } else if (url.contains("anotherexample.com/page")) {
                Intent proxyIntent = new Intent();
                proxyIntent.setClassName("com.anotherexample.targetapp", "com.anotherexample.targetapp.TargetActivity");
                proxyIntent.setData(data);
                startActivity(proxyIntent);
            } else {
                Log.d(TAG, "No matching URL scheme found.");
            }
        }

        finish();
    }
}