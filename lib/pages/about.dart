import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Tentang Kami",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Program Genset Monitoring merupakan program PKM dari Untar yang bekerjasama dengan Fakultas Teknologi Informasi dan Teknik "),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Ketua Tim",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FittedBox(
                              child: Text(
                                  "Viny Christanti Mawardi S.Kom., M.Kom."),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Anggota",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FittedBox(
                              child: Column(
                                children: const [
                                  Text("Ghrisya Yohana Margaretha"),
                                  Text("James Sugiarto Effendy")
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
