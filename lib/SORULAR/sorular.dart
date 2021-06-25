import 'package:flutter/material.dart';
import 'package:kpssapp/SORULAR/genelyetenek.dart';
import 'package:kpssapp/SORULAR/genelkultur.dart';
import 'package:kpssapp/assets.dart';
import 'image.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          'genelyetenek': (context) => genelyetenek(),
          'genelkultur': (context) => genelkultur(),
          'assets': (context) => Assets(),
          'image': (context) => image(),
        }
    );
  }
}
class Sorular extends StatefulWidget {
  const Sorular({Key? key}) : super(key: key);

  @override
  _SorularState createState() => _SorularState();
}

class _SorularState extends State<Sorular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SORU ÇÖZ"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,),
                    child:  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => genelyetenek()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.pink,),
                      ),
                      child: Text('Genel Yetenek Soruları', style: TextStyle(
                          fontSize: 23.0, color: Colors.white,),
                      ),),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child:  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => genelkultur()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink,),
                    ),
                    child: Text('Genel Kültür Soruları', style: TextStyle(
                        fontSize: 23.0, color: Colors.white,),
                    ),),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,),
                    child:   ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Assets()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.pink),
                      ),
                      child: Text('Görsel Sorular', style: TextStyle(
                          fontSize: 23.0, color: Colors.white),
                      ),),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,),
                    child:   ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => image()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.pink),
                      ),
                      child: Text('Yardımcı Kitaplar', style: TextStyle(
                          fontSize: 23.0, color: Colors.white),
                      ),),),
                ])));
  }
}

