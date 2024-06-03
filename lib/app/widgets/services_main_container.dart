import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/avaliation.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/scheduling.dart';
import 'package:ijato/app/widgets/service_bar.dart';

class ServicesMainContainer extends StatelessWidget {
  const ServicesMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MainRow(
            establishmentName: 'vipCar', avaliation: Avaliation(number: '4.9')),
        ServiceBar(
          icon: Icon(Icons.house),
          icon2: Icon(Icons.sync_alt),
          iconOn: Icon(
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
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class ServiceChekBox extends StatelessWidget {
  final List<String> serviceName;
  final List<String> serviceDescription;
  final int descriptionIndex;
  final List<String> price;

  const ServiceChekBox({
    required this.descriptionIndex,
    required this.price,
    required this.serviceDescription,
    super.key,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.only(right: 7, left: 17, top: 6, bottom: 11),
      child: Row(
        children: [
          const CheckBox(), // Seu widget CheckBox aqui
          const SizedBox(
              width: 10), // Adicione um espaçamento entre o CheckBox e o texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  serviceName[descriptionIndex],
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  serviceDescription[descriptionIndex],
                  style: const TextStyle(fontSize: 10),
                  softWrap:
                      true, // Permitir que o texto quebre em várias linhas
                  overflow: TextOverflow
                      .fade, // Caso o texto seja maior que o contêiner, ele desaparecerá gradualmente
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(top: 6, bottom: 6),
            width: 56,
            height: 57,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.attach_money,
                  color: Colors.green,
                ),
                Text(
                  price[descriptionIndex],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
