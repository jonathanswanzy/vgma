import 'package:flutter/material.dart';
import 'package:vgma/AppLocalizations.dart';

import 'package:vgma/configs/AppDimensions.dart';
import 'package:vgma/configs/TextStyles.dart';

class App {
  static BuildContext ctx;
  static bool isLtr;

  static init(BuildContext context) {
    AppDimensions.init(context);
    TextStyles.init();
    App.ctx = context;

    isLtr = Directionality.of(context) == TextDirection.ltr;
  }

  static translate(String key) {
    return AppLocalizations.of(App.ctx).translate(key) ?? key;
  }
}