import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/models/places/places_model.dart';

class DummyView extends StatefulWidget {
  DummyView({super.key});

  @override
  State<DummyView> createState() => _DummyViewState();
}

class _DummyViewState extends State<DummyView> {
  PlacesModel? _items;

  @override
  void initState() {
    super.initState();
    fetchPlacesItems();
  }

  Future<void> fetchPlacesItems() async {
    final response = await Dio().get(
        'https://developer.nps.gov/api/v1/places?api_key=yQBdQ4zBzqiJix6yMTvafxdpuKeSHmaX9sB3aXDF');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      setState(() {
        _items = PlacesModel.fromJson(_datas);
      });
      print(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.darkGreen,
      body: ListView.builder(
        itemCount: _items?.data?.length ?? 0,
        itemBuilder: (context, index) {
          final item = _items!.data![index];
          return Text(
            item.images!.first.altText!,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black),
          );
        },
      ),
    );
  }
}
