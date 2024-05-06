

import '../../../res/AppString.dart';
import '../domain_layer/template_entity.dart';

class TemplateModel extends TemplateEntity {
  const TemplateModel({
    required String template,
  }) : super(
    template: template,
  );

  factory TemplateModel.fromJson({required Map<String, dynamic> json}) {
    return TemplateModel(
      template: json[AppString().kTemplate],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      AppString().kTemplate: template,
    };
  }
}
