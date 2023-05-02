// To parse this JSON data, do
//
//     final alertsModel = alertsModelFromJson(jsonString);

import 'dart:convert';

AlertsModel alertsModelFromJson(String str) =>
    AlertsModel.fromJson(json.decode(str));

class AlertsModel {
  String total;
  String limit;
  String start;
  List<Datum> data;

  AlertsModel({
    required this.total,
    required this.limit,
    required this.start,
    required this.data,
  });

  factory AlertsModel.fromJson(Map<String, dynamic> json) => AlertsModel(
        total: json["total"],
        limit: json["limit"],
        start: json["start"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  String id;
  String url;
  String title;
  String parkCode;
  String description;
  String category;
  DateTime lastIndexedDate;

  Datum({
    required this.id,
    required this.url,
    required this.title,
    required this.parkCode,
    required this.description,
    required this.category,
    required this.lastIndexedDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        url: json["url"],
        title: json["title"],
        parkCode: json["parkCode"],
        description: json["description"],
        category: json["category"],
        lastIndexedDate: DateTime.parse(json["lastIndexedDate"]),
      );
}
