import 'package:flutter/material.dart';

class internetHesabi extends StatefulWidget {
  const internetHesabi({Key? key}) : super(key: key);

  @override
  State<internetHesabi> createState() => _internetHesabiState();
}


int gbHesabi(int internet){
  int ekstraGb = 4;
  int kota = 0;
  int internetUcreti = 0;


  if(internet<=50){
    internetUcreti = 100;
  }else if (internet>50){
    kota = ekstraGb*(internet-50);
    internetUcreti = kota + 100;
  }
  return internetUcreti;
}




var tfController = TextEditingController();
int ucret = 0;





class _internetHesabiState extends State<internetHesabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("İnternet Ücreti Hesaplama"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Kullandığınız GB Yazınız",
              ),
            ),
            ElevatedButton(
              child: Text("Ücret Hesapla"),
              onPressed: (){
                setState(() {
                  int internet = int.parse(tfController.text);
                  ucret = gbHesabi(internet);
                });
              },
            ),
            Text("İnternet Ücreti : $ucret"),
          ],
        ),
      ),
    );
  }
}
