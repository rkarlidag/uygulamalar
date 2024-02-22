import 'package:flutter/material.dart';
import 'package:uygulamalar/dereceDonusum.dart';
import 'package:uygulamalar/dikdortgenCevresi.dart';
import 'package:uygulamalar/faktoriyelHesapla.dart';
import 'package:uygulamalar/harfSayisi.dart';
import 'package:uygulamalar/icAciHesabi.dart';
import 'package:uygulamalar/internetHesabi.dart';
import 'package:uygulamalar/maasHesabi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dereceDonusum() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/fahrenheit.png")),
                      Column(
                        children: [
                          Text("Derece Dönüşüm Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dikdortgenCevresi() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/dikdortgen.png")),
                      Column(
                        children: [
                          Text("Dikdötgen Çevresi Hesaplama Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => faktoriyelHesapla() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/faktoryel.png")),
                      Column(
                        children: [
                          Text("Faktöriyel Hesaplama Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => harfSayisi() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/harf.png")),
                      Column(
                        children: [
                          Text("Harf Adeti Bulma Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => icAciHesabi() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/aciolcer.png")),
                      Column(
                        children: [
                          Text("İç Açı Hesabı Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => maasHesabi() ));
                },
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(width: 100, height: 100,
                          child: Image.asset("resimler/maas.png")),
                      Column(
                        children: [
                          Text("Maaş Hesabı Sayfası"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => internetHesabi() ));
                },
                child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 100, height: 100,
                              child: Image.asset("resimler/internet.png")),
                          Column(
                            children: [
                              Text("İnternet Hesabı Sayfası"),
                            ],
                          ),
                        ],
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
