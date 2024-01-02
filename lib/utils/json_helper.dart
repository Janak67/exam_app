import 'dart:convert';

import 'package:exam_app/screen/home/model/home_model.dart';
import 'package:flutter/services.dart';

class JsonHelper {
  Future<List<HomeModel>> homeJsonToList() async {
    var jsonString = await rootBundle.loadString("assets/json/song.json");
    List home = jsonDecode(jsonString);
    List<HomeModel> modelList =
        home.map((e) => HomeModel.mapToModel(e)).toList();
    return modelList;
  }
}
