package com.example.proxyapp;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 模拟从 A 应用跳转到 B 应用的行为
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("app://example.com/page"));
        startActivity(intent);
    }
}