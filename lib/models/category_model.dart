import 'dart:ui';

import 'package:nfssoftmobil/models/project_model.dart';

class CategoryModel{
  int? id;
  String? categoryName;
  List<Color>? color;
  List<ProjectsModel>? project;

  CategoryModel({this.id, this.categoryName, this.color, this.project});
}