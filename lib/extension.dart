part of sizer;

extension SizerExt on num {
  static double scaleFactorH = 0.11;
  static double scalefactorW = 0.26;

  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * SizerUtil.height / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => this * SizerUtil.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => this * (SizerUtil.width / 3) / 100;

  double get kh => (this * SizerUtil.height * scaleFactorH) / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.kw -> will take 20% of the screen's width
  double get kw => (this * SizerUtil.width * scalefactorW) / 100;
}
