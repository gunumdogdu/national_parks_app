import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/models/places/places_model.dart';
import 'package:national_parks_app/repositories/services/places_service.dart';
import 'package:national_parks_app/secrets/secrets.dart';

class DummyView1 extends StatelessWidget {
  final controller = Get.put(PlacesServiceController());
  DummyView1({Key? key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: controller.fetchPlacesItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LinearProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(ColorConstants.lightGreenFaded),
            backgroundColor: ColorConstants.lightGray,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error fetching data'),
          );
        } else {
          final placesItems = controller.placesItems.value;
          return Scaffold(
            backgroundColor: ColorConstants.lightGray,
            appBar: AppBar(
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: ColorConstants.lightGreenFaded,
              title: Text(
                placesItems!.data.first.name,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            body: Column(
              children: [
                Image.network(
                  placesItems.data.first.images[1].url,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          );
        }
      },
    );
  }
}
