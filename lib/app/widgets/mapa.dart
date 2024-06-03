import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:ijato/app/widgets/vipcar_image.dart';
import 'package:ijato/app/widgets/jaguar_image.dart';
import 'package:ijato/app/widgets/wj_image.dart';

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
          userAgentPackageName: 'com.ijato.app',
        ),
        const MarkerLayer(
          markers: [
            Marker(
              point: const LatLng(-7.2195934, -39.301558),
              child: VipcarImage(),
              width: 80.0,
              height: 80.0,
            ),
            Marker(
              point: const LatLng(-7.219135, -39.297377),
              child: WjImage(),
              width: 80.0,
              height: 80.0,
            ),
            Marker(
              point: const LatLng(-7.220947, -39.296650),
              child: JaguarImage(),
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ],
    );
  }
}
