import 'package:currency/ccpp.dart';
import 'package:currency/pages/cc_materialpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CcMaterialpage(),
    );
  }
}

class Mycupertinoapp extends StatelessWidget {
  const Mycupertinoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home:CurrencyconverterCupertinoApp(),
    );
  }
}