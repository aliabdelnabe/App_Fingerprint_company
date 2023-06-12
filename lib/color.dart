
import 'package:flutter/material.dart';

Color bgColorLightTop = const Color(0xffD7DFE4);
Color bgColorLightBottom = const Color(0xff7A7886);
Color bgColorDarkTop = const Color(0xff62696E);
Color bgColorDarkBottom = const Color(0xff2A1D29);

Color textColorDark = const Color(0xff2A1D29);
Color textColorLight = const Color(0xffD7DFE4);

Color themeColorLight = const Color(0xff00B0AA);
Color themeColorDark = const Color(0XFF005855);


Gradient buttonGradient = LinearGradient(colors: [
  Colors.black.withOpacity(0.7),
  const Color(0xFF091F05),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
);


Gradient beatGradient = LinearGradient(colors: [
  themeColorDark,
  themeColorLight,
],
begin: Alignment.centerLeft,
end: Alignment.centerRight,
);
