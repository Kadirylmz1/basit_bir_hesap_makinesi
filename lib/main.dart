// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makineasi",
      home: iskele(),
    );
  }
}

class iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basit Bir Hesap Makinesi"),
      ),
      body: const anaEkran(),
    );
  }
}

class anaEkran extends StatefulWidget {
  const anaEkran({super.key});

  @override
  State<anaEkran> createState() => _anaEkranState();
}

class _anaEkranState extends State<anaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(sonuc.toString()),
            TextFormField(
              controller: t1,
            ),
            TextFormField(
              controller: t2,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: sayiTopla,
                  child: const Text("+"),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: sayiCikar,
                  child: const Text("-"),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: sayiCarp,
                  child: const Text("*"),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: sayiBol,
                  child: const Text("/"),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
