import '../lib/util/aes_util.dart';

void maintest() {
  final String secret = "dummy secret key";
  final String salt = "20240405102807521";
  final String paintext =
      '{"field1":"test field String","field2":2,"field3":null,"field4":4,"field5":5.05}';
  AESUtil aes256 = AESUtil(secretKey: secret, salt: salt);
  String cipherText = aes256.encryptData(paintext);
  final String expectedCipher =
      "kt0f7uwJzsunqEktgq2n4SrC15OKUftlHeamCgMTmREv6SKZ3KGuooPRk6QpMmr2vyuhaE34edsT6LpGcgSe84TQxbhEKPBa9x591R4kPQXA7qEEUzDJWqsCZ647oPQtOg==";

  String cipherText0 = aes256.encryptData(paintext);
  print('cipherText0 = $cipherText0');
  print('');

  String result1 = aes256.decryptData(cipherText0);

  print('result1 = $result1');
  print('');

  String cipherText1 = aes256.encryptData(result1);

  print('cipherText1 = $cipherText1');
  print('');
  String result2 = aes256.decryptData(cipherText1);

  print('result2 = $result2');
  print('');
}
