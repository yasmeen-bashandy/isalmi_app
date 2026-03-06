import 'package:flutter/material.dart';
import 'package:islami_app/core/resourses/assets_manager.dart';
import 'package:islami_app/core/resourses/colors_manager.dart';

class MostRecentlyItem extends StatelessWidget {
  const MostRecentlyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Al-Anbiya",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsManager.black,
                  ),
                ),
                Text(
                  "الأنبياء",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsManager.black,
                  ),
                ),
                Text(
                  "112 Verses",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorsManager.black,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(AssetsManager.most_recent),
        ],
      ),
    );
  }
}
