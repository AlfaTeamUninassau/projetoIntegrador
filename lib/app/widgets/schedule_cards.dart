import 'package:flutter/material.dart';
import 'package:ijato/app/controllers/schedule_controller.dart';
import 'package:ijato/app/models/schedule.dart';
import 'package:ijato/app/widgets/text_primary.dart';
import 'package:provider/provider.dart';

class ExpandableCard extends StatefulWidget {
  final Schedule schedule;
  final int index;

  const ExpandableCard({
    super.key,
    required this.schedule,
    required this.index,
  });

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isCardExpanded = false;

  Widget _renderItem(ScheduleController controller) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = true;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(flex: 2),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.schedule.date,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.schedule.time,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                  const Spacer(flex: 6),
                  const Column(
                    children: [
                      SizedBox(height: 10.0),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        size: 30.0,
                      ),
                    ],
                  ),
                  const Spacer(flex: 8),
                  if (widget.schedule.status == ScheduleStatus.available ||
                      widget.schedule.status == ScheduleStatus.unavailable)
                    Container(
                      width: 95,
                      height: 35,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color:
                            widget.schedule.status == ScheduleStatus.available
                                ? const Color.fromARGB(255, 9, 122, 13)
                                : const Color.fromARGB(160, 54, 54, 54),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        widget.schedule.statusDisplay(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderExpandedItem(ScheduleController controller) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCardExpanded = false;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: const Color.fromRGBO(172, 172, 172, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.schedule.time,
                        style: const TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextPrimary(textName: 'Nome: ${widget.schedule.name}'),
                      TextPrimary(
                          textName: 'Veículo: ${widget.schedule.vehicle}'),
                      TextPrimary(textName: 'Marca: ${widget.schedule.brand}'),
                      TextPrimary(textName: 'Modelo: ${widget.schedule.model}'),
                      TextPrimary(textName: 'Placa: ${widget.schedule.plate}'),
                      TextPrimary(
                          textName: 'Serviço: ${widget.schedule.schedule}'),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      if (widget.schedule.status == ScheduleStatus.available ||
                          widget.schedule.status == ScheduleStatus.unavailable)
                        Container(
                          width: 95,
                          height: 35,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: widget.schedule.status ==
                                    ScheduleStatus.available
                                ? const Color.fromARGB(255, 9, 122, 13)
                                : const Color.fromARGB(160, 54, 54, 54),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            widget.schedule.statusDisplay(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(
                          Icons.directions_car,
                          size: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ),
                      const SizedBox(height: 15),
                      if (widget.schedule.status == ScheduleStatus.unavailable)
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: 95,
                                height: 35,
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 204, 72, 72),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'finalizar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (widget.schedule.status == ScheduleStatus.available)
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: 95,
                                height: 35,
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(24, 22, 148, 1),
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(color: Colors.black)),
                                child: const Text(
                                  'iniciar',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 11.0),
              const Center(
                child: Icon(
                  Icons.arrow_drop_up_outlined,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheduleController = Provider.of<ScheduleController>(context);

    return !isCardExpanded
        ? _renderItem(scheduleController)
        : _renderExpandedItem(scheduleController);
  }
}
