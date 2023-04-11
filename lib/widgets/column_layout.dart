import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment; // Defines the alignment of the content.
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({ this.isColor, required this.alignment,
    required this.firstText, required this.secondText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    Row(
                    
                      children: [
                        Column(
                          crossAxisAlignment: alignment,
                          children: [
                            Text(firstText, style: Styles.headLineStyle3,),
                            Gap(AppLayout.getHeight(5),),
                             Text(secondText, style: Styles.headLineStyle4,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
               );
  }
}