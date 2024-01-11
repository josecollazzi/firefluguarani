import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:matelimpio/configuration/custom_locale/firebaseui_localization_gn.dart';
import 'package:firebase_ui_localizations/src/lang/es.dart';

class GnFirebaseUIDelegate extends LocalizationsDelegate<FirebaseUILocalizations<FirebaseUILocalizationLabels>> {
  const GnFirebaseUIDelegate();

  static const LocalizationsDelegate<FirebaseUILocalizations<FirebaseUILocalizationLabels>> delegate = GnFirebaseUIDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'gn';

  @override
  bool shouldReload(GnFirebaseUIDelegate old) => false;

  @override
  Future<FirebaseUILocalizations<FirebaseUILocalizationLabels>> load(Locale locale) {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    return SynchronousFuture<FirebaseUILocalizations<FirebaseUILocalizationLabels>>(
      const FirebaseuiLocalizationGn(Locale("gn"), EsLocalizations()),
    );
  }
}