import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);
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
                    "Tips",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Geser ke Kiri",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image:
                              AssetImage("assets/images/pengisian_bensin.png"),
                          height: 250,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("Pengisian Bensin")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Penjelasan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Sebelum menyalakan genset, harus diperhatikan apakah bensin sudah terisi atau belum. Minimal pengisian awal 4 liter."),
                      ],
                    ),
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
                    "Tips",
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image:
                              AssetImage("assets/images/indikator_bensin.png"),
                          height: 250,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("Indikator Bensin")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Penjelasan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Gambar diatas dapat melihat bensin di dalam genset tersisa berapa liter."),
                      ],
                    ),
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
                    "Tips",
                    style: TextStyle(fontSize: 30),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/tuas.png"),
                          height: 250,
                          fit: BoxFit.fitHeight,
                        ),
                        Text("Tuas Bensin")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Penjelasan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Ketika menyalakan genset tuas bensin di buka, ketika tidak menyalakan genset jangan lupa menutup tuas bensin."),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
