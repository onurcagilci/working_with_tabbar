import 'dart:ui';

class ProjectsModel{
  int? id;
  int? categoryId;
  String? projectName;
  List<String>? projectPictures;
  String? projectDescription;

  ProjectsModel({this.id,this.categoryId,this.projectDescription,this.projectName,this.projectPictures});
}