import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_images.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/avatar.dart';
import 'package:ijato/app/widgets/check_box.dart';
import 'package:ijato/app/widgets/logo.dart';
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
          const SizedBox(height: 175, child: AppbarHome()),
          SafeArea(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: LogoImage(),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: AvatarImage(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 13, left: 13),
                      padding: EdgeInsets.only(
                          right: 14, left: 14, top: 8, bottom: 14),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(102, 114, 180, 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          ServicesMainContainer(),
                          Container(
                            padding: EdgeInsets.only(
                                right: 15, left: 15, bottom: 39, top: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
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
                                  height: 20, // Define a altura da linha
                                  indent: 20, // Define o recuo à esquerda
                                  endIndent: 20, // Define o recuo à direita
                                ),
                                total(totalService: '50')
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 15, left: 15, bottom: 8, top: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
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
                                Row(
                                  children: [
                                    CheckBox(),
                                    Image.asset(AppImages.pixlogo),
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
                                    Image.asset(AppImages.credCard),
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
                                    Image.asset(AppImages.money),
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
                                SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Expanded(
                                        child: Text(
                                      '*O pagamento será combinado com o estabelecimento, não processamos pagamento dentro do aplicativo.',
                                      style: TextStyle(fontSize: 10),
                                      softWrap:
                                          true, // Permitir que o texto quebre em várias linhas
                                      overflow: TextOverflow.fade,
                                    ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
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
                        SizedBox(
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
                    SizedBox(
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
