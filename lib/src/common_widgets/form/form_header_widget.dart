import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.heightBetween,
    this.textAlign,
  }) : super(key: key);
  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double heightBetween;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          height: 200,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 40),
          maxLines: 1,
        ),
        Text(subtitle,
            textAlign: textAlign, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
