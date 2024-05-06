import '../data_layer/template_model.dart';

abstract class TemplateLocalDataSource {
 Future<void> cacheTemplate({required TemplateModel? templateToCache});
 Future<TemplateModel> getLastTemplate();
}