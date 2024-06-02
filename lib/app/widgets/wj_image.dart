import 'package:flutter/material.dart';

import 'package:ijato/app/shared/app_images.dart';

class WjImage extends StatelessWidget {
  const WjImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.locale1,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
