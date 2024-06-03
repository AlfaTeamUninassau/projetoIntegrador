import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/appbar_user.dart';
import 'package:ijato/app/widgets/results_bar.dart';
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 100, child: AppbarUser()),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: const Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          FavoritosBox(),
                          SizedBox(width: 10),
                          Expanded(
                            child: ResearchField(
                              label: 'Buscar lava-jato:',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  ResultsBar(
                    establishmentName: "VipCar",
                    barColor: Color(0xff6672B4),
                    avaliation: Avaliation(number: "4.9"),
                    serviceBar: ServiceBar(
                      icon: Icon(Icons.emoji_transportation),
                      icon2: Icon(Icons.sync_alt),
                      iconOn: Icon(
                        Icons.radio_button_checked,
                        color: Colors.green,
                      ),
                      weekDays: Week(days: "D", openday: Colors.grey),
                      weekDays1: Week(days: "S", openday: Colors.green),
                      weekDays2: Week(days: "T", openday: Colors.green),
                      weekDays3: Week(days: "Q", openday: Colors.green),
                      weekDays4: Week(days: "Q", openday: Colors.green),
                      weekDays5: Week(days: "S", openday: Colors.green),
                      weekDays6: Week(days: "S", openday: Colors.grey),
                    ),
                  ),
                  ResultsBar(
                    establishmentName: "WJ Lava-Jato",
                    avaliation: Avaliation(number: "4.5"),
                    serviceBar: ServiceBar(
                      icon: Icon(Icons.house),
                      icon2: Icon(Icons.sync_alt),
                      iconOn: Icon(
                        Icons.radio_button_checked,
                        color: Colors.green,
                      ),
                      weekDays: Week(days: "D", openday: Colors.grey),
                      weekDays1: Week(days: "S", openday: Colors.green),
                      weekDays2: Week(days: "T", openday: Colors.green),
                      weekDays3: Week(days: "Q", openday: Colors.green),
                      weekDays4: Week(days: "Q", openday: Colors.green),
                      weekDays5: Week(days: "S", openday: Colors.green),
                      weekDays6: Week(days: "S", openday: Colors.green),
                    ),
                  ),
                  ResultsBar(
                    establishmentName: "Jaguar Lava Car",
                    avaliation: Avaliation(number: "4.0"),
                    serviceBar: ServiceBar(
                      icon: Icon(Icons.house),
                      icon2: Icon(Icons.sync_alt),
                      iconOn: Icon(
                        Icons.radio_button_checked,
                        color: Colors.red,
                      ),
                      weekDays: Week(days: "D", openday: Colors.green),
                      weekDays1: Week(days: "S", openday: Colors.grey),
                      weekDays2: Week(days: "T", openday: Colors.green),
                      weekDays3: Week(days: "Q", openday: Colors.green),
                      weekDays4: Week(days: "Q", openday: Colors.green),
                      weekDays5: Week(days: "S", openday: Colors.green),
                      weekDays6: Week(days: "S", openday: Colors.green),
                    ),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: 390,
                    child: const Mapa(),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: BottomNavigationBar(
                    items: const [
                      BottomNavigationBarItem(
                        activeIcon: Icon(Icons.home_outlined),
                        backgroundColor: Color.fromARGB(251, 0, 0, 0),
                        icon: Icon(Icons.home),
                        label: 'Início',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(Icons.calendar_month_outlined),
                        backgroundColor: Color.fromARGB(255, 207, 24, 11),
                        icon: Icon(Icons.calendar_month_rounded),
                        label: 'Agenda',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(Icons.construction_outlined),
                        backgroundColor: Color.fromARGB(255, 63, 63, 63),
                        icon: Icon(Icons.construction),
                        label: 'Serviços',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(Icons.monetization_on_outlined),
                        backgroundColor: Color.fromARGB(255, 5, 160, 44),
                        icon: Icon(Icons.monetization_on),
                        label: 'Financeiro',
                      ),
                      BottomNavigationBarItem(
                        activeIcon: Icon(Icons.shopping_cart_outlined),
                        backgroundColor: Color.fromARGB(255, 13, 26, 196),
                        icon: Icon(Icons.shopping_cart),
                        label: 'Pedidos',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
