import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late Map<String, dynamic> language;

class DaedalusLocalizations {
  static String of(BuildContext context, String key) {
    return Localizations.of<DaedalusLocalizations>(
            context, DaedalusLocalizations)!
        .getText(key);
  }

  String getText(String key) => language[key];
}

class DaedalusLocalizationsDelegate
    extends LocalizationsDelegate<DaedalusLocalizations> {
  const DaedalusLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en_US', 'pt_BR']
      .contains("${locale.languageCode}_${locale.countryCode}");

  @override
  Future<DaedalusLocalizations> load(Locale locale) async {
    final string = await rootBundle.loadString(
        'assets/langs/${locale.languageCode}_${locale.countryCode}.json');
    language = json.decode(string);
    return SynchronousFuture<DaedalusLocalizations>(DaedalusLocalizations());
  }

  @override
  bool shouldReload(DaedalusLocalizationsDelegate old) => false;
}
