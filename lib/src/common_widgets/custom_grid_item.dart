
import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/customvars.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

import '../utils/themes/color_constants.dart';

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
        borderRadius:
            const BorderRadius.all(Radius.circular(CustomVars.cardRadius24)),
        child: Card(
          shadowColor: Colors.black,
          color: ColorConstants.verydarkGreen,
          elevation: 5,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(CustomVars.cardRadius24),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: MediaQuery.of(context).size.width / 2.26,
                width: MediaQuery.of(context).size.width / 2.26,
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
                height: MediaQuery.of(context).size.width / 2.26,
                width: MediaQuery.of(context).size.width / 2.26,
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
                  padding: const EdgeInsets.symmetric(
                      vertical: CustomPaddings.paddingSmallVer,
                      horizontal: CustomPaddings.paddingSmallHor),
                  child: Text(
                    title,
                    maxLines: 2,
                    style: const TextStyle(
                      color: ColorConstants.lightGray,
                      fontSize: CustomVars.fontSize20,
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
