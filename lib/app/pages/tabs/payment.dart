import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/appbar_user.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/payment_details.dart';
import 'package:ijato/app/widgets/services_main_container.dart';
import 'package:ijato/app/widgets/user_buttons.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 170, child: AppbarUser()),
          SafeArea(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Column(
                  children: [
                    SizedBox(height: 150),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 13, left: 13),
                      padding: const EdgeInsets.only(
                          right: 14, left: 14, top: 8, bottom: 14),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(102, 114, 180, 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          const ServicesMainContainer(),
                          Container(
                            padding: const EdgeInsets.only(
                                right: 15, left: 15, bottom: 39, top: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Resumo dos Serviços',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                PaymentDetails(
                                    serviceName: 'Leva e Traz',
                                    servicePrice: 'Gratis'),
                                PaymentDetails(
                                    serviceName: 'Higienização Simples',
                                    servicePrice: 'R\$50'),
                                Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                  height: 20,
                                  indent: 20,
                                  endIndent: 20,
                                ),
                                total(totalService: '50')
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                right: 15, left: 15, bottom: 8, top: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Formas de Pagamento',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        CheckBox(),
                                        Icon(
                                          Icons.pix,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Text(
                                          'Pix',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CheckBox(),
                                        Icon(
                                          Icons.credit_card_outlined,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Text(
                                          'Cartão de Crédito',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CheckBox(),
                                        Icon(
                                          Icons.monetization_on,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Text(
                                          'Dinheiro',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Expanded(
                                            child: Text(
                                          '*O pagamento será combinado com o estabelecimento, não processamos pagamento dentro do aplicativo.',
                                          style: TextStyle(fontSize: 10),
                                          softWrap: true,
                                          overflow: TextOverflow.fade,
                                        ))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [],
                                ),
                                Column(
                                  children: [],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Column(
                                  children: [],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PreviusButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.adress);
                          },
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        NextButton(
                            nextbuttonName: 'Confirmar',
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.confirmation);
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
