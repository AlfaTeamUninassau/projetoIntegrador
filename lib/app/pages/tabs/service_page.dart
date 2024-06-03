import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/appbar_user.dart';
import 'package:ijato/app/widgets/services_main_container.dart';
import 'package:ijato/app/widgets/user_buttons.dart';
import 'package:ijato/app/widgets/service_list.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 175, child: AppbarUser()),
          SafeArea(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Column(
                  children: [
                    SizedBox(height: 170),
                  ],
                ),
              ),
              Column(
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
                          child: const Column(
                            children: [
                              ServicesMainContainer(),
                              SizedBox(
                                height: 5,
                              ),
                              ServicesList(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PreviusButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.detailsLavajato);
                              },
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            NextButton(
                                nextbuttonName: 'Confirmar',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.adress);
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}