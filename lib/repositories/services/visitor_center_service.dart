import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:national_parks_app/models/places/visitor_centers_model.dart';

import '../../secrets/secrets.dart';

class VisitorCenterServiceController extends GetxController {
  var isLoading = false.obs;
  var visitorCenterItems = Rxn<VisitorCenterModel>();

  Future<void> fetchVisitorItems() async {
    isLoading.value = true;

    final visitorResponse = await Dio().get(visitorCentersApiKey);
    if (visitorResponse.statusCode == HttpStatus.ok) {
      final visitorCenterData = visitorResponse.data;
      visitorCenterItems.value = VisitorCenterModel.fromJson(visitorCenterData);

      // print(response);
      print(visitorResponse);
      isLoading.value = false;
    }
  }
}
