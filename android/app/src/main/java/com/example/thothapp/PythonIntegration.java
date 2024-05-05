package com.example.thothapp;

import com.chaquo.python.PyObject;
import com.chaquo.python.Python;

public class PythonIntegration {

    public static String extractTextFromPdf(String filePath) {
        Python py = Python.getInstance();
        PyObject pyObj = py.getModule("ebook_reader");  // Assuming your Python script is named ebook_reader.py
        return pyObj.callAttr("extract_text_from_pdf", filePath).toString();
    }

    public static String processText(String text) {
        Python py = Python.getInstance();
        PyObject pyObj = py.getModule("text_processor");  // Assuming your Python script is named text_processor.py
        return pyObj.callAttr("process_text", text).toString();
    }
}

