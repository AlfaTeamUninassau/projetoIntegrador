import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String nextbuttonName;
  final Function()? onPressed;

  const NextButton({required this.nextbuttonName, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(const Color.fromRGBO(49, 101, 24, 1)),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            minimumSize: WidgetStateProperty.all(const Size(175, 52))),
        child: Text(
          nextbuttonName,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ));
  }
}

class PreviousButton extends StatelessWidget {
  final Function()? onPressed;

  const PreviousButton({this.onPressed, super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(const Color.fromRGBO(97, 97, 97, 1)),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            minimumSize: WidgetStateProperty.all(const Size(175, 52))),
        child: const Text(
          'Voltar',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ));
  }
}
