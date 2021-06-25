import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("HAKKINDA"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006034 numaralı öğrenci Edanur ÇİFCİ tarafından 25 Haziran 2021 günü yapılmıştır.',
                textAlign: TextAlign.center,  style: TextStyle( fontSize: 19, color: Colors.deepOrangeAccent,
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Github kodları için çift tıkla.'),
                      onDoubleTap: () {
                          launch('https://github.com/edanurcifci/');
                      }
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
