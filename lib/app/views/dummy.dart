import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/app/constants/locales/string_constants.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/app/utils/asset_paths.dart';
import 'package:national_parks_app/app/utils/paddings.dart';

import 'package:national_parks_app/repositories/services/places_service.dart';

import '../custom_grid_item.dart';
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
          final alertsItems = controller.alertsItems.value;
          return Scaffold(
            backgroundColor: ColorConstants.lightGray,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: ColorConstants.verydarkGreen,
              title: Padding(
                padding:
                    const EdgeInsets.only(bottom: CustomPaddings.paddingXSmall),
                child: Text(
                  placesItems!.data.first.fullName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ColorConstants.lightGray,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              decoration: const BoxDecoration(),
                              height: MediaQuery.of(context).size.height * 0.7,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 24.0, left: 24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(CupertinoIcons.clear),
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                    ),
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.warning_sharp,
                                          color: ColorConstants.verydarkGreen,
                                          size: 56.0,
                                        ),
                                        Text(
                                          'Alerts',
                                          style: TextStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                    Text(alertsItems!
                                        .data.first.title), // TODO API BAGLA!
                                  ],
                                ),
                              ));
                        },
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade100.withOpacity(0.7)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 8,
                              top: 8,
                              bottom: 8,
                            ),
                            child: Icon(
                              Icons.warning_sharp,
                              color: Colors.orange,
                              size: 32,
                            ),
                          ),
                          Text('2 Alerts')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CustomGridItem(
                                assetPath: AssetPaths.activitiesImage,
                                onTap: () {},
                                title: 'WHAT TO SEE',
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'THINGS TO DO',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'WHERE TO STAY',
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'SELF-GUIDED TOURS',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'VISITOR CENTERS',
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'GEYSER PREDICTION',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'VISITOR CENTERS',
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'GEYSER PREDICTION',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'VISITOR CENTERS',
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomGridItem(
                                assetPath: 'assets/png/galleryitem.jpg',
                                onTap: () {},
                                title: 'GEYSER PREDICTION',
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24.0,
                        )
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








//  Image.network(
//                   placesItems.data.first.images[2].url,
//                   width: double.infinity,
//                   fit: BoxFit.fitWidth,
//                 )
