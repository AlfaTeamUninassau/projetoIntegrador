import 'package:flutter/material.dart';

class ServicesFromEstab extends StatelessWidget {
  final List<Map<String, String>> services;

  const ServicesFromEstab({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: services.map((service) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.001),
              child: Card(
                color: const Color.fromRGBO(110, 112, 128, 1),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: Text(
                    service['title']!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Data Fim: ${service['date']!}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        "Hora Fim: ${service['time']!}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        "Situação: ${service['status']!}",
                        style: TextStyle(
                          color: service['status'] == 'Pago'
                              ? const Color.fromARGB(255, 31, 94, 36)
                              : Colors.yellow,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.directions_car,
                    color: Colors.black,
                    size: 70,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
