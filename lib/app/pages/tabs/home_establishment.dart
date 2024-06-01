import 'package:flutter/material.dart';
import 'package:ijato/app/shared/navigation_provider.dart';
import 'package:ijato/app/widgets/pages_card.dart';
import 'package:provider/provider.dart';
import 'package:ijato/app/widgets/results_bar.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/service_bar.dart';
import 'package:ijato/app/widgets/services_from_estab.dart'; // Novo import

class HomeEstablishment extends StatelessWidget {
  const HomeEstablishment({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> services = [
      {
        "title": "Higienização Simples",
        "date": "30/05/2024",
        "time": "09:00",
        "status": "Pago",
      },
      {
        "title": "Polimento",
        "date": "29/05/2024",
        "time": "16:00",
        "status": "Pendente",
      },
      {
        "title": "Higienização Simples",
        "date": "29/05/2024",
        "time": "14:00",
        "status": "Pago",
      },
      {
        "title": "Higienização Completa",
        "date": "29/05/2024",
        "time": "11:00",
        "status": "Pago",
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Meu estabelecimento:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Popins',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: [
                            ResultsBar(
                              barColor: const Color(0xff6672B4),
                              establishmentName: "VipCar",
                              avaliation: const Avaliation(number: "4.9"),
                              serviceBar: ServiceBar(
                                icon: const Icon(Icons.house),
                                icon2: const Icon(Icons.sync_alt),
                                iconOn: const Icon(
                                  Icons.radio_button_checked,
                                  color: Colors.green,
                                ),
                                weekDays: Week(
                                  days: "D",
                                  openday: Colors.grey,
                                ),
                                weekDays1: Week(
                                  days: "S",
                                  openday: Colors.green,
                                ),
                                weekDays2: Week(
                                  days: "T",
                                  openday: Colors.green,
                                ),
                                weekDays3: Week(
                                  days: "Q",
                                  openday: Colors.green,
                                ),
                                weekDays4: Week(
                                  days: "Q",
                                  openday: Colors.green,
                                ),
                                weekDays5: Week(
                                  days: "S",
                                  openday: Colors.green,
                                ),
                                weekDays6: Week(
                                  days: "S",
                                  openday: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.shopping_cart,
                                label: "Pedidos",
                                backgroundColor:
                                    const Color.fromARGB(255, 13, 26, 196),
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(4);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.calendar_month_outlined,
                                label: "Agendamento",
                                backgroundColor:
                                    const Color.fromARGB(255, 172, 39, 22),
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(1);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.monetization_on,
                                label: "Finanças",
                                backgroundColor: Colors.green,
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(3);
                                },
                              ),
                              const SizedBox(width: 6),
                              PageCard(
                                icon: Icons.settings,
                                label: "Serviços",
                                backgroundColor: Colors.orange,
                                onTap: () {
                                  Provider.of<NavigationProvider>(context,
                                          listen: false)
                                      .changePage(2);
                                },
                              ),
                              const SizedBox(width: 6),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      10.0), // Ajuste o valor conforme necessário
                              child: Text(
                                "Últimos serviços feitos:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        ServicesFromEstab(
                            services: services),                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
