import 'package:flutter/material.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({super.key});

  @override
  _ServicesListState createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  List<bool> isCheckedList = List<bool>.filled(listServices.length, false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 460,
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
              value: isCheckedList[index],
              onChanged: (value) {
                setState(() => isCheckedList[index] = value!);
              },
              activeColor: const Color.fromRGBO(49, 101, 24, 1),
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
  Services("Vitrificação:", 450.00,
      "Procedimento que cria uma camada protetora na pintura do veículo, proporcionando brilho intenso e proteção duradoura."),
  Services("Polimento Faróis:", 150.00,
      "Procedimento que restaura a clareza e brilho dos faróis do seu veículo. Ele remove arranhões, manchas e o amarelamento causado pelo tempo."),
  Services("Cristalização de vidros:", 100.00,
      "Procedimento que cria uma fina camada de silicone que repele a chuva, reduz a aderência de poeira e protege contra pequenos danos."),
  Services("Oxi-Sanitização:", 500.00,
      "Limpeza industrial adaptada para a área automotiva, usada diretamente para limpeza de ar condicionado e para cuidar do mau cheiro na parte interna do carro."),
  Services("Enceramento:", 150.00,
      "Aplicação de cera especial para proteger a pintura do veículo e proporcionar um brilho duradouro."),
  Services("Descontaminação de Pintura:", 300.00,
      "Processo que remove contaminantes da superfície da pintura, deixando-a lisa e pronta para polimento ou vitrificação."),
  Services("Lavagem a Seco:", 80.00,
      "Limpeza do veículo sem o uso de água, utilizando produtos especiais que removem sujeira e protegem a pintura."),
  Services("Lavagem de Motor:", 100.00,
      "Limpeza detalhada do motor do veículo, removendo sujeira e óleo acumulado."),
  Services("Hidratação de Bancos de Couro:", 200.00,
      "Tratamento especial para hidratar e proteger os bancos de couro, evitando ressecamento e rachaduras."),
  Services("Limpeza de Ar Condicionado:", 150.00,
      "Limpeza e higienização do sistema de ar condicionado do veículo, eliminando fungos e bactérias."),
];
