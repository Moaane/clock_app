import 'package:clock_app/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';
    print(timezoneString);

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Image.asset(
                      'assets/clock_icon.png',
                      scale: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                    ),
                    Text(
                      'Clock',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Image.asset(
                      'assets/alarm_icon.png',
                      scale: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                    ),
                    Text(
                      'Alarm',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Image.asset(
                      'assets/timer_icon.png',
                      scale: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                    ),
                    Text(
                      'Timer',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Image.asset(
                      'assets/stopwatch_icon.png',
                      scale: 1.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                    ),
                    Text(
                      'Stopwatch',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 23, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Clock',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 24)),
                  SizedBox(
                    height: 32,
                  ),
                  Text(formattedTime,
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 64)),
                  Text(formattedDate,
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 20)),
                  ClockView(),
                  Text('Timezone',
                      style: TextStyle(
                          fontFamily: 'avenir',
                          color: Colors.white,
                          fontSize: 24)),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.language,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text('UTC' + offsetSign + timezoneString,
                          style: TextStyle(
                              fontFamily: 'avenir',
                              color: Colors.white,
                              fontSize: 14)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
