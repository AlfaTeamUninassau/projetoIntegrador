import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/results_bar.dart';

import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/research_field.dart';
import 'package:ijato/app/widgets/favoritos.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/service_bar.dart';
import 'package:ijato/app/widgets/mapa.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 100, child: AppbarHome()),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: const Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    FavoritosBox(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ResearchField(
                                        label: 'Buscar lava-jato:',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ResultsBar(
                          establishmentName: "VipCar",
                          barColor: const Color(0xff6672B4),
                          avaliation: const Avaliation(number: "4.9"),
                          serviceBar: ServiceBar(
                            icon: const Icon(Icons.emoji_transportation),
                            icon2: const Icon(Icons.sync_alt),
                            iconOn: const Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                            ),
                            weekDays: Week(
                              days: "D",
                              openday: Colors.grey,
                            ),
                            weekDays1: Week(days: "S", openday: Colors.green),
                            weekDays2: Week(days: "T", openday: Colors.green),
                            weekDays3: Week(days: "Q", openday: Colors.green),
                            weekDays4: Week(days: "Q", openday: Colors.green),
                            weekDays5: Week(days: "S", openday: Colors.green),
                            weekDays6: Week(days: "S", openday: Colors.grey),
                          )),
                      ResultsBar(
                          establishmentName: "WJ Lava-Jato",
                          avaliation: const Avaliation(number: "4.5"),
                          serviceBar: ServiceBar(
                            icon: const Icon(Icons.house),
                            icon2: const Icon(Icons.sync_alt),
                            iconOn: const Icon(
                              Icons.radio_button_checked,
                              color: Colors.green,
                            ),
                            weekDays: Week(
                              days: "D",
                              openday: Colors.green,
                            ),
                            weekDays1: Week(days: "S", openday: Colors.grey),
                            weekDays2: Week(days: "T", openday: Colors.green),
                            weekDays3: Week(days: "Q", openday: Colors.green),
                            weekDays4: Week(days: "Q", openday: Colors.green),
                            weekDays5: Week(days: "S", openday: Colors.green),
                            weekDays6: Week(days: "S", openday: Colors.green),
                          )),
                      ResultsBar(
                          establishmentName: "Jaguar Lava Car",
                          avaliation: const Avaliation(number: "4.0"),
                          serviceBar: ServiceBar(
                            icon: const Icon(Icons.house),
                            icon2: const Icon(Icons.sync_alt),
                            iconOn: const Icon(
                              Icons.radio_button_checked,
                              color: Colors.red,
                            ),
                            weekDays: Week(
                              days: "D",
                              openday: Colors.green,
                            ),
                            weekDays1: Week(days: "S", openday: Colors.green),
                            weekDays2: Week(days: "T", openday: Colors.green),
                            weekDays3: Week(days: "Q", openday: Colors.grey),
                            weekDays4: Week(days: "Q", openday: Colors.green),
                            weekDays5: Week(days: "S", openday: Colors.green),
                            weekDays6: Week(days: "S", openday: Colors.green),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            12), // ajuste este valor conforme necessário
                        child: const SizedBox(
                          height: 375,
                          width: 402,
                          child: Mapa(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
