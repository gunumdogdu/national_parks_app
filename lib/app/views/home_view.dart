import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/app/constants/locales/string_constants.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/app/controllers/bottom_navigation_controller.dart';
import 'package:national_parks_app/app/utils/asset_paths.dart';
import 'package:national_parks_app/app/utils/paddings.dart';
import 'package:national_parks_app/app/views/visitor_center_view.dart';

import 'package:national_parks_app/repositories/services/places_service.dart';

import '../custom_grid_item.dart';
import '../customloading.dart';
import '../modal_bottom_sheet_alerts.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(PlacesServiceController());
  final controllerB = Get.put(BottomNavigationBarController());
  HomeView({super.key});

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
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ModalBottomSheetAlerts(alertsItems: alertsItems),
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
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => VisitorCenterView()));
                                },
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
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: ColorConstants.lightGray,
              backgroundColor: ColorConstants.verydarkGreen,
              selectedItemColor: ColorConstants.lightGreenFaded,
              onTap: controllerB.changeTabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: controllerB.tabIndex,
              items: [
                customBottomNavigationBarItem(
                    icon: CupertinoIcons.home, label: 'Home'),
                customBottomNavigationBarItem(
                    icon: CupertinoIcons.video_camera, label: 'Webcam'),
                customBottomNavigationBarItem(
                    icon: CupertinoIcons.news, label: 'News'),
                customBottomNavigationBarItem(
                    icon: CupertinoIcons.arrow_2_circlepath, label: 'Empty'),
              ],
            ),
          );
        }
      },
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}










//  Image.network(
//                   placesItems.data.first.images[2].url,
//                   width: double.infinity,
//                   fit: BoxFit.fitWidth,
//                 )
