import 'package:flutter/material.dart';

class MyHouse extends StatelessWidget {
  const MyHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 103,
      decoration: BoxDecoration(
          color: Color.fromRGBO(49, 101, 24, 1),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.house,
            size: 44,
            color: Colors.white,
          ),
          Text(
            'Minha Casa',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 103,
      decoration: BoxDecoration(
          color: Color.fromRGBO(121, 121, 121, 1),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on, size: 44, color: Colors.white),
          Text('Minha Localização',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white))
        ],
      ),
    );
  }
}
