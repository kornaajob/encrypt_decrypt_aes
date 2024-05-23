import '../lib/util/aes_util.dart';

void main(List<String> arguments) {
  final String secret = "dummy secret key";
  final String salt = "20240405102807521";
  final AESUtil aes256 = AESUtil(secretKey: secret, salt: salt);
  String cipherText = aes256.encryptData(
      '{"field1":"test field String","field2":2,"field3":null,"field4":4,"field5":5.05} ');
  print("");
  print("cipherText: $cipherText");
  //String decryptedText = aes256.decryptData(cipherText);
  String cipherTextJAVA =
      "kt0f7uwJzsunqEktgq2n4SrC15OKUftlHeamCgMTmREv6SKZ3KGuooPRk6QpMmr2vyuhaE34edsT6LpGcgSe84TQxbhEKPBa9x591R4kPQVgdPnAtisUdHXSVaw814gE";
  print("");
  print("cipherTextJAVA: $cipherTextJAVA");
  String decryptedTextJAVA = aes256.decryptData(cipherTextJAVA);
  print("");
  print("decryptedText from JAVA : $decryptedTextJAVA");
}
