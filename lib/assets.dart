import 'package:flutter/material.dart';

void main() => runApp(Assets());
class Assets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GÖRSEL SORULAR"),
      ),
      body:SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("assets/resimler/soru1.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Hatay')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru2.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Zonguldak')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru3.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Muş')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru4.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap İstanbul')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru5.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Zonguldak')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru6.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Kastamonu')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru7.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Cevap Artuklular')));
                      }
                  ),
                ),
              ),
              Image(image: AssetImage("assets/resimler/soru8.jpg")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: new GestureDetector(
                      child: new Text('Karar ver ve sonrasında cevap için bir kez tıkla.. İyi düşün!!'),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            new SnackBar(content: new Text('Yakup Yay')));
                      }
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
