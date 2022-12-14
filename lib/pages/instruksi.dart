import 'package:flutter/material.dart';

class Instruksi extends StatelessWidget {
  const Instruksi({Key? key}) : super(key: key);

  final colorBackground = const Color.fromARGB(255, 158, 23, 46);
  final colorBackground1 = const Color.fromARGB(255, 243, 154, 169);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Genset Monitoring"),
            ],
          ),
          backgroundColor: colorBackground,
          elevation: 0.5,
        ),
        body: PageView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Instruksi",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Tahap 1",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/kabel_aki.png"),
                          height: 150,
                        ),
                        Text("Kabel AKi"),
                        Image(
                          image: AssetImage("assets/images/colokan.png"),
                          height: 150,
                        ),
                        Text("Circuit Breaker")
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Penjelasan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Tahap pertama pastikan \n1. Kabel aki terpasang  \n2. Kabel sudah dicolokan ke circuit breaker \n3. Tuas tutup bensin harus di buka"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Instruksi",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Tahap 2",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/choke_lever.png"),
                          height: 200,
                        ),
                        Text("Choke Lever"),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Penjelasan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Lalu nyalakan choke ke sebelah kiri"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Instruksi",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Tahap 3",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/tombol.png"),
                          height: 200,
                        ),
                        Text("Tombol"),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Penjelasan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Setelah menyalakan choke, tombol ON / OFF ditekan ke atas menjadi ON"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Instruksi",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Tahap 4",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/off_choke.png"),
                          height: 200,
                        ),
                        Text("Off Choke"),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Penjelasan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Terakhir jangan lupa matikan Choke nya ke kanan kembali seperti gambar diatas"),
                      Text("Genset siap digunakan"),
                      Text(
                          "Jangan lupa untuk mengecek box panel dan MCB jika mengalami padam listrik"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
