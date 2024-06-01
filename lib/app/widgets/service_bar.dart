import 'package:flutter/material.dart';

class Week extends StatelessWidget {
  final String days;
  final Color openDay;

  const Week({required this.days, super.key, required this.openDay});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: openDay,
      ),
      child: Text(
        days,
        style: const TextStyle(color: Colors.black, fontSize: 8),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ServiceBar extends StatelessWidget {
  final Icon icon;
  final Icon icon2;
  final Icon iconOn;
  final Week weekDays;
  final Week weekDays1;
  final Week weekDays2;
  final Week weekDays3;
  final Week weekDays4;
  final Week weekDays5;
  final Week weekDays6;

  const ServiceBar({
    super.key,
    required this.icon,
    required this.icon2,
    required this.iconOn,
    required this.weekDays,
    required this.weekDays1,
    required this.weekDays2,
    required this.weekDays3,
    required this.weekDays4,
    required this.weekDays5,
    required this.weekDays6,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12, left: 17),
          padding: const EdgeInsets.all(2),
          color: Colors.white,
          width: 328,
          height: 28,
          child: Row(
            children: [
              const SizedBox(width: 13),
              icon,
              const SizedBox(width: 6),
              icon2,
              const SizedBox(
                width: 59,
              ),
              Row(
                children: [
                  weekDays,
                  weekDays1,
                  weekDays2,
                  weekDays3,
                  weekDays4,
                  weekDays5,
                  weekDays6,
                ],
              ),
              const SizedBox(width: 31),
              iconOn,
              const SizedBox(width: 3),
            ],
          ),
        ),
      ],
    ));
  }
}
