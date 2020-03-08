package com.example.androidandflutterdemo;

import android.app.Application;

import com.example.androidandflutterdemo.utils.Constant;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        initFlutterCash();
    }
    private void initFlutterCash() {
        FlutterEngine flutterEngine = new FlutterEngine(this);
        flutterEngine.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        FlutterEngineCache.getInstance().put(Constant.LAUNCH_FLUTTER_LOGIN_PAGE, flutterEngine);
    }
}
