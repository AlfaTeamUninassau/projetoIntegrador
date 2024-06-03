import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_images.dart';

import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/app_scaffold.dart';
import 'package:ijato/app/widgets/services_main_container.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class AppointmentConfirmation extends StatelessWidget {
  const AppointmentConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 13, left: 13),
                    padding: const EdgeInsets.only(
                        right: 14, left: 14, top: 8, bottom: 14),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 114, 180, 1.0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        const ServicesMainContainer(),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 43,
                              ),
                              Image.asset(
                                AppImages.schedulingProcess,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 65,
                              ),
                              const Text(
                                  "O estabelecimento foi informado. Aguarde a confirmação.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 38),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PreviusButton(
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.payment);
                              },
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            NextButton(
                                nextbuttonName: 'Finalizar',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.homeUser);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ))
      ],
    ));
  }
}
