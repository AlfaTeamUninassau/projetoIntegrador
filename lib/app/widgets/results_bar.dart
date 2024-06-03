import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_routes.dart';
import 'package:ijato/app/widgets/service_bar.dart';
import 'package:ijato/app/widgets/avaliation.dart';

class ResultsBar extends StatefulWidget {
  final String establishmentName;
  final Avaliation avaliation;
  final ServiceBar serviceBar;
  final Color barColor;

  const ResultsBar({
    required this.establishmentName,
    required this.avaliation,
    required this.serviceBar,
    this.barColor = const Color.fromRGBO(174, 174, 174, 1.0),
    super.key,
  });

  @override
  _ResultsBarState createState() => _ResultsBarState();
}

class _ResultsBarState extends State<ResultsBar> {
  late Color barColor;
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    barColor = widget.barColor;
  }

  @override
  Widget build(BuildContext context) {
    Border? border;
    if (isSelected) {
      border = Border.all(color: Colors.black, width: 2);
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            barColor = widget.barColor;
            isSelected = false;
          } else {
            barColor = const Color(0xff6672B4);
            isSelected = true;
          }
        });
        Navigator.pushNamed(context, AppRoutes.detailsEstablishment);
      },
      child: Center(
        child: Column(
          children: [
            Container(
              width: 402,
              height: 101,
              margin: const EdgeInsets.only(top: 5, right: 13, left: 13),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: barColor,
                  borderRadius: BorderRadius.circular(5),
                  border: border),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.black,
                        size: 40.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Text(widget.establishmentName),
                      const SizedBox(),
                      const Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded, // ícone de estrela
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_rounded, // ícone de estrela
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_rounded, // ícone de estrela
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_rounded, // ícone de estrela
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_rounded, // ícone de estrela
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 11),
                      widget.avaliation,
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.local_car_wash,
                        size: 24,
                      )
                    ],
                  ),
                  Row(
                    children: [widget.serviceBar],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
