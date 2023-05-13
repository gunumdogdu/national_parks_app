import 'package:flutter/material.dart';

import '../../models/visitor_center/visitor_centers_model.dart' as VCM;

class VisitorCenterDetailView extends StatelessWidget {
  VisitorCenterDetailView({
    Key? key,
    required this.index,
    required this.visitorItems,
  }) : super(key: key);
  var index;
  VCM.VisitorCenterModel visitorItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 100,
        width: 100,
        child: Image.network('${visitorItems.data[index].images!.first.url}'),
      )),
    );
  }
}
