import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/repositories/services/visitor_center_service.dart';
import 'package:timezone/timezone.dart' as tz;

import '../customloading.dart';

class VisitorCenterView extends StatelessWidget {
  VisitorCenterView({super.key});
  final controller = Get.put(VisitorCenterServiceController());
  final now = tz.TZDateTime.now(tz.getLocation('America/Denver'));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: controller.fetchVisitorItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CustomLoading();
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else {
          final visitorItems = controller.visitorCenterItems.value;

          return Scaffold(
            body: ListView.builder(
              itemCount: visitorItems!.data.length,
              itemBuilder: (BuildContext context, int index) {
                final openTime = tz.TZDateTime(
                    now.location, now.year, now.month, now.day, 8);
                final closeTime = tz.TZDateTime(
                    now.location, now.year, now.month, now.day, 20);
                final isOpen = now.isAfter(openTime) && now.isBefore(closeTime);
                final status = isOpen ? 'OPEN' : 'CLOSED';
                final statusColor =
                    isOpen ? ColorConstants.darkGreen : Colors.red.shade400;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 66,
                      child: ListTile(
                        minVerticalPadding: 0,
                        minLeadingWidth: 0,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          visitorItems.data[index].name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          '$status',
                          style: TextStyle(
                            color: statusColor,
                          ),
                        ),
                        trailing: const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(CupertinoIcons.chevron_right)),
                        leading: visitorItems.data[index].images!.isNotEmpty
                            ? Image.network(
                                '${visitorItems.data[index].images!.first.url}',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              )
                            : Image.network(
                                'https://archive.org/download/no-photo-available/no-photo-available.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 2,
                    )
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }
}
