import 'package:kpssapp/hakkinda.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kpssapp/BarChartSample1.dart';
import 'package:kpssapp/DosyaIslemleri.dart';
import 'package:kpssapp/SQLİTE/page/notes_page.dart';
import 'package:kpssapp/API/views.dart';
import 'SORULAR/sorular.dart';
import 'dosyaIndirme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '2021 KPSS',
        theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.deepPurpleAccent,
          accentColor:Colors.purpleAccent,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          'hakkinda': (context) => Hakkinda(),
          'DosyaIslemleri': (context) => DosyaIslemleri(
            kayitislemi: KayitIslemleri(),),
          'dosyaIndirme': (context) => DosyaIndirme(),
          'BarChartSample1': (context) => BarChartSample1(),
          'sorular': (context) => Sorular(),
          'notes_page': (context) => Notes_page(),
          'Views': (context) => Views(),
        }
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('KPSS TESTİ',
                  style: TextStyle(fontSize: 60.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child:   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sorular()),
                      );
                      },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink),
                    ),
                    child: Text('SORU ÇÖZ', style: TextStyle(
                        fontSize: 22.0, color: Colors.white),
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,),
            child:   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DosyaIndirme()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlue),
                    ),
                    child: Text('PDF İNDİR', style: TextStyle(
                        fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child:   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notes_page()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.purpleAccent),
                    ),
                    child: Text('YAPILACAKLAR', style: TextStyle(
                        fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child:   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DosyaIslemleri(
                            kayitislemi: KayitIslemleri(),),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown),
                    ),
                    child: Text('DOSYAYA KAYDET', style: TextStyle(
                        fontSize: 22.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Views()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.yellow,),
                    ),
                    child: Text('SÖZLÜK',
                      style: TextStyle(
                        fontSize: 23.0, color: Colors.white,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child:  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BarChartSample1()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green),
                    ),
                    child: Text('EN ÇOK ATANANLAR', style: TextStyle(
                        fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
                 ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hakkinda()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange,),
                    ),
                    child: Text('HAKKINDA', style: TextStyle(
                        fontSize: 23.0, color: Colors.white),
                    ),
                  ),
              ]
          ),
        )
    );
  }
}
