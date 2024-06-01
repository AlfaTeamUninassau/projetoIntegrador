import 'package:flutter/material.dart';

class SingleClientServices extends StatefulWidget {
  const SingleClientServices({Key? key});

  @override
  _SingleClientServicesState createState() => _SingleClientServicesState();
}

class _SingleClientServicesState extends State<SingleClientServices> {
  bool isButtonCarPressed = false;
  bool isButtonMotorcyclePressed = false;

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
                width: 380,
                height: 700,
                color: const Color.fromRGBO(201, 201, 201, 0.788),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        const Text(
                          "Cliente Avulso:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Nome do Cliente',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Tipo:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _toggleButtonCar,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isButtonCarPressed
                                    ? const Color.fromRGBO(49, 101, 24, 1)
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
                        const SizedBox(height: 10),
                        const Text(
                          'Serviços:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 360,
                          height: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
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
                                  value:
                                      false, // Define o estado da caixa de seleção aqui
                                  onChanged: (newValue) {
                                    // Lógica para lidar com a mudança de estado da caixa de seleção
                                  },
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider(
                                color: Colors.white,
                                thickness: 10,
                              );
                            },
                          ),
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
      "Restaura o brilho do seu veículo, removendo riscos superficiais, manchas e imperfeições."),
  Services("Vitrificação:", 450.00,
      "Procedimento que cria uma camada protetora na pintura do veículo, proporcionando brilho intenso e proteção duradoura."),
  Services("Polimento Faróis:", 450.00,
      "Procedimento que restaura a clareza e brilho dos faróis do seu veículo. Ele remove arranhões, manchas e o amarelamento causado pelo..."),
  Services("Cristalização de vidros:", 150.00,
      "Procedimento que cria-se uma fina camada de silicone que repele a chuva, reduz a aderência de poeira e protege contra pequenos danos. "),
  Services("Oxi-Sanitização:", 500.00,
      "Limpeza industrial que foi adaptada para a área automotiva, usada diretamente para limpeza de ar condicionado e para cuidar do mau cheiro na parte interna do carro. É utilizado um gás natural chamado ozônio, que é eficiente na destruição de fungos, bactérias e vírus possuindo um efeito germicida. Com uma aplicação mais direta, sua eficiência de desinfecção aumenta.")
];
