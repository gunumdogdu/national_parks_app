class PlacesModel {
  String? total;
  String? limit;
  String? start;
  List<Data>? data;

  PlacesModel({this.total, this.limit, this.start, this.data});

  PlacesModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    limit = json['limit'];
    start = json['start'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  String? id;
  String? url;
  String? title;
  String? listingDescription;
  List<Images>? images;
  List<RelatedParks>? relatedParks;
  List<void>? relatedOrganizations;
  List<String>? tags;
  String? latitude;
  String? longitude;
  String? latLong;
  String? bodyText;
  String? audioDescription;
  String? isPassportStampLocation;
  String? passportStampLocationDescription;
  List<void>? passportStampImages;
  String? managedByUrl;
  String? isOpenToPublic;
  String? isMapPinHidden;
  String? npmapId;
  String? geometryPoiId;
  String? isManagedByNps;
  List<void>? amenities;
  String? managedByOrg;
  List<QuickFacts>? quickFacts;
  String? location;
  String? locationDescription;
  String? credit;
  List<void>? multimedia;

  Data(
      {this.id,
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
      this.multimedia});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    listingDescription = json['listingDescription'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    if (json['relatedParks'] != null) {
      relatedParks = <RelatedParks>[];
      json['relatedParks'].forEach((v) {
        relatedParks!.add(RelatedParks.fromJson(v));
      });
    }

    //-------NULL FROM API
    // if (json['relatedOrganizations'] != null) {
    //   relatedOrganizations = <Null>[];
    //   json['relatedOrganizations'].forEach((v) {
    //     relatedOrganizations!.add(Null.fromJson(v));
    //   });
    // }
    tags = json['tags'].cast<String>();
    latitude = json['latitude'];
    longitude = json['longitude'];
    latLong = json['latLong'];
    bodyText = json['bodyText'];
    audioDescription = json['audioDescription'];
    isPassportStampLocation = json['isPassportStampLocation'];
    passportStampLocationDescription = json['passportStampLocationDescription'];

    //------NULL FROM API
    // if (json['passportStampImages'] != null) {
    //   passportStampImages = <Null>[];
    //   json['passportStampImages'].forEach((v) {
    //     passportStampImages!.add(Null.fromJson(v));
    //   });
    // }
    managedByUrl = json['managedByUrl'];
    isOpenToPublic = json['isOpenToPublic'];
    isMapPinHidden = json['isMapPinHidden'];
    npmapId = json['npmapId'];
    geometryPoiId = json['geometryPoiId'];
    isManagedByNps = json['isManagedByNps'];
    // if (json['amenities'] != null) {
    //   amenities = <Null>[];
    //   json['amenities'].forEach((v) {
    //     amenities!.add(Null.fromJson(v));
    //   });
    // }
    managedByOrg = json['managedByOrg'];
    if (json['quickFacts'] != null) {
      quickFacts = <QuickFacts>[];
      json['quickFacts'].forEach((v) {
        quickFacts!.add(QuickFacts.fromJson(v));
      });
    }
    location = json['location'];
    locationDescription = json['locationDescription'];
    credit = json['credit'];
    // if (json['multimedia'] != null) {
    //   multimedia = <Null>[];
    //   json['multimedia'].forEach((v) {
    //     multimedia!.add(Null.fromJson(v));
    //   });
    // }
  }
}

class Images {
  String? url;
  String? credit;
  String? altText;
  String? title;
  String? description;
  String? caption;
  List<Crops>? crops;

  Images(
      {this.url,
      this.credit,
      this.altText,
      this.title,
      this.description,
      this.caption,
      this.crops});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    credit = json['credit'];
    altText = json['altText'];
    title = json['title'];
    description = json['description'];
    caption = json['caption'];
    if (json['crops'] != null) {
      crops = <Crops>[];
      json['crops'].forEach((v) {
        crops!.add(Crops.fromJson(v));
      });
    }
  }
}

class Crops {
  String? aspectRatio;
  String? url;

  Crops({this.aspectRatio, this.url});

  Crops.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspectRatio'];
    url = json['url'];
  }
}

class RelatedParks {
  String? states;
  String? parkCode;
  String? designation;
  String? fullName;
  String? url;
  String? name;

  RelatedParks(
      {this.states,
      this.parkCode,
      this.designation,
      this.fullName,
      this.url,
      this.name});

  RelatedParks.fromJson(Map<String, dynamic> json) {
    states = json['states'];
    parkCode = json['parkCode'];
    designation = json['designation'];
    fullName = json['fullName'];
    url = json['url'];
    name = json['name'];
  }
}

class QuickFacts {
  String? id;
  String? value;
  String? name;

  QuickFacts({this.id, this.value, this.name});

  QuickFacts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    value = json['value'];
    name = json['name'];
  }
}
