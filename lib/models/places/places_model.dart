// To parse this JSON data, do
//
//     final placesModel = placesModelFromJson(jsonString);

import 'dart:convert';

PlacesModel placesModelFromJson(String str) =>
    PlacesModel.fromJson(json.decode(str));

String placesModelToJson(PlacesModel data) => json.encode(data.toJson());

class PlacesModel {
  String total;
  String limit;
  String start;
  List<Datum> data;

  PlacesModel({
    required this.total,
    required this.limit,
    required this.start,
    required this.data,
  });

  factory PlacesModel.fromJson(Map<String, dynamic> json) => PlacesModel(
        total: json["total"],
        limit: json["limit"],
        start: json["start"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "limit": limit,
        "start": start,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String id;
  String url;
  String fullName;
  String parkCode;
  String description;
  String latitude;
  String longitude;
  String latLong;
  List<Activity> activities;
  List<Activity> topics;
  String states;
  Contacts contacts;
  List<Entrance> entranceFees;
  List<Entrance> entrancePasses;
  List<dynamic> fees;
  String directionsInfo;
  String directionsUrl;
  List<OperatingHour> operatingHours;
  List<Address> addresses;
  List<Images> images;
  String weatherInfo;
  String name;
  String designation;

  Datum({
    required this.id,
    required this.url,
    required this.fullName,
    required this.parkCode,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.latLong,
    required this.activities,
    required this.topics,
    required this.states,
    required this.contacts,
    required this.entranceFees,
    required this.entrancePasses,
    required this.fees,
    required this.directionsInfo,
    required this.directionsUrl,
    required this.operatingHours,
    required this.addresses,
    required this.images,
    required this.weatherInfo,
    required this.name,
    required this.designation,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        url: json["url"],
        fullName: json["fullName"],
        parkCode: json["parkCode"],
        description: json["description"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        latLong: json["latLong"],
        activities: List<Activity>.from(
            json["activities"].map((x) => Activity.fromJson(x))),
        topics: List<Activity>.from(
            json["topics"].map((x) => Activity.fromJson(x))),
        states: json["states"],
        contacts: Contacts.fromJson(json["contacts"]),
        entranceFees: List<Entrance>.from(
            json["entranceFees"].map((x) => Entrance.fromJson(x))),
        entrancePasses: List<Entrance>.from(
            json["entrancePasses"].map((x) => Entrance.fromJson(x))),
        fees: List<dynamic>.from(json["fees"].map((x) => x)),
        directionsInfo: json["directionsInfo"],
        directionsUrl: json["directionsUrl"],
        operatingHours: List<OperatingHour>.from(
            json["operatingHours"].map((x) => OperatingHour.fromJson(x))),
        addresses: List<Address>.from(
            json["addresses"].map((x) => Address.fromJson(x))),
        images:
            List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
        weatherInfo: json["weatherInfo"],
        name: json["name"],
        designation: json["designation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "fullName": fullName,
        "parkCode": parkCode,
        "description": description,
        "latitude": latitude,
        "longitude": longitude,
        "latLong": latLong,
        "activities": List<dynamic>.from(activities.map((x) => x.toJson())),
        "topics": List<dynamic>.from(topics.map((x) => x.toJson())),
        "states": states,
        "contacts": contacts.toJson(),
        "entranceFees": List<dynamic>.from(entranceFees.map((x) => x.toJson())),
        "entrancePasses":
            List<dynamic>.from(entrancePasses.map((x) => x.toJson())),
        "fees": List<dynamic>.from(fees.map((x) => x)),
        "directionsInfo": directionsInfo,
        "directionsUrl": directionsUrl,
        "operatingHours":
            List<dynamic>.from(operatingHours.map((x) => x.toJson())),
        "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "weatherInfo": weatherInfo,
        "name": name,
        "designation": designation,
      };
}

class Activity {
  String id;
  String name;

  Activity({
    required this.id,
    required this.name,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Address {
  String postalCode;
  String city;
  String stateCode;
  String line1;
  String type;
  String line3;
  String line2;

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

  Map<String, dynamic> toJson() => {
        "postalCode": postalCode,
        "city": city,
        "stateCode": stateCode,
        "line1": line1,
        "type": type,
        "line3": line3,
        "line2": line2,
      };
}

class Contacts {
  List<PhoneNumber> phoneNumbers;
  List<EmailAddress> emailAddresses;

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

  Map<String, dynamic> toJson() => {
        "phoneNumbers": List<dynamic>.from(phoneNumbers.map((x) => x.toJson())),
        "emailAddresses":
            List<dynamic>.from(emailAddresses.map((x) => x.toJson())),
      };
}

class EmailAddress {
  String description;
  String emailAddress;

  EmailAddress({
    required this.description,
    required this.emailAddress,
  });

  factory EmailAddress.fromJson(Map<String, dynamic> json) => EmailAddress(
        description: json["description"],
        emailAddress: json["emailAddress"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "emailAddress": emailAddress,
      };
}

class PhoneNumber {
  String phoneNumber;
  String description;
  String extension;
  String type;

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

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "description": description,
        "extension": extension,
        "type": type,
      };
}

class Entrance {
  String cost;
  String description;
  String title;

  Entrance({
    required this.cost,
    required this.description,
    required this.title,
  });

  factory Entrance.fromJson(Map<String, dynamic> json) => Entrance(
        cost: json["cost"],
        description: json["description"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "cost": cost,
        "description": description,
        "title": title,
      };
}

class Images {
  String credit;
  String title;
  String altText;
  String caption;
  String url;

  Images({
    required this.credit,
    required this.title,
    required this.altText,
    required this.caption,
    required this.url,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        credit: json["credit"],
        title: json["title"],
        altText: json["altText"],
        caption: json["caption"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "credit": credit,
        "title": title,
        "altText": altText,
        "caption": caption,
        "url": url,
      };
}

class OperatingHour {
  List<Exceptions> exceptions;
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
        exceptions: List<Exceptions>.from(
            json["exceptions"].map((x) => Exceptions.fromJson(x))),
        description: json["description"],
        standardHours: Hours.fromJson(json["standardHours"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "exceptions": List<dynamic>.from(exceptions.map((x) => x.toJson())),
        "description": description,
        "standardHours": standardHours.toJson(),
        "name": name,
      };
}

class Exceptions {
  Hours exceptionHours;
  DateTime startDate;
  String name;
  DateTime endDate;

  Exceptions({
    required this.exceptionHours,
    required this.startDate,
    required this.name,
    required this.endDate,
  });

  factory Exceptions.fromJson(Map<String, dynamic> json) => Exceptions(
        exceptionHours: Hours.fromJson(json["exceptionHours"]),
        startDate: DateTime.parse(json["startDate"]),
        name: json["name"],
        endDate: DateTime.parse(json["endDate"]),
      );

  Map<String, dynamic> toJson() => {
        "exceptionHours": exceptionHours.toJson(),
        "startDate":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "name": name,
        "endDate":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
      };
}

class Hours {
  String wednesday;
  String monday;
  String thursday;
  String sunday;
  String tuesday;
  String friday;
  String saturday;

  Hours({
    required this.wednesday,
    required this.monday,
    required this.thursday,
    required this.sunday,
    required this.tuesday,
    required this.friday,
    required this.saturday,
  });

  factory Hours.fromJson(Map<String, dynamic> json) => Hours(
        wednesday: json["wednesday"],
        monday: json["monday"],
        thursday: json["thursday"],
        sunday: json["sunday"],
        tuesday: json["tuesday"],
        friday: json["friday"],
        saturday: json["saturday"],
      );

  Map<String, dynamic> toJson() => {
        "wednesday": wednesday,
        "monday": monday,
        "thursday": thursday,
        "sunday": sunday,
        "tuesday": tuesday,
        "friday": friday,
        "saturday": saturday,
      };
}
