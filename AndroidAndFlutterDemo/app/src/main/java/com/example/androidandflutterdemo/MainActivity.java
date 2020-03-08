package com.example.androidandflutterdemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.example.androidandflutterdemo.utils.Constant;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        startFlutterLoginPage();
    }
    private void startFlutterLoginPage() {
        startActivity(FlutterActivity.withCachedEngine(Constant.LAUNCH_FLUTTER_LOGIN_PAGE).build(MainActivity.this));
    }
}
