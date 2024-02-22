import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class faktoriyelHesapla extends StatefulWidget {


  @override
  State<faktoriyelHesapla> createState() => _faktoriyelHesaplaState();
}



class _faktoriyelHesaplaState extends State<faktoriyelHesapla> {

  int faktoryel(int sayi){
    int sonuc = 1;
    for(int i=1;i<sayi+1;i++){
      sonuc = sonuc * i;
    }
    return sonuc;
  }

  var tfController = TextEditingController();
  int islemSonucu = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Faktöriyel Hesapla"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: tfController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Değer Giriniz",
                ),
              ),
              ElevatedButton(
                child: Text("Faktöriyelini Hesapla"),
                onPressed: (){
                  setState(() {
                    int sayi = int.parse(tfController.text);
                    islemSonucu = faktoryel(sayi);
                  });
                },
              ),
              Text("Faktöryel Sonucu : $islemSonucu"),
            ],
          ),
        ),
    );
  }
}
