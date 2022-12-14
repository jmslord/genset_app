import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Status extends StatefulWidget {
  Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final colorBackground = const Color.fromARGB(255, 158, 23, 46);
  final colorBackground1 = const Color.fromARGB(255, 243, 154, 169);
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Wait();
    _getTime();
    _getTime2();
  }

  Future<void> Wait() async {
    await AndroidAlarmManager.initialize();
    await AwesomeNotifications().initialize('resource://drawable/ic_launcher', [
      // notification icon
      NotificationChannel(
        channelGroupKey: 'basic_test',
        channelKey: 'basic',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        channelShowBadge: true,
        importance: NotificationImportance.High,
        enableVibration: true,
      ),

      NotificationChannel(
          channelGroupKey: 'image_test',
          channelKey: 'image',
          channelName: 'image notifications',
          channelDescription: 'Notification channel for image tests',
          defaultColor: Colors.redAccent,
          ledColor: Colors.white,
          channelShowBadge: true,
          importance: NotificationImportance.High)

      //add more notification type with different configuration
    ]);
  }

  DateTime _currentTime = DateTime(0);
  DateTime _offTime = DateTime(0);
  DateTime _currentTime2 = DateTime(0);
  DateTime _offTime2 = DateTime(0);
  DateTime dateTime = DateTime(0);
  DateTime dateTime2 = DateTime(0);
  DateTime dateTimeOn2 = DateTime(0);
  DateTime dateTimeOff2 = DateTime(0);
  bool isActive = true;
  bool isActive2 = true;
  final int _oneShotTaskId = 1;
  final int _oneShotTaskId2 = 2;

  Future<void> _getTime() async {
    final prefs = await SharedPreferences.getInstance();
    //prefs.clear();
    setState(() {
      int? timestamp1 = prefs.getInt('onKey1');
      int? timestamp3 = prefs.getInt('offKey1');
      if (timestamp1 != null) {
        dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp1);
      }
      if (timestamp3 != null) {
        dateTime2 = DateTime.fromMillisecondsSinceEpoch(timestamp3);
      }
      debugPrint('dateTime:$dateTime');
      isActive = prefs.getBool('myActive') ?? true;
    });
  }

  Future<void> _getTime2() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      int? timestamp4 = prefs.getInt('onKey2');
      int? timestamp6 = prefs.getInt('offKey2');
      if (timestamp4 != null) {
        dateTimeOn2 = DateTime.fromMillisecondsSinceEpoch(timestamp4);
      }
      if (timestamp6 != null) {
        dateTimeOff2 = DateTime.fromMillisecondsSinceEpoch(timestamp6);
      }
      debugPrint('dateTime2:$dateTimeOn2');
      isActive2 = prefs.getBool('myActive2') ?? true;
    });
  }

  Future<void> _updateTime() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      setButton();
      _currentTime = DateTime.now();
      int timestamp = DateTime.now().millisecondsSinceEpoch;
      prefs.setInt('onKey1', timestamp);
      debugPrint('onKey1:$timestamp');
      _getTime();
    });
    await AndroidAlarmManager.oneShot(
        const Duration(hours: 8), _oneShotTaskId, _oneShotTaskCallback);
  }

  Future<void> _updateTimeOn2() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      setButton2();
      _currentTime2 = DateTime.now();
      int timestamp5 = DateTime.now().millisecondsSinceEpoch;
      prefs.setInt('onKey2', timestamp5);
      debugPrint('onKey2:$timestamp5');
      _getTime2();
    });
    await AndroidAlarmManager.oneShot(
        const Duration(hours: 8), _oneShotTaskId2, _oneShotTaskCallback2);
  }

  Future<void> _updateOffTime() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      setButton();
      _offTime = DateTime.now();
      int timestamp2 = DateTime.now().millisecondsSinceEpoch;
      prefs.setInt('offKey1', timestamp2);
      debugPrint('offKey1:$timestamp2');
      _getTime();
    });
    await AndroidAlarmManager.cancel(1);
  }

  Future<void> _updateOffTime2() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      setButton2();
      _offTime2 = DateTime.now();
      int timestamp5 = DateTime.now().millisecondsSinceEpoch;
      prefs.setInt('offKey2', timestamp5);
      debugPrint('offKey2:$timestamp5');
      _getTime2();
    });
    await AndroidAlarmManager.cancel(2);
  }

  static Future<void> _oneShotTaskCallback() async {
    bool isallowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isallowed) {
      //no permission of local notification
      AwesomeNotifications().requestPermissionToSendNotifications();
    } else {
      //show notification
      AwesomeNotifications().createNotification(
          content: NotificationContent(
        //simgple notification
        id: 123,
        channelKey: 'basic', //set configuration wuth key "basic"
        title: 'Genset 1 Melewati 8 Jam',
        body: 'Segera matikan genset',
      ));
    }
  }

  static Future<void> _oneShotTaskCallback2() async {
    bool isallowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isallowed) {
      //no permission of local notification
      AwesomeNotifications().requestPermissionToSendNotifications();
    } else {
      //show notification
      AwesomeNotifications().createNotification(
          content: NotificationContent(
        //simgple notification
        id: 124,
        channelKey: 'basic', //set configuration wuth key "basic"
        title: 'Genset 2 Melewati 8 Jam',
        body: 'Segera matikan genset',
      ));
    }
  }

  Future<void> setButton() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (isActive) {
        isActive = false;
        prefs.setBool('myActive', false);
      } else {
        isActive = true;
        prefs.setBool('myActive', true);
      }
    });
  }

  Future<void> setButton2() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (isActive2) {
        isActive2 = false;
        prefs.setBool('myActive2', false);
      } else {
        isActive2 = true;
        prefs.setBool('myActive2', true);
      }
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Status Genset",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Genset 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: isActive
                                  ? () {
                                      _updateTime();
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorBackground,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.power_settings_new,
                                    size: 100,
                                  ),
                                  Text(
                                    "ON",
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              )),
                          Text(
                            '${dateTime.hour}:${dateTime.minute}',
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: !isActive
                                  ? () {
                                      _updateOffTime();
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorBackground,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.power_settings_new,
                                    size: 100,
                                  ),
                                  Text(
                                    "OFF",
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              )),
                          Text(
                            '${dateTime2.hour}:${dateTime2.minute}',
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Genset 2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: isActive2
                                  ? () {
                                      _updateTimeOn2();
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorBackground,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.power_settings_new,
                                    size: 100,
                                  ),
                                  Text(
                                    "ON",
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              )),
                          Text(
                            '${dateTimeOn2.hour}:${dateTimeOn2.minute}',
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                              onPressed: !isActive2
                                  ? () {
                                      _updateOffTime2();
                                    }
                                  : null,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorBackground,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.power_settings_new,
                                    size: 100,
                                  ),
                                  Text(
                                    "OFF",
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              )),
                          Text(
                            '${dateTimeOff2.hour}:${dateTimeOff2.minute}',
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: const [
                  Text("Alarm akan berbunyi setelah 8 jam"),
                  Text("Klik On saat menyalakan genset"),
                  Text("Klik Off saat mematikan genset/ timer"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
