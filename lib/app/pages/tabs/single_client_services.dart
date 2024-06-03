import 'package:flutter/material.dart';

class SingleClientServices extends StatefulWidget {
  const SingleClientServices({super.key});

  @override
  _SingleClientServicesState createState() => _SingleClientServicesState();
}

class _SingleClientServicesState extends State<SingleClientServices> {
  bool isButtonCarPressed = false;
  bool isButtonMotorcyclePressed = false;
  bool isChecked = false;

  void _toggleButtonCar() {
    setState(() {
      isButtonCarPressed = !isButtonCarPressed;
      if (isButtonCarPressed) {
        isButtonMotorcyclePressed = false;
      }
    });
  }

  void _toggleButtonMotorcycle() {
    setState(() {
      isButtonMotorcyclePressed = !isButtonMotorcyclePressed;
      if (isButtonMotorcyclePressed) {
        isButtonCarPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    Column(
                      children: [
                        const Text(
                          "Cliente Avulso:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nome do Cliente',
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Tipo:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _toggleButtonCar,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonCarPressed
                                    ? const Color.fromRGBO(34, 101, 24, 1)
                                    : const Color.fromRGBO(153, 167, 148, 1),
                              ),
                              child: const Text('Carro',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(width: 50),
                            ElevatedButton(
                              onPressed: _toggleButtonMotorcycle,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonMotorcyclePressed
                                    ? const Color.fromRGBO(49, 101, 24, 1)
                                    : const Color.fromRGBO(153, 167, 148, 1),
                              ),
                              child: const Text('Moto',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Serviços:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 350,
                          height: 260,
                          decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListView.separated(
                            itemCount: listServices.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                onTap: () {},
                                title: Center(
                                  child: Text(
                                    listServices[index].name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  listServices[index].description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                leading: Container(
                                  width: 56.0,
                                  height: 53.0,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(49, 101, 24, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '${listServices[index].value}',
                                        style: const TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() => isChecked = value!);
                                  },
                                  activeColor:
                                      const Color.fromRGBO(49, 101, 24, 1),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                color: Colors.white,
                                thickness: 8,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Data:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(31, (index) {
                              final day = index + 1;
                              return Container(
                                width: 75,
                                height: 35,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(153, 167, 148, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '$day',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              );
                            }),
                          ),
                        ),
                        const Text(
                          'Hora:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(11, (hour) {
                              final formattedHour =
                                  (hour + 7).toString().padLeft(2, '0');
                              return Container(
                                width: 75,
                                height: 35,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(153, 167, 148, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '$formattedHour:00',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 226, 14, 14),
                          ),
                          child: const Text('Cancelar',
                              style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(width: 50),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 46, 14, 226),
                          ),
                          child: const Text('Salvar',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Services {
  final String name;
  final double value;
  final String description;

  Services(this.name, this.value, this.description);
}

final listServices = [
  Services("Leva e traz:", 00.00,
      "Deixe que um funcionário pegue o seu veículo em sua casa, sem se preocupar em ir ao local pessoalmente."),
  Services("Lavar na residência:", 00.00,
      "Um responsável irá até a sua residência para efetuar o serviço de higienização do seu veículo."),
  Services("Polimento:", 200.00,
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Higienização Completa:", 250.00,
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Higienização Simples:", 50.00,
      "Limpeza básica do veículo, incluindo lavagem externa e aspiração interna."),
];
