import 'package:flutter/material.dart';

import 'package:ijato/app/shared/app_images.dart';

class VipcarImage extends StatelessWidget {
  const VipcarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.locale,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
