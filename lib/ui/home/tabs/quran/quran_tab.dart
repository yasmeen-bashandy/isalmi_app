import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/core/resourses/assets_manager.dart';
import 'package:islami_app/core/resourses/colors_manager.dart';
import 'package:islami_app/core/resourses/strings_manager.dart';
import 'package:islami_app/ui/home/tabs/quran/widgets/most_recently_item.dart';
import 'package:islami_app/ui/home/tabs/quran/widgets/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManager.quran_back),
          fit: BoxFit.fill,
        ),
      ),

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AssetsManager.islami_header,
                  width: screenWidth * 0.7,
                ),
              ),
              SizedBox(height: 21),
              TextField(
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 16,
                      top: 14,
                      bottom: 13,
                    ),
                    child: SvgPicture.asset(
                      AssetsManager.quran,
                      colorFilter: ColorFilter.mode(
                        ColorsManager.gold,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: ColorsManager.black.withValues(alpha: 0.7),
                  hintText: StringManager.suraName,
                  hintStyle: TextStyle(color: ColorsManager.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorsManager.gold),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorsManager.gold),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorsManager.gold),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text(
                StringManager.mostRecently,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: screenHeight * 0.17,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MostRecentlyItem(),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => SuraItem(),
                  separatorBuilder: (context, index) => Divider(
                    endIndent: 40,
                    indent: 40,
                    color: ColorsManager.white,
                    height: 20,
                  ),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
