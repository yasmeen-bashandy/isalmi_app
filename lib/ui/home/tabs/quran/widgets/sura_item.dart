import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/core/resourses/assets_manager.dart';
import 'package:islami_app/core/resourses/colors_manager.dart';

class SuraItem extends StatelessWidget {
  const SuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AssetsManager.sura_frame),
            Text(
              "1",
              style: TextStyle(
                color: ColorsManager.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Al-Fatiha",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "7 Verses",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Text(
          "الفاتحه",
          style: TextStyle(
            color: ColorsManager.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
