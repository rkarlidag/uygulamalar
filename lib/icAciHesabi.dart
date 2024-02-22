import 'package:flutter/material.dart';

class icAciHesabi extends StatefulWidget {
  const icAciHesabi({Key? key}) : super(key: key);

  @override
  State<icAciHesabi> createState() => _icAciHesabiState();
}

class _icAciHesabiState extends State<icAciHesabi> {

  int sonuc = 0;
  var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("İç Açılar Toplamı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Kenar Sayısı Giriniz",
              ),
            ),

            ElevatedButton(
              child: Text("Hesapla"),
              onPressed: (){
                setState(() {
                  int n = int.parse(tfController.text);
                  sonuc = (n-2) * 180;
                });
              },
            ),

            Text("İç Açılar Toplamı : $sonuc "),
          ],
        ),
      ),
    );

  }
}
