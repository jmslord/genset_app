import 'package:flutter/material.dart';
import 'package:genset_app/pages/instruksi.dart';
import 'package:genset_app/pages/about.dart';
import 'package:genset_app/pages/kontak.dart';
import 'package:genset_app/pages/status.dart';
import 'package:genset_app/pages/tipe.dart';

import 'tips.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final colorBackground = const Color.fromARGB(255, 158, 23, 46);
  final colorBackground1 = const Color.fromARGB(255, 243, 154, 169);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: mounted,
          title: const Text(
            "Genset Monitoring",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: colorBackground,
          elevation: 0.5,
          actions: const [
            Image(
              image: AssetImage("assets/images/untar_logo.png"),
              color: Colors.white,
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(45.0),
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Status()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.power_settings_new,
                          size: 100,
                        ),
                        Text(
                          "Status Genset",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tipe()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.view_list_rounded,
                          size: 100,
                        ),
                        Text(
                          "Tipe Genset",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tips()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.cable,
                          size: 100,
                        ),
                        Text(
                          "Tips \nPemakaian \nGenset",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Instruksi()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.settings_suggest,
                          size: 100,
                        ),
                        Text(
                          "Instruksi \nPemakaian \nGenset",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Kontak()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.contact_phone,
                          size: 100,
                        ),
                        Text(
                          "Kontak Kami",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(110, 45),
                        foregroundColor: Colors.black,
                        backgroundColor: colorBackground1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: colorBackground, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.info_outline,
                          size: 100,
                        ),
                        Text(
                          "Tentang Kami",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
