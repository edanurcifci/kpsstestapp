import 'dart:async';
import 'package:kpssapp/API/services.dart';
import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  @override
  _ViewsState createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  TextEditingController textEditingController = TextEditingController();
  late Stream _stream;

  @override
  void initState() {
    super.initState();
    streamController = StreamController();
    _stream = streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          title: Text("SÖZLÜK"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 12, bottom: 11.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.black),
                  child: TextFormField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: "Bir kelime ara",
                      contentPadding: const EdgeInsets.only(left: 24.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  searchText(textEditingController.text);
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: StreamBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            dynamic data = snapshot.data;
            if (data == null) {
              return Center(
                child: Text(""),
              );
            }
            if (data == "waiting") {
              return Center(
                child: CircularProgressIndicator(),
              );
            } // output
            return ListView.builder(
              itemCount: data["definitions"].length,
              itemBuilder: (BuildContext context, int index) {
                String image_url = data["definitions"][index]["image_url"];
                String type = data["definitions"][index]["type"];
                String definition = data["definitions"][index]["definition"];
                String example = data["definitions"][index]["example"];
                return ListBody(
                  children: [
                    Container(
                      color: Colors.yellow[300],
                      child: ListTile(
                        leading: image_url == null
                            ? null
                            : CircleAvatar(
                          backgroundImage: NetworkImage(image_url),
                        ),
                        title: Text(textEditingController.text.trim() +
                            "(" +
                            type +
                            ")"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(definition),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          example != null ? example : "Not yet an example"),
                    )
                  ],
                );
              },
            );
          },
          stream: _stream,
        ),
      ),
    );
  }
}