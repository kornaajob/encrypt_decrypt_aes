import '../lib/util/aes_util.dart';
import 'package:test/test.dart';

void m() {
  final String secret = "dummy secret key";
  final String salt = "20240405102807521";
  final AESUtil aes256 = AESUtil(secretKey: secret, salt: salt);
  String cipherText = aes256.encryptData(
      '{"field1":"test field String","field2":2,"field3":null,"field4":4,"field5":5.05} ');
  final String expectedCipher =
      "kt0f7uwJzsunqEktgq2n4SrC15OKUftlHeamCgMTmREv6SKZ3KGuooPRk6QpMmr2vyuhaE34edsT6LpGcgSe84TQxbhEKPBa9x591R4kPQXA7qEEUzDJWqsCZ647oPQtOg==";
  test('encrypt', () {
    expect(cipherText, expectedCipher);
  });
}
