import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

class dereceDonusum extends StatefulWidget {


  @override
  State<dereceDonusum> createState() => _dereceDonusumState();
}

class _dereceDonusumState extends State<dereceDonusum> {

  var tfController = TextEditingController();
  var alinanVeri = "";
  double f=0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Derece Dönüşüm"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Derece : $f Fahrenheit"),
            TextField(
              controller: tfController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Yazınız",
              ),
            ),
            ElevatedButton(
              child: Text("Dönüştür"),
              onPressed: (){
                setState(() {
                double alinanVeri = double.parse(tfController.text);
                f = alinanVeri * 1.8 + 32;
                });
              },
            ),
          ],
        ),
      ),
    );

  }
}
