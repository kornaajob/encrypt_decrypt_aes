import 'package:flutter/material.dart';
import 'package:test_encrypt_decrypt_flutter/page/encryp_decrypt_page.dart';

void main() => runApp(const EncryptDecryptApp());

class EncryptDecryptApp extends StatelessWidget {
  const EncryptDecryptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EncryptDecryptPage(),
    );
  }
}
