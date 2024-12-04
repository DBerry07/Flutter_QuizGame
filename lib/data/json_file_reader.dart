
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class JsonFileReader {

  Future<List<dynamic>> loadJsonFromAssets(String filepath) async {
    String jsonString = await rootBundle.loadString(filepath);
    return jsonDecode(jsonString);
  }

}