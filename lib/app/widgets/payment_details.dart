import 'package:flutter/material.dart';

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
                const Icon(
                  Icons.circle,
                  size: 8,
                  color: Colors.black,
                ),
                const SizedBox(width: 5),
                Text(
                  serviceName,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Text(servicePrice,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14))
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
        const Text('Total',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
        Text(totalService,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16))
      ],
    );
  }
}
