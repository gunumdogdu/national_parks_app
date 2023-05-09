import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:national_parks_app/src/locales/string_constants.dart';
import 'package:national_parks_app/src/utils/customvars.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

import '../../models/places/alerts_model.dart';
import '../utils/themes/color_constants.dart';

class ModalBottomSheetAlerts extends StatelessWidget {
  const ModalBottomSheetAlerts({
    super.key,
    required this.alertsItems,
  });

  final AlertsModel? alertsItems;

  @override
  Widget build(BuildContext context) {
    final String alertsItemsLength = alertsItems!.data.length.toString();
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          barrierColor: ColorConstants.verydarkGreen.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CustomVars.modalSheetRadius32),
          ),
          context: context,
          builder: (BuildContext context) {
            return Container(
                decoration: const BoxDecoration(),
                height: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: CustomPaddings.paddingMedHor,
                      left: CustomPaddings.paddingMedHor), //24 PADDING
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(CupertinoIcons.clear),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        const SizedBox(
                          height: CustomVars.mediumSizedBoxH,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_sharp,
                              color:
                                  ColorConstants.verydarkGreen.withOpacity(0.8),
                              size: CustomVars.warningIconSize,
                            ),
                            const SizedBox(
                              width: CustomVars.mediumSizedBoxH,
                            ),
                            Text(
                              CustomText.alertsTitle,
                              style: Theme.of(context).textTheme.headlineMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: CustomVars.mediumSizedBoxH,
                        ),
                        Text(
                          CustomText.alertsSubtitle,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: CustomVars.mediumSizedBoxH / 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: CustomPaddings.paddingSmall,
                              right: CustomPaddings.paddingMedium),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                alertsItems!.data.first.title,
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(
                                height: CustomVars.mediumSizedBoxH / 2,
                              ),
                              Text(
                                alertsItems!.data.first.description,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const Divider(),
                              const SizedBox(
                                height: CustomVars.mediumSizedBoxH / 2,
                              ),
                              Text(
                                alertsItems!.data[1].title,
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(
                                height: CustomVars.mediumSizedBoxH / 2,
                              ),
                              Text(
                                alertsItems!.data[1].description,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ));
          },
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: Colors.orange.shade100.withOpacity(0.7)),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 8,
                top: 8,
                bottom: 8,
              ),
              child: Icon(
                Icons.warning_sharp,
                color: Colors.orange,
                size: CustomVars.warningIconSize / 2,
              ),
            ),
            Text('$alertsItemsLength Alerts')
          ],
        ),
      ),
    );
  }
}
