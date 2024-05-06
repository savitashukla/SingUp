import 'dart:convert';

import 'package:demo_s/main_fe/home/data_layer/template_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class TemplateLocalDataSource {
  Future<void> cacheTemplate({required TemplateModel? templateToCache});
  Future<TemplateModel> getLastTemplate();
}

const cachedTemplate = 'CACHED_TEMPLATE';

class TemplateLocalDataSourceImpl implements TemplateLocalDataSource {
  final SharedPreferences sharedPreferences;

  TemplateLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<TemplateModel> getLastTemplate() {
    final jsonString = sharedPreferences.getString(cachedTemplate);


      return Future.value(TemplateModel.fromJson(json: json.decode(jsonString!)));

  }

  @override
  Future<void> cacheTemplate({required TemplateModel? templateToCache}) async {

      sharedPreferences.setString(
        cachedTemplate,
        json.encode(
          templateToCache!.toJson(),
        ),
      );

  }
}
