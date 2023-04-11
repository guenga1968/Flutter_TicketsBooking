import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;

  const AppDoubleText({required this.bigText, required this.smallText, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                     bigText,
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        smallText,
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor), //copyWith para modificar el estilo de la clase Styles.textstyles
                      ),
                    ),
                  ],
                );
  }
}