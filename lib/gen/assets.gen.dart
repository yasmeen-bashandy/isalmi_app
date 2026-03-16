// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Splash Screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/images/Splash Screen.png');

  /// File path: assets/images/branding.png
  AssetGenImage get branding =>
      const AssetGenImage('assets/images/branding.png');

  /// File path: assets/images/hadith.svg
  String get hadith => 'assets/images/hadith.svg';

  /// File path: assets/images/hadith_selected.svg
  String get hadithSelected => 'assets/images/hadith_selected.svg';

  /// File path: assets/images/islami_header.png
  AssetGenImage get islamiHeader =>
      const AssetGenImage('assets/images/islami_header.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/most_recent.png
  AssetGenImage get mostRecent =>
      const AssetGenImage('assets/images/most_recent.png');

  /// File path: assets/images/quran.svg
  String get quran => 'assets/images/quran.svg';

  /// File path: assets/images/quran_back.png
  AssetGenImage get quranBack =>
      const AssetGenImage('assets/images/quran_back.png');

  /// File path: assets/images/quran_selected.svg
  String get quranSelected => 'assets/images/quran_selected.svg';

  /// File path: assets/images/radio.svg
  String get radio => 'assets/images/radio.svg';

  /// File path: assets/images/radio_selected.svg
  String get radioSelected => 'assets/images/radio_selected.svg';

  /// File path: assets/images/sabha.svg
  String get sabha => 'assets/images/sabha.svg';

  /// File path: assets/images/sabha_selected.svg
  String get sabhaSelected => 'assets/images/sabha_selected.svg';

  /// File path: assets/images/sura_frame.svg
  String get suraFrame => 'assets/images/sura_frame.svg';

  /// File path: assets/images/time.svg
  String get time => 'assets/images/time.svg';

  /// File path: assets/images/time_selected.svg
  String get timeSelected => 'assets/images/time_selected.svg';

  /// List of all assets
  List<dynamic> get values => [
    splashScreen,
    branding,
    hadith,
    hadithSelected,
    islamiHeader,
    logo,
    mostRecent,
    quran,
    quranBack,
    quranSelected,
    radio,
    radioSelected,
    sabha,
    sabhaSelected,
    suraFrame,
    time,
    timeSelected,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
