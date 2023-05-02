import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/app/constants/locales/string_constants.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/app/utils/strings.dart';

import 'package:national_parks_app/repositories/services/places_service.dart';

import '../customloading.dart';

class DummyView1 extends StatelessWidget {
  final controller = Get.put(PlacesServiceController());
  DummyView1({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: controller.fetchPlacesItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CustomLoading();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text(CustomText.errorFetch),
          );
        } else {
          final placesItems = controller.placesItems.value;
          return Scaffold(
            backgroundColor: ColorConstants.lightGray,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: ColorConstants.verydarkGreen,
              title: Text(
                placesItems!.data.first.fullName,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: ColorConstants.lightGray,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const Text(
                    'HEADLINE',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        CustomGridItem(
                            assetPath: 'assets/png/galleryitem.jpg',
                            onTap: () {},
                            title: 'emir'),
                        SizedBox(
                          width: 12,
                        ),
                        CustomGridItem(
                            assetPath: 'assets/png/galleryitem.jpg',
                            onTap: () {},
                            title: 'emir')
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({
    super.key,
    required this.assetPath,
    required this.title,
    required this.onTap,
  });
  final String assetPath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        child: Card(
          shadowColor: Colors.black,
          color: ColorConstants.verydarkGreen,
          elevation: 5,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetPath),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center / 3,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.9),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






//  Image.network(
//                   placesItems.data.first.images[2].url,
//                   width: double.infinity,
//                   fit: BoxFit.fitWidth,
//                 )
