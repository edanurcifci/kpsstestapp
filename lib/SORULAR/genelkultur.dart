import 'package:kpssapp/SORULAR/test1.dart';
import 'package:flutter/material.dart';
import 'package:kpssapp/icon.dart';

class genelkultur extends StatefulWidget {
  @override
  _genelkulturState createState() => _genelkulturState();
}

class _genelkulturState extends State<genelkultur> {
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();
  int dogrular = 0;

  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (_) => new AlertDialog(
            title: new Text("Tebrikler testi bitirdiniz..", style: TextStyle(fontSize: 20.0)
            ),
            content: new Text("Doğru Sayınız : $dogrular"),
            actions: <Widget>[
              TextButton(
                child: Text('Testi Bitir'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    test_1.testiSifirla();
                    secimler = [];
                    dogrular = 0;
                  });
                },
              )
            ],
          ));
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenButon
            ? secimler.add(kDogruIkonu)
            : secimler.add(kYanlisIkonu);

        test_1.getSoruYaniti() == secilenButon ? dogrular++ : dogrular;
        test_1.sonrakiSoru();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(spacing: 5, runSpacing: 5, children: secimler),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,),
                      ),
                      child: Icon(
                        Icons.thumb_down,
                        size: 40.0,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        butonFonksiyonu(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    // ignore: file_names
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,),
                        ),
                        child: Icon(
                          Icons.thumb_up,
                          size: 40.0,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          butonFonksiyonu(true);
                        }),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  } }