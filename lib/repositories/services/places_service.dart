import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/src/features/core/models/alerts_model.dart';

import '../../src/features/core/models/home/places_model.dart';
import '../../src/secrets/secrets.dart';

class PlacesServiceController extends GetxController {
  var isLoading = false.obs;
  var placesItems = Rxn<PlacesModel>();
  var alertsItems = Rxn<AlertsModel>();

  Future<void> fetchPlacesItems() async {
    isLoading.value = true;
    final response = await Dio().get(placesApiKey);
    final alertsResponse = await Dio().get(alertsApiKey);
    if ((response.statusCode! & alertsResponse.statusCode!) == HttpStatus.ok) {
      final datas = response.data;
      final alertsData = alertsResponse.data;

      placesItems.value = PlacesModel.fromJson(datas);
      alertsItems.value = AlertsModel.fromJson(alertsData);
      // print(response);
      // print(alertsResponse);
      isLoading.value = false;
    }
  }
}
