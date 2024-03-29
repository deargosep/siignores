import '../../domain/entities/module_enitiy.dart';

class ModuleModel extends ModuleEntity{
  ModuleModel({
    required int id,
    required String title,
    required bool perm,
    required String? description,
    required String? image,

  }) : super(
    id: id, 
    title: title,
    image: image,
    perm: perm,
    description: description
  );

  factory ModuleModel.fromJson(Map<String, dynamic> json) => ModuleModel(
    id: json['id'] ?? 1,
    title: json['name'],
    image: json['image'],
    perm: json['perm'],
    description: json['description']
  );
}