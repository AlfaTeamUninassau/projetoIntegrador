import 'package:flutter/material.dart';

import 'package:ijato/app/shared/app_images.dart';

class JaguarImage extends StatelessWidget {
  const JaguarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.locale2,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
