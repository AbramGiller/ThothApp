package com.example.thothapp;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;
public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initPython();
    }
    private void initPython() {
        if (! Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }
    }
}
package com.example.thothapp;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import com.chaquo.python.Python;
import com.chaquo.python.android.AndroidPlatform;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initPython();
    }

    private void initPython() {
        if (! Python.isStarted()) {
            Python.start(new AndroidPlatform(this));
        }
    }
}
