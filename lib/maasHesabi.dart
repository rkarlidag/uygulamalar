import 'package:flutter/material.dart';

class maasHesabi extends StatefulWidget {
  const maasHesabi({Key? key}) : super(key: key);

  @override
  State<maasHesabi> createState() => _maasHesabiState();
}

class _maasHesabiState extends State<maasHesabi> {

  int maasHesapla(int gunSayisi){
    int mesaiSaati = 0;
    int saatUcreti = 10;
    int mesaiUcreti = 20;
    int gunlukMaas = 0;

    if(mesaiSaati<=160){
      mesaiSaati = 8*gunSayisi;
      gunlukMaas = saatUcreti*mesaiSaati;
    }if(mesaiSaati>160){
      mesaiSaati = 8*gunSayisi;
      gunlukMaas = (mesaiUcreti*(mesaiSaati-160))+(mesaiSaati*saatUcreti);
    }
    return gunlukMaas;
  }




  var tfController = TextEditingController();
  int para = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Maaş Hesaplama"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Çalıştığınız gün sayısını yazınız",
              ),
            ),
            ElevatedButton(
              child: Text("Maaş Hesapla"),
              onPressed: (){
                setState(() {
                  int gunSayisi = int.parse(tfController.text);
                  para = maasHesapla(gunSayisi);
                });
              },
            ),
            Text("Maaş Toplamı : $para"),
          ],
        ),
      ),
    );
  }
}
