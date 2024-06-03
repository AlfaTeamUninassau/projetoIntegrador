import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/adress_container.dart';
import 'package:ijato/app/widgets/appbar_user.dart';
import 'package:ijato/app/widgets/services_main_container.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});

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
                      SizedBox(height: 150),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 13),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(102, 114, 180, 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              const ServicesMainContainer(),
                              const Text(
                                'Selecione o Endereço:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 7),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Column(
                                  children: [
                                    SizedBox(height: 110),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyHouse(),
                                      ],
                                    ),
                                    SizedBox(height: 35),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyLocation(),
                                      ],
                                    ),
                                    SizedBox(height: 110),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PreviusButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.servicePage);
                              },
                            ),
                            const SizedBox(width: 21),
                            NextButton(
                              nextbuttonName: 'Próximo',
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  AppRoutes.payment,
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
