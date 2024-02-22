import 'package:flutter/material.dart';

class harfSayisi extends StatefulWidget {

  @override
  State<harfSayisi> createState() => _harfSayisiState();
}

class _harfSayisiState extends State<harfSayisi> {

  int harfBulma (String kelime, harf) {
    int sayac = 0;
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i] == harf) {
        sayac = sayac + 1;
      }
    }
    return sayac;
  }

  var tfController1 = TextEditingController();
  var tfController2 = TextEditingController();
  int harfAdeti = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Harf Sayısı Bulma"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfController1,
              decoration: InputDecoration(
                hintText: "Kelime Yazınız",
              ),
            ),

            TextField(
              controller: tfController2,
              decoration: InputDecoration(
                hintText: "Harf Yazınız",
              ),
            ),
            ElevatedButton(
              child: Text("Harf Sayısını Bul"),
              onPressed: (){
                setState(() {
                  harfAdeti = harfBulma(tfController1.text, tfController2.text);
                });
              },
            ),
            Text("Kelime İçindeki Harf Adeti : $harfAdeti "),
          ],
        ),
      ),
    );
  }
}
