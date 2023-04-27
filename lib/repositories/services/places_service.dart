import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../models/places/places_model.dart';
import '../../secrets/secrets.dart';

class PlacesServiceController extends GetxController {
  var isLoading = false.obs;
  var placesItems = Rxn<PlacesModel>();

  Future<void> fetchPlacesItems() async {
    isLoading.value = true;
    final response = await Dio().get(apiKey);
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;

      placesItems.value = PlacesModel.fromJson(datas);

      print(response);
      isLoading.value = false;
    }
  }
}
