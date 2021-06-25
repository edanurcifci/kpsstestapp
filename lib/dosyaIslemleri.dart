import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class KayitIslemleri{

  Future<String> get dosyaYolu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }
  Future<File> get yerelDosya async {
    final yol = await dosyaYolu;
    return File('$yol/yeniDosya.txt');
  }
  Future<String> dosyaOku () async {
    try {
      final dosya = await yerelDosya;
      String icerik = await dosya.readAsString();
      return icerik;
    } catch (h) {
      return "dosya okunurken hata olustu: $h";
    }
  }
  Future<File> dosyaYaz(String gicerik) async {
    final dosya = await yerelDosya;
    return dosya.writeAsString("$gicerik");
  }
}
class DosyaIslemleri extends StatefulWidget {
  final KayitIslemleri kayitislemi;

  const DosyaIslemleri({Key? key, required this.kayitislemi}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DosyaState();
}
  class DosyaState extends State<DosyaIslemleri> {
  final yaziCtrl = TextEditingController();
  String veri = "";
  Future<File> veriKaydet() async {
    setState(() {
      veri  = yaziCtrl.text;
    });
    return widget.kayitislemi.dosyaYaz(veri);
  }

  @override
  void initState() {
    super.initState();
  }
  void veriOku(){
    widget.kayitislemi.dosyaOku().then((String deger) {
      setState (){
        veri = deger;
      };
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("DOSYAYA KAYDET",),),
      body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       TextField(
         decoration: InputDecoration(
           hintText: "dosyaya yazmak istediğiniz verileri buraya yazınız.",
         ),
         controller: yaziCtrl,
      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
              child: Padding(
              padding: EdgeInsets.all(10.0),
              child:   ElevatedButton(
              onPressed: veriOku,
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
              Colors.brown),
              ),
              child: Text('Oku', style: TextStyle(
              fontSize: 25.0, color: Colors.white),
                  ),
                  ),),),
                Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child:   ElevatedButton(
                    onPressed: veriKaydet,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown),
                    ),
                    child: Text('Kaydet', style: TextStyle(
                        fontSize: 25.0, color: Colors.white),
                ),
              ),
              ),),],),
              Expanded(
              child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("$veri")
              ),)]));
  }
}
