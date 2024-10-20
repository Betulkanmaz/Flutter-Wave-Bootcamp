import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tasarim_calismasi/my_chip.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en", ""),
        Locale("tr", ""),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)!;
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        centerTitle: true,
        title: const Text(
          "Pizza",
          style: TextStyle(color: Colors.white, fontFamily: "Pacifico"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            d.pizzaBaslik,
            style: TextStyle(
              fontSize: 36,
              color: anaRenk,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("resimler/pizza_resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyChip(icerik: d.peynirYazi),
              MyChip(icerik: d.sucukYazi),
              MyChip(icerik: d.zeytinYazi),
              MyChip(icerik: d.peynirYazi),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  d.teslimatSure,
                  style: TextStyle(
                    color: yaziRenk2,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  d.teslimatBaslik,
                  style: TextStyle(
                    color: anaRenk,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  d.pizzaAciklama,
                  style: TextStyle(
                    color: yaziRenk2,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "${d.fiyat}",
                style: TextStyle(
                  color: anaRenk,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  d.buttonYazi,
                  style: TextStyle(color: yaziRenk1, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
