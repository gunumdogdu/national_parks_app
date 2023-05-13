import 'package:flutter/material.dart';

import '../../../../../utils/themes/color_constants.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPress,
    required this.buttonIcon,
  });
  final String title, subtitle;
  final VoidCallback onPress;
  final IconData buttonIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ColorConstants.lightGray),
        child: Row(
          children: [
            Icon(
              buttonIcon,
              size: 60.0,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
