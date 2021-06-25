import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DosyaIndirme extends StatefulWidget {
  @override
  _DosyaIndirmeState createState() => _DosyaIndirmeState();
}

class _DosyaIndirmeState extends State<DosyaIndirme> {
  String _filePath = "";

  Future<String> get _localDevicePath async {
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future<File> _localFile({String? path, String? type}) async {
    String _path = await _localDevicePath;

    var _newPath = await Directory("$_path/$path").create();
    return File("${_newPath.path}/dosya.$type");
  }

  Future _downloadSamplePDF() async {
    final _response = await http.get(Uri.parse(
        "https://www.memurlar.net/common/news/documents/894922/kilavuz26032020.pdf"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(path: "pdfs", type: "pdf");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF İNDİR"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.file_download),
              label: Text("Kpss Tercih Kılavuzunu İndir"),
              onPressed: () {
                _downloadSamplePDF();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_filePath),
            ),
            TextButton.icon(
                icon: Icon(Icons.tv),
                label: Text("İndirilen PDF Göster"),
                onPressed: () async {
                  final _openFile = await OpenFile.open(_filePath);
                  print(_openFile);
                })
          ],
        ),
      ),
    );
  }}

