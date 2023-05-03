// To parse this JSON data, do
//
//     final visitorCenterModel = visitorCenterModelFromJson(jsonString);

import 'dart:convert';

VisitorCenterModel visitorCenterModelFromJson(String str) =>
    VisitorCenterModel.fromJson(json.decode(str));

class VisitorCenterModel {
  String? total;
  String? limit;
  String? start;
  List<Datum> data;

  VisitorCenterModel({
    required this.total,
    required this.limit,
    required this.start,
    required this.data,
  });

  factory VisitorCenterModel.fromJson(Map<String, dynamic> json) =>
      VisitorCenterModel(
        total: json["total"],
        limit: json["limit"],
        start: json["start"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  String? id;
  String? url;
  String name;
  String? parkCode;
  String? description;
  String? latitude;
  String? longitude;
  String? latLong;
  String? audioDescription;
  String? isPassportStampLocation;
  String? passportStampLocationDescription;
  List<Image>? passportStampImages;
  String? geometryPoiId;
  List<String>? amenities;
  Contacts? contacts;
  String? directionsInfo;
  String? directionsUrl;
  List<OperatingHour>? operatingHours;
  List<Address>? addresses;
  List<Image>? images;
  List<dynamic>? multimedia;
  String? lastIndexedDate;

  Datum({
    required this.id,
    required this.url,
    required this.name,
    required this.parkCode,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.latLong,
    required this.audioDescription,
    required this.isPassportStampLocation,
    required this.passportStampLocationDescription,
    required this.passportStampImages,
    required this.geometryPoiId,
    required this.amenities,
    required this.contacts,
    required this.directionsInfo,
    required this.directionsUrl,
    required this.operatingHours,
    required this.addresses,
    required this.images,
    required this.multimedia,
    required this.lastIndexedDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        url: json["url"],
        name: json["name"],
        parkCode: json["parkCode"],
        description: json["description"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        latLong: json["latLong"],
        audioDescription: json["audioDescription"],
        isPassportStampLocation: json["isPassportStampLocation"],
        passportStampLocationDescription:
            json["passportStampLocationDescription"],
        passportStampImages: List<Image>.from(
            json["passportStampImages"].map((x) => Image.fromJson(x))),
        geometryPoiId: json["geometryPoiId"],
        amenities: List<String>.from(json["amenities"].map((x) => x)),
        contacts: Contacts.fromJson(json["contacts"]),
        directionsInfo: json["directionsInfo"],
        directionsUrl: json["directionsUrl"],
        operatingHours: List<OperatingHour>.from(
            json["operatingHours"].map((x) => OperatingHour.fromJson(x))),
        addresses: List<Address>.from(
            json["addresses"].map((x) => Address.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        multimedia: List<dynamic>.from(json["multimedia"].map((x) => x)),
        lastIndexedDate: json["lastIndexedDate"],
      );
}

class Address {
  String? postalCode;
  String? city;
  String? stateCode;
  String? line1;
  String? type;
  String? line3;
  String? line2;

  Address({
    required this.postalCode,
    required this.city,
    required this.stateCode,
    required this.line1,
    required this.type,
    required this.line3,
    required this.line2,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        postalCode: json["postalCode"],
        city: json["city"],
        stateCode: json["stateCode"],
        line1: json["line1"],
        type: json["type"],
        line3: json["line3"],
        line2: json["line2"],
      );
}

class Contacts {
  List<PhoneNumber>? phoneNumbers;
  List<EmailAddress>? emailAddresses;

  Contacts({
    required this.phoneNumbers,
    required this.emailAddresses,
  });

  factory Contacts.fromJson(Map<String, dynamic> json) => Contacts(
        phoneNumbers: List<PhoneNumber>.from(
            json["phoneNumbers"].map((x) => PhoneNumber.fromJson(x))),
        emailAddresses: List<EmailAddress>.from(
            json["emailAddresses"].map((x) => EmailAddress.fromJson(x))),
      );
}

class EmailAddress {
  String? description;
  String? emailAddress;

  EmailAddress({
    required this.description,
    required this.emailAddress,
  });

  factory EmailAddress.fromJson(Map<String?, dynamic> json) => EmailAddress(
        description: json["description"],
        emailAddress: json["emailAddress"],
      );
}

class PhoneNumber {
  String? phoneNumber;
  String? description;
  String? extension;
  String? type;

  PhoneNumber({
    required this.phoneNumber,
    required this.description,
    required this.extension,
    required this.type,
  });

  factory PhoneNumber.fromJson(Map<String, dynamic> json) => PhoneNumber(
        phoneNumber: json["phoneNumber"],
        description: json["description"],
        extension: json["extension"],
        type: json["type"],
      );
}

class Image {
  String? credit;
  List<Crop>? crops;
  String? title;
  String? altText;
  String? caption;
  String? url;
  String? description;

  Image({
    required this.credit,
    required this.crops,
    required this.title,
    required this.altText,
    required this.caption,
    required this.url,
    required this.description,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        credit: json["credit"],
        crops: List<Crop>.from(json["crops"].map((x) => Crop.fromJson(x))),
        title: json["title"],
        altText: json["altText"],
        caption: json["caption"],
        url: json["url"],
        description: json["description"],
      );
}

class Crop {
  double? aspectRatio;
  String? url;

  Crop({
    required this.aspectRatio,
    required this.url,
  });

  factory Crop.fromJson(Map<String?, dynamic> json) => Crop(
        aspectRatio: json["aspectRatio"],
        url: json["url"],
      );
}

class OperatingHour {
  List<Exception> exceptions;
  String description;
  Hours standardHours;
  String name;

  OperatingHour({
    required this.exceptions,
    required this.description,
    required this.standardHours,
    required this.name,
  });

  factory OperatingHour.fromJson(Map<String, dynamic> json) => OperatingHour(
        exceptions: List<Exception>.from(
            json["exceptions"].map((x) => Exception.fromJson(x))),
        description: json["description"],
        standardHours: Hours.fromJson(json["standardHours"]),
        name: json["name"],
      );
}

class Exception {
  Hours exceptionHours;
  DateTime startDate;
  String name;
  DateTime endDate;

  Exception({
    required this.exceptionHours,
    required this.startDate,
    required this.name,
    required this.endDate,
  });

  factory Exception.fromJson(Map<String, dynamic> json) => Exception(
        exceptionHours: Hours.fromJson(json["exceptionHours"]),
        startDate: DateTime.parse(json["startDate"]),
        name: json["name"],
        endDate: DateTime.parse(json["endDate"]),
      );
}

class Hours {
  String? thursday;
  String? wednesday;
  String? monday;
  String? sunday;
  String? tuesday;
  String? friday;
  String? saturday;

  Hours({
    required this.thursday,
    required this.wednesday,
    required this.monday,
    required this.sunday,
    required this.tuesday,
    required this.friday,
    required this.saturday,
  });

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
        thursday: json["thursday"],
        wednesday: json["wednesday"],
        monday: json["monday"],
        sunday: json["sunday"],
        tuesday: json["tuesday"],
        friday: json["friday"],
        saturday: json["saturday"],
      );
}
