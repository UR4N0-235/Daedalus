import 'package:daedalus/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DialogCredits extends StatelessWidget {
  static show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const DialogCredits(),
    );
  }

  const DialogCredits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 80),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  ListTile(
                    title: const Text(
                      "English",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Normal',
                          fontSize: 30.0),
                    ),
                    onTap: () async {
                      var prefs = await SharedPreferences.getInstance();
                      await prefs.setString('language_code', 'en');
                      await prefs.setString('country_code', 'US');

                      // ignore: use_build_context_synchronously
                      Daedalus.setLocale(context, const Locale("en", "US"));
                    },
                  ),
                  ListTile(
                      title: const Text(
                        "portugues",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Normal',
                            fontSize: 30.0),
                      ),
                      onTap: () async {
                        var prefs = await SharedPreferences.getInstance();
                        await prefs.setString('language_code', 'en');
                        await prefs.setString('country_code', 'US');

                        // ignore: use_build_context_synchronously
                        Daedalus.setLocale(context, const Locale("pt", "BR"));
                      }),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  child: const Text('Fechar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
