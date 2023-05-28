// To parse this JSON data, do
//
//     final categoriesResModel = categoriesResModelFromJson(jsonString);

import 'dart:convert';

List<CategoriesResModel> categoriesResModelFromJson(String str) =>
    List<CategoriesResModel>.from(
        json.decode(str).map((x) => CategoriesResModel.fromJson(x)));

String categoriesResModelToJson(List<CategoriesResModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoriesResModel {
  int? id;
  String? name;
  String? description;
  String? metatitle;
  String? metadescription;
  String? metakeywords;
  dynamic parent;
  String? ancestors;
  String? path;
  String? image;
  String? thumb;
  int? isTopMenu;
  int? sortOrder;
  int? status;
  int? deleteStatus;

  CategoriesResModel({
    this.id,
    this.name,
    this.description,
    this.metatitle,
    this.metadescription,
    this.metakeywords,
    this.parent,
    this.ancestors,
    this.path,
    this.image,
    this.thumb,
    this.isTopMenu,
    this.sortOrder,
    this.status,
    this.deleteStatus,
  });

  factory CategoriesResModel.fromJson(Map<String, dynamic> json) =>
      CategoriesResModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        metatitle: json["metatitle"],
        metadescription: json["metadescription"],
        metakeywords: json["metakeywords"],
        parent: json["parent"],
        ancestors: json["ancestors"],
        path: json["path"],
        image: json["image"],
        thumb: json["thumb"],
        isTopMenu: json["is_top_menu"],
        sortOrder: json["sort_order"],
        status: json["status"],
        deleteStatus: json["deleteStatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "metatitle": metatitle,
        "metadescription": metadescription,
        "metakeywords": metakeywords,
        "parent": parent,
        "ancestors": ancestors,
        "path": path,
        "image": image,
        "thumb": thumb,
        "is_top_menu": isTopMenu,
        "sort_order": sortOrder,
        "status": status,
        "deleteStatus": deleteStatus,
      };
}
