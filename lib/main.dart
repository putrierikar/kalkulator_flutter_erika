import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  int bil1 = 0, bil2 = 0, sum = 0;

  void kali() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1 * bil2;
    });
  }

  void bagi() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1 ~/ bil2;
    });
  }

  void kurang() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1 - bil2;
    });
  }

  void tambah() {
    setState(() {
      bil1 = int.parse(t1.text);
      bil2 = int.parse(t2.text);
      sum = bil1 + bil2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Text(
                "Hasil Perhitungan : $sum ",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                width: 328,
                height: 40,
                child: TextField(
                  controller: t1,
                  decoration: InputDecoration(
                      fillColor: Colors.deepPurple[50],
                      filled: true,
                      labelText: "Input pertama",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                width: 328,
                height: 40,
                child: TextField(
                  controller: t2,
                  decoration: InputDecoration(
                    fillColor: Colors.deepPurple[50],
                    filled: true,
                    labelText: "Input Kedua",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      minimumSize: const Size(138, 50),
                    ),
                    onPressed: () {
                      kali();
                      t1.clear();
                      t2.clear();
                    },
                    child: const Text("X")),
                const SizedBox(
                  height: 42,
                  width: 42,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      bagi();
                      t1.clear();
                      t2.clear();
                    },
                    child: const Text("/")),
              ],
            ),
            const SizedBox(
              height: 8,
              width: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      tambah();
                      t1.clear();
                      t2.clear();
                    },
                    child: const Text("+")),
                const SizedBox(
                  height: 42,
                  width: 42,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      kurang();
                      t1.clear();
                      t2.clear();
                    },
                    child: const Text("-")),
              ],
            )
          ],
        ),
      ),
    );
  }
}