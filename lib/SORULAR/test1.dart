import 'package:kpssapp/sorular.dart';

class TestVeri {
  int _soruIndex = 0;
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "İflas Mahkemeleri Türk yargı örgütündeki mahkemelerden birisidir. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Osmanlı Devletinde bağımsızlık elde etmek için isyan eden ulus yunanlılardır. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Balıkesir-Alaşehir Kongrelerinde güney cephesi kurulmuştur. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Osmanlı Devletinde gayrimüslim ve müslümanlar arasında tam olarak eşitliğin sağlandığı dönem Islahat Fermanıdır. ",
        soruYaniti: true),
    Soru(
        soruMetni: "En verimli toprak Çernezyom'dur ",
        soruYaniti: true),
    Soru(
        soruMetni: "Ege Bölgesinde dağlar kıyıya paraleldir. ",
        soruYaniti: false),
    Soru(
        soruMetni: "Türkiye Kuzey Yarım Kürede'dir.",
        soruYaniti: true),
    Soru(
        soruMetni: "Kişiliğin başlangıcı sağ ve tam doğum ile başlar.",
        soruYaniti: true),
    Soru(
        soruMetni: "Bir yerde Büyükşehir Belediyesi kurulabilmesi için nüfusun 10.000 olması gerekir.",
        soruYaniti: false),
    Soru(
        soruMetni: "Birleşmiş Milletler Genel Merkezi New York'tur. ",
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