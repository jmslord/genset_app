import 'package:flutter/material.dart';

class Kontak extends StatelessWidget {
  const Kontak({Key? key}) : super(key: key);
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: const Text(
                "Kontak Kami",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text(
              "Jam Kerja kami: 09.00 - 16.00",
              style: TextStyle(fontSize: 15),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: colorBackground)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.mail,
                    size: 50,
                  ),
                  Text(
                    "gensetmonitoringuntar@gmail.com",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
