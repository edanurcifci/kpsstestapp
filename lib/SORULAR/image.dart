import 'package:flutter/material.dart';

void main() => runApp(image());
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KPSS Soru Bankası Önerisi"),
      ),
      body:Center(
        child: new GestureDetector(
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8X_Gv5RuGOY9YMqI-lG2CysfNRhYkcu5m1A&usqp=CAU"),
            onLongPress: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  new SnackBar(content: new Text('Yediklim yayın evinin modüler seti 140 tl.')));
            }
        ),),);
  }
}