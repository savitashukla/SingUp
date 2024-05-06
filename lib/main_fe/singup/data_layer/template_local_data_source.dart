import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';



const cachedTemplate = 'CACHED_TEMPLATE';

class TemplateLocalDataSourceImpl {
  final SharedPreferences sharedPreferences;

  TemplateLocalDataSourceImpl({required this.sharedPreferences});


}
