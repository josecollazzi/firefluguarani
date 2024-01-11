import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'material_localization_gn.dart';

class GnMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const GnMaterialLocalizationsDelegate();

  static const LocalizationsDelegate<MaterialLocalizations> delegate = GnMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'gn';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    intl.DateFormat fullYearFormat = intl.DateFormat.y(const Locale("gn").countryCode);
    intl.DateFormat compactDateFormat = intl.DateFormat.yMd(const Locale("gn").countryCode);
    intl.DateFormat  shortDateFormat = intl.DateFormat.yMMMd(const Locale("gn").countryCode);
    intl.DateFormat mediumDateFormat = intl.DateFormat.MMMEd(const Locale("gn").countryCode);
    intl.DateFormat longDateFormat = intl.DateFormat.yMMMMEEEEd(const Locale("gn").countryCode);
    intl.DateFormat yearMonthFormat = intl.DateFormat.yMMMM(const Locale("gn").countryCode);
    intl.DateFormat shortMonthDayFormat = intl.DateFormat.MMMd(const Locale("gn").countryCode);
    intl.NumberFormat decimalFormat = intl.NumberFormat.decimalPattern(const Locale("gn").countryCode);
    intl.NumberFormat twoDigitZeroPaddedFormat = intl.NumberFormat('00', const Locale("gn").countryCode);

    return SynchronousFuture<MaterialLocalizations>(
      MaterialLocalizationGn(
        localeName: "gn",
        decimalFormat: decimalFormat,
        fullYearFormat: fullYearFormat,
        mediumDateFormat: mediumDateFormat,
        compactDateFormat: compactDateFormat,
        shortDateFormat: shortDateFormat,
        longDateFormat: longDateFormat,
        yearMonthFormat: yearMonthFormat,
        shortMonthDayFormat: shortMonthDayFormat,
        twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat,
      ),
    );
  }

  @override
  bool shouldReload(GnMaterialLocalizationsDelegate old) => false;
}