class PlacesModel {
  PlacesModel({
    this.total,
    this.limit,
    this.start,
    this.data,
  });

  String? total;
  String? limit;
  String? start;
  List<Datum>? data;

  factory PlacesModel.fromJson(Map<String, dynamic> json) => PlacesModel(
        total: json["total"],
        limit: json["limit"],
        start: json["start"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum({
    this.id,
    this.url,
    this.title,
    this.listingDescription,
    this.images,
    this.relatedParks,
    this.relatedOrganizations,
    this.tags,
    this.latitude,
    this.longitude,
    this.latLong,
    this.bodyText,
    this.audioDescription,
    this.isPassportStampLocation,
    this.passportStampLocationDescription,
    this.passportStampImages,
    this.managedByUrl,
    this.isOpenToPublic,
    this.isMapPinHidden,
    this.npmapId,
    this.geometryPoiId,
    this.isManagedByNps,
    this.amenities,
    this.managedByOrg,
    this.quickFacts,
    this.location,
    this.locationDescription,
    this.credit,
    this.multimedia,
  });

  String? id;
  String? url;
  String? title;
  String? listingDescription;
  List<Images>? images;
  List<RelatedPark>? relatedParks;
  List<dynamic>? relatedOrganizations;
  List<String>? tags;
  String? latitude;
  String? longitude;
  String? latLong;
  String? bodyText;
  String? audioDescription;
  String? isPassportStampLocation;
  String? passportStampLocationDescription;
  List<dynamic>? passportStampImages;
  String? managedByUrl;
  String? isOpenToPublic;
  String? isMapPinHidden;
  String? npmapId;
  String? geometryPoiId;
  String? isManagedByNps;
  List<String>? amenities;
  String? managedByOrg;
  List<QuickFact>? quickFacts;
  String? location;
  String? locationDescription;
  String? credit;
  List<Multimedia>? multimedia;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        url: json["url"],
        title: json["title"],
        listingDescription: json["listingDescription"],
        images: json["images"] == null
            ? []
            : List<Images>.from(json["images"]!.map((x) => Images.fromJson(x))),
        relatedParks: json["relatedParks"] == null
            ? []
            : List<RelatedPark>.from(
                json["relatedParks"]!.map((x) => RelatedPark.fromJson(x))),
        relatedOrganizations: json["relatedOrganizations"] == null
            ? []
            : List<dynamic>.from(json["relatedOrganizations"]!.map((x) => x)),
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        latitude: json["latitude"],
        longitude: json["longitude"],
        latLong: json["latLong"],
        bodyText: json["bodyText"],
        audioDescription: json["audioDescription"],
        isPassportStampLocation: json["isPassportStampLocation"],
        passportStampLocationDescription:
            json["passportStampLocationDescription"],
        passportStampImages: json["passportStampImages"] == null
            ? []
            : List<dynamic>.from(json["passportStampImages"]!.map((x) => x)),
        managedByUrl: json["managedByUrl"],
        isOpenToPublic: json["isOpenToPublic"],
        isMapPinHidden: json["isMapPinHidden"],
        npmapId: json["npmapId"],
        geometryPoiId: json["geometryPoiId"],
        isManagedByNps: json["isManagedByNps"],
        amenities: json["amenities"] == null
            ? []
            : List<String>.from(json["amenities"]!.map((x) => x)),
        managedByOrg: json["managedByOrg"],
        quickFacts: json["quickFacts"] == null
            ? []
            : List<QuickFact>.from(
                json["quickFacts"]!.map((x) => QuickFact.fromJson(x))),
        location: json["location"],
        locationDescription: json["locationDescription"],
        credit: json["credit"],
        multimedia: json["multimedia"] == null
            ? []
            : List<Multimedia>.from(
                json["multimedia"]!.map((x) => Multimedia.fromJson(x))),
      );
}

class Images {
  Images({
    this.url,
    this.credit,
    this.altText,
    this.title,
    this.description,
    this.caption,
    this.crops,
  });

  String? url;
  String? credit;
  String? altText;
  String? title;
  String? description;
  String? caption;
  List<Crop>? crops;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        url: json["url"],
        credit: json["credit"],
        altText: json["altText"],
        title: json["title"],
        description: json["description"],
        caption: json["caption"],
        crops: json["crops"] == null
            ? []
            : List<Crop>.from(json["crops"]!.map((x) => Crop.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "credit": credit,
        "altText": altText,
        "title": title,
        "description": description,
        "caption": caption,
        "crops": crops == null
            ? []
            : List<dynamic>.from(crops!.map((x) => x.toJson())),
      };
}

class Crop {
  Crop({
    this.aspectRatio,
    this.url,
  });

  String? aspectRatio;
  String? url;

  factory Crop.fromJson(Map<String, dynamic> json) => Crop(
        aspectRatio: json["aspectRatio"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "aspectRatio": aspectRatio,
        "url": url,
      };
}

class Multimedia {
  Multimedia({
    this.title,
    this.id,
    this.type,
    this.url,
  });

  String? title;
  String? id;
  String? type;
  String? url;

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
        title: json["title"],
        id: json["id"],
        type: json["type"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
        "type": type,
        "url": url,
      };
}

class QuickFact {
  QuickFact({
    this.id,
    this.value,
    this.name,
  });

  String? id;
  String? value;
  String? name;

  factory QuickFact.fromJson(Map<String, dynamic> json) => QuickFact(
        id: json["id"],
        value: json["value"],
        name: json["name"],
      );
}

class RelatedPark {
  RelatedPark({
    this.states,
    this.parkCode,
    this.designation,
    this.fullName,
    this.url,
    this.name,
  });

  String? states;
  String? parkCode;
  String? designation;
  String? fullName;
  String? url;
  String? name;

  factory RelatedPark.fromJson(Map<String, dynamic> json) => RelatedPark(
        states: json["states"],
        parkCode: json["parkCode"],
        designation: json["designation"],
        fullName: json["fullName"],
        url: json["url"],
        name: json["name"],
      );
}
