import 'package:flutter/material.dart';

class Tipe extends StatelessWidget {
  const Tipe({Key? key}) : super(key: key);
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
      body: ListView(padding: const EdgeInsets.all(20.0), children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Tipe Genset",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Image(
                    image: AssetImage("assets/images/genset_tgr5000.jpg"),
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                  Text(
                    "Genset TGR5000",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Penjelasan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Fuel Tank Capacity : 15 Liters\nContinuous Operating Time : 10 Hours\nOil Capacity : 0.6 Liters\nAlternator : Copper\nRated Voltage : 220V\nRated Frequency : 50 Hz\nEngine Type : 170 F, 4 Strokes\nRated Output : 2,800 Watt\nMax. Output Power : 3000 Watt\nHP : 7 HP\nPhase : 1 Ph\nRated RPM : 3,000 RPM\nDimension : 65 x 55 x 50 cm"),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
