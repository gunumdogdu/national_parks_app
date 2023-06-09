import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/asset_paths.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        AssetPaths.loadingGif,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
