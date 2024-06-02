import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentDetails extends StatelessWidget {
  final String serviceName;
  final String servicePrice;
  const PaymentDetails(
      {required this.serviceName, required this.servicePrice, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 8,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  serviceName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Text(servicePrice,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14))
      ],
    );
  }
}

class total extends StatelessWidget {
  final String totalService;
  const total({required this.totalService, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
        Text(totalService,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16))
      ],
    );
  }
}
