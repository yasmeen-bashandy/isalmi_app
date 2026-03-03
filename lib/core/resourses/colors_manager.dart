//asbstract عشان مش محتاج اخد منه object هاخد منه values بس
import 'dart:ui';

abstract final class ColorsManager {
  //const بياخد قيمه ثابته في compile time
  //final بيتعرف في ال runtimr
  static const Color gold = Color(0xffE2BE7F);
  static const Color black = Color(0xff202020);
  static const Color white = Color(0xffffffff);
  static const Color darkGold = Color(0xffB19768);
}
