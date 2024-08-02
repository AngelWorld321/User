import 'package:com.angelworld.app/data/model/response/language_model.dart';
import 'package:com.angelworld.app/util/app_constants.dart';
import 'package:flutter/material.dart';

class LanguageRepo {
  List<LanguageModel> getAllLanguages({BuildContext? context}) {
    return AppConstants.languages;
  }
}
