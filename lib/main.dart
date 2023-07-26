import 'package:daedalus/daedalus_widgets/menu/menu_starter.dart';
import 'package:daedalus/utils/localization/localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const Daedalus());

class Daedalus extends StatefulWidget {
  const Daedalus({super.key});

  @override
  State<Daedalus> createState() => _DaedalusState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _DaedalusState? state = context.findAncestorStateOfType<_DaedalusState>();
    // ignore: invalid_use_of_protected_member
    state?.setState(() {
      state.locale = newLocale;
    });
  }
}

class _DaedalusState extends State<Daedalus> {
  Locale? locale;
  bool localeLoaded = false;

  @override
  void initState() {
    super.initState();
    _fetchLocale().then((locale) {
      setState(() {
        localeLoaded = true;
        this.locale = locale;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (localeLoaded == false) {
      return const CircularProgressIndicator();
    } else {
      return MaterialApp(
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            // ignore: prefer_conditional_assignment, unnecessary_null_comparison
            if (locale == null) {
              locale = deviceLocale;
            }
            return locale;
          },
          localizationsDelegates: const [
            DaedalusLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('pt', 'BR'),
          ],
          locale: locale,
          home: const Menu());
    }
  }

  _fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) return null;
    return Locale(
        prefs.getString('language_code')!, prefs.getString('country_code'));
  }
}
