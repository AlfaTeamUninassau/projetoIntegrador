import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ijato/app/shared/app_images.dart';
import 'package:ijato/app/widgets/logo.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';

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
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(-7.2198444, -39.3018349),
              child: Image.asset(AppImages.locale),
              width: 80.0,
              height: 80.0,
            ),
            Marker(
              point: LatLng(-7.2192339, -39.2977571),
              child: Image.asset(AppImages.locale1),
              width: 80.0,
              height: 80.0,
            ),
            Marker(
              point: LatLng(-7.2208259, -39.2984149),
              child: Image.asset(AppImages.locale2),
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ],
    );
  }
}
