import 'dart:convert';

import 'package:demo_s/main_fe/home/data_layer/template_model.dart';
import 'package:demo_s/main_fe/login/data_layer/template_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain_layer/repositry_ab.dart';





const cachedTemplate = 'CACHED_TEMPLATE';

class TemplateLocalDataSourceImpl  {
  final SharedPreferences sharedPreferences;

  TemplateLocalDataSourceImpl({required this.sharedPreferences});






}
