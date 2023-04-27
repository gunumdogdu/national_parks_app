import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/models/places/places_model.dart';
import 'package:national_parks_app/secrets/secrets.dart';

class DummyView extends StatefulWidget {
  DummyView({super.key});

  @override
  State<DummyView> createState() => _DummyViewState();
}

class _DummyViewState extends State<DummyView> {
  PlacesModel? _items;
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchPlacesItems();
  }

  Future<void> fetchPlacesItems() async {
    changeLoading();
    final response = await Dio().get(apiKey);
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;

      setState(() {
        _items = PlacesModel.fromJson(datas);
      });
      print(response);
      changeLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const LinearProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(ColorConstants.lightGreenFaded),
            backgroundColor: ColorConstants.lightGray,
          )
        : Scaffold(
            backgroundColor: ColorConstants.lightGray,
            appBar: AppBar(
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: ColorConstants.lightGreenFaded,
              title: Text(
                _items!.data![0].relatedParks!.first.name!,
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Column(
              children: [
                Image.network(
                  _items!.data![0].images!.first.url!,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          );
  }
}
// ListView.builder(
//         itemCount: _items?.data?.length ?? 0,
//         itemBuilder: (context, index) {
//           final item = _items!.data![index];
//           return Text(
//             item.relatedParks!.first.fullName!,
//             style: Theme.of(context)
//                 .textTheme
//                 .bodyMedium!
//                 .copyWith(color: Colors.black),
//           );
//         },
//       ),