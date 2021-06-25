import 'package:kpssapp/sorular.dart';

class TestVeri {
  int _soruIndex = 0;
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Verilen bir sayının 5 ile tam olarak bölünebilmesi için 0 veya 5 olması gerekir. ",
        soruYaniti: true),
    Soru(
        soruMetni: "Betimleyici anlatımda olay yoktur. ",
        soruYaniti: true),
    Soru(
        soruMetni: "Zamir ismin yerini tutan sözcüklerdir. ",
        soruYaniti: true),
    Soru(
        soruMetni: "Herkez yazılışı doğrudur. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Beşgenlerin iç açıları toplamı 360 derecedir. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Saatteki hızları sırasıyla 40 km ve 50 km olan iki araç aynı anda zıt yönde hareket ettikten 4 saat sonra aralarındaki mesafe 360 km'dir. ",
        soruYaniti: true),
    Soru(
        soruMetni: "Sıfırdan büyük sayıların oluşturduğu kümeye negatif tam sayılar kümesi denir.",
        soruYaniti: false),
    Soru(
        soruMetni: "Saat yazılımda doğru olan gösterim 21.00'dir.",
        soruYaniti: true),
    Soru(
        soruMetni: "İşaret sıfatı (kaçıncı) sorusuna cevap verir.",
        soruYaniti: false),
    Soru(
        soruMetni: "Geziyor kelimesi basit yapılı bir kelimedir. ",
        soruYaniti: true),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}