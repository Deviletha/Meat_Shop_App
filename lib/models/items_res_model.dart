// To parse this JSON data, do
//
//     final itemsResModel = itemsResModelFromJson(jsonString);

import 'dart:convert';

List<List<ItemsResModel>> itemsResModelFromJson(String str) =>
    List<List<ItemsResModel>>.from(json.decode(str).map((x) =>
        List<ItemsResModel>.from(x.map((x) => ItemsResModel.fromJson(x)))));

String itemsResModelToJson(List<List<ItemsResModel>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class ItemsResModel {
  int? id;
  String? name;
  String? image;
  String? thumb;
  String? description;
  dynamic metatitle;
  dynamic metadescription;
  dynamic metakeywords;
  dynamic tags;
  String? model;
  dynamic upc;
  dynamic isbn;
  dynamic price;
  dynamic mrp;
  String? taxId;
  dynamic makingcharge;
  String? stoneAmount;
  dynamic design;
  int? quantity;
  int? minimumOrderQuantity;
  int? subtractStock;
  String? outOfStockStatus;
  dynamic shippingCharge;
  dynamic dateAvailable;
  dynamic length;
  dynamic width;
  dynamic height;
  dynamic lengthClass;
  dynamic weight;
  dynamic netWeight;
  String? weightClass;
  dynamic sortOrder;
  dynamic manufacturer;
  String? categories;
  dynamic subcategories;
  dynamic occassion;
  dynamic purity;
  dynamic goldColor;
  dynamic material;
  dynamic shopFor;
  dynamic filters;
  dynamic downloads;
  dynamic related;
  int? status;
  int? deleteStatus;
  DateTime? updated;
  String? discountType;
  String? discount;
  DateTime? offerStart;
  DateTime? offerEnds;
  int? priceAttribute;
  String? category;

  ItemsResModel({
    this.id,
    this.name,
    this.image,
    this.thumb,
    this.description,
    this.metatitle,
    this.metadescription,
    this.metakeywords,
    this.tags,
    this.model,
    this.upc,
    this.isbn,
    this.price,
    this.mrp,
    this.taxId,
    this.makingcharge,
    this.stoneAmount,
    this.design,
    this.quantity,
    this.minimumOrderQuantity,
    this.subtractStock,
    this.outOfStockStatus,
    this.shippingCharge,
    this.dateAvailable,
    this.length,
    this.width,
    this.height,
    this.lengthClass,
    this.weight,
    this.netWeight,
    this.weightClass,
    this.sortOrder,
    this.manufacturer,
    this.categories,
    this.subcategories,
    this.occassion,
    this.purity,
    this.goldColor,
    this.material,
    this.shopFor,
    this.filters,
    this.downloads,
    this.related,
    this.status,
    this.deleteStatus,
    this.updated,
    this.discountType,
    this.discount,
    this.offerStart,
    this.offerEnds,
    this.priceAttribute,
    this.category,
  });

  factory ItemsResModel.fromJson(Map<String, dynamic> json) => ItemsResModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        thumb: json["thumb"],
        description: json["description"],
        metatitle: json["metatitle"],
        metadescription: json["metadescription"],
        metakeywords: json["metakeywords"],
        tags: json["tags"],
        model: json["model"],
        upc: json["upc"],
        isbn: json["isbn"],
        price: json["price"],
        mrp: json["mrp"],
        taxId: json["tax_id"],
        makingcharge: json["makingcharge"],
        stoneAmount: json["stone_amount"],
        design: json["design"],
        quantity: json["quantity"],
        minimumOrderQuantity: json["minimum_order_quantity"],
        subtractStock: json["subtract_stock"],
        outOfStockStatus: json["out_of_stock_status"],
        shippingCharge: json["shipping_charge"],
        dateAvailable: json["date_available"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        lengthClass: json["length_class"],
        weight: json["weight"],
        netWeight: json["netWeight"],
        weightClass: json["weight_class"],
        sortOrder: json["sort_order"],
        manufacturer: json["manufacturer"],
        categories: json["categories"],
        subcategories: json["subcategories"],
        occassion: json["occassion"],
        purity: json["purity"],
        goldColor: json["gold_color"],
        material: json["material"],
        shopFor: json["shop_for"],
        filters: json["filters"],
        downloads: json["downloads"],
        related: json["related"],
        status: json["status"],
        deleteStatus: json["deleteStatus"],
        updated:
            json["updated"] == null ? null : DateTime.parse(json["updated"]),
        discountType: json["discount_type"],
        discount: json["discount"],
        offerStart: json["offerStart"] == null
            ? null
            : DateTime.parse(json["offerStart"]),
        offerEnds: json["offerEnds"] == null
            ? null
            : DateTime.parse(json["offerEnds"]),
        priceAttribute: json["priceAttribute"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "thumb": thumb,
        "description": description,
        "metatitle": metatitle,
        "metadescription": metadescription,
        "metakeywords": metakeywords,
        "tags": tags,
        "model": model,
        "upc": upc,
        "isbn": isbn,
        "price": price,
        "mrp": mrp,
        "tax_id": taxId,
        "makingcharge": makingcharge,
        "stone_amount": stoneAmount,
        "design": design,
        "quantity": quantity,
        "minimum_order_quantity": minimumOrderQuantity,
        "subtract_stock": subtractStock,
        "out_of_stock_status": outOfStockStatus,
        "shipping_charge": shippingCharge,
        "date_available": dateAvailable,
        "length": length,
        "width": width,
        "height": height,
        "length_class": lengthClass,
        "weight": weight,
        "netWeight": netWeight,
        "weight_class": weightClass,
        "sort_order": sortOrder,
        "manufacturer": manufacturer,
        "categories": categories,
        "subcategories": subcategories,
        "occassion": occassion,
        "purity": purity,
        "gold_color": goldColor,
        "material": material,
        "shop_for": shopFor,
        "filters": filters,
        "downloads": downloads,
        "related": related,
        "status": status,
        "deleteStatus": deleteStatus,
        "updated": updated?.toIso8601String(),
        "discount_type": discountType,
        "discount": discount,
        "offerStart":
            "${offerStart!.year.toString().padLeft(4, '0')}-${offerStart!.month.toString().padLeft(2, '0')}-${offerStart!.day.toString().padLeft(2, '0')}",
        "offerEnds":
            "${offerEnds!.year.toString().padLeft(4, '0')}-${offerEnds!.month.toString().padLeft(2, '0')}-${offerEnds!.day.toString().padLeft(2, '0')}",
        "priceAttribute": priceAttribute,
        "category": category,
      };
}
