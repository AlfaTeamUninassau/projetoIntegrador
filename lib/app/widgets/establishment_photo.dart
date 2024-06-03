import 'package:flutter/material.dart';

import 'package:ijato/app/shared/app_images.dart';
import 'package:ijato/app/shared/app_routes.dart';

class EstablishmentImage extends StatelessWidget {
  const EstablishmentImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.transparent),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      child: Image.asset(
        AppImages.establishment_photo,
      ),
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.profileEstablishment);
      },
    );
  }
}
