// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    String pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String image;
    String category;
    String placeOfOrigin;
    int stock;
    String availability;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.image,
        required this.category,
        required this.placeOfOrigin,
        required this.stock,
        required this.availability,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
        category: json["category"],
        placeOfOrigin: json["place_of_origin"],
        stock: json["stock"],
        availability: json["availability"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
        "place_of_origin": placeOfOrigin,
        "stock": stock,
        "availability": availability,
    };
}
