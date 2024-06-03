import 'package:flutter/material.dart';

class MyHouse extends StatefulWidget {
  const MyHouse({super.key});

  @override
  _MyHouseState createState() => _MyHouseState();
}

class _MyHouseState extends State<MyHouse> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 164,
        height: 103,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(49, 101, 24, 1)
              : const Color.fromRGBO(121, 121, 121, 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Column(
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
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class MyLocation extends StatefulWidget {
  const MyLocation({super.key});

  @override
  _MyLocationState createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 164,
        height: 103,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(49, 101, 24, 1)
              : const Color.fromRGBO(121, 121, 121, 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Column(
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
      ),
    );
  }
}
