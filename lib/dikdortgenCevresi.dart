import 'package:flutter/material.dart';

class dikdortgenCevresi extends StatefulWidget {

  @override
  State<dikdortgenCevresi> createState() => _dikdortgenCevresiState();
}

class _dikdortgenCevresiState extends State<dikdortgenCevresi> {

  var tfController1 = TextEditingController();
  var tfController2 = TextEditingController();
  String kisaKenar = "";
  String uzunKenar = "";
  int sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Dikdörtgen Çevresi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Kısa Kenar Giriniz ",
              ),
            ),
            TextField(
              controller: tfController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Uzun Kenar Giriniz ",
              ),
            ),
            ElevatedButton(
              child: Text("Hesapla"),
              onPressed: (){
                setState(() {
                  int kisaKenar = int.parse(tfController1.text);
                  int uzunKenar = int.parse(tfController2.text);
                  sonuc = (kisaKenar + uzunKenar)*2;
                });
              },
            ),
            Text("Dikdörtgen Çevresi : $sonuc "),
          ],
        ),
      ),
    );
  }
}
