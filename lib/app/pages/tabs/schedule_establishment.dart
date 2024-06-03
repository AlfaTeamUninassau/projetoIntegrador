import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';

class ScheduleEstablishment extends StatelessWidget {
  const ScheduleEstablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Text(
                        "essa tela é de agendamentos Estabelecimento:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRoutes.singleClientServices);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(24, 22, 148, 1)),
                        child: const Text('Avulso',
                            style: TextStyle(color: Colors.white)),
                      ),
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
