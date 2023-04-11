import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String texto;
  const AppIconText({required this.icon, required this.texto,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(20), horizontal: AppLayout.getWidth(20)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10),),
            ),
            child: Row(
              children: [
                 Icon(icon, color: const Color(0xFFBFC2DF),),
                Gap(AppLayout.getWidth(10)),
                Text(texto, style: Styles.textStyle,),
              ],
              ),
          );
  }
}