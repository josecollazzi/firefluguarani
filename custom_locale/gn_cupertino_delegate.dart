import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'cupertino_localization_gn.dart';

class GnCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const GnCupertinoLocalizationsDelegate();

  static const LocalizationsDelegate<CupertinoLocalizations> delegate = GnCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'gn';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    intl.DateFormat dayFormat = intl.DateFormat.d();
    intl.DateFormat singleDigitHourFormat = intl.DateFormat('HH');
    intl.DateFormat singleDigitMinuteFormat = intl.DateFormat.m();
    intl.DateFormat doubleDigitMinuteFormat = intl.DateFormat('mm');
    intl.DateFormat singleDigitSecondFormat = intl.DateFormat.s();
    intl.NumberFormat decimalFormat = intl.NumberFormat.decimalPattern();
    intl.DateFormat fullYearFormat = intl.DateFormat.y();
    intl.DateFormat mediumDateFormat = intl.DateFormat.MMMEd();

    return SynchronousFuture<CupertinoLocalizations>(
      CupertinoLocalizationGn(
        localeName: "gn",
        decimalFormat: decimalFormat,
        fullYearFormat: fullYearFormat,
        mediumDateFormat: mediumDateFormat,
        dayFormat: dayFormat,
        singleDigitHourFormat: singleDigitHourFormat,
        singleDigitMinuteFormat: singleDigitMinuteFormat,
        doubleDigitMinuteFormat: doubleDigitMinuteFormat,
        singleDigitSecondFormat: singleDigitSecondFormat,
      ),
    );
  }

  @override
  bool shouldReload(GnCupertinoLocalizationsDelegate old) => false;
}