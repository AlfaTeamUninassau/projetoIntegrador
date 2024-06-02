import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(-7.219818, -39.301607),
        initialZoom: 16.5,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/hasura/clwwsnlwg05wx01qlgbp25uec/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFzdXJhIiwiYSI6ImNsd3dzbDdyZTEzOWQya3E3Mjdlc2cxeXUifQ.xva1j2OgcYSoN2zP5Oq2XA',
          subdomains: const ['a', 'b', 'c'],
          userAgentPackageName: 'com.example.app',
        ),
        const MarkerLayer(
          markers: [
            Marker(
              point: LatLng(-7.219818, -39.301607),
              child: Icon(Icons.location_pin,
                  color: Color.fromARGB(255, 98, 183, 252), size: 50),
              width: 80.0,
              height: 80.0,
            ),
            Marker(
              point: LatLng(-7.219348, -39.300134),
              child: Icon(Icons.location_pin,
                  color: Color.fromARGB(255, 157, 205, 244), size: 40),
              width: 80.0,
              height: 80.0,
              
            ),
            Marker(
              point: LatLng(-7.2204134, -39.2980741),
              child: Icon(Icons.location_pin,
                  color: Color.fromARGB(255, 157, 205, 244), size: 40),
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ],
    );
  }
}
