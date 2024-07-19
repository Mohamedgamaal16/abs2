//TODO: add your view model class here
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:know_our_school/Model/model.dart';

class SchoolInfoViewModelProvider extends ChangeNotifier {
  SchoolInfoModel? schoolInfo;

  Future<void> loadSchoolData() async {
    final String response =
        await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final List<dynamic> data = json.decode(response);
    schoolInfo = SchoolInfoModel.fromJson(data[0]);
    notifyListeners();
  }
}
