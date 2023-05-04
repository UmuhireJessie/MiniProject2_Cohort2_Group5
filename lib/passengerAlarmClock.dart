import 'main.dart';
import 'details.dart';
import 'alltickets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class PassengerAlarm extends StatefulWidget {
  const PassengerAlarm({
    Key? key,
  }) : super(key: key);

  @override
  State<PassengerAlarm> createState() => _PassengerAlarmPage();
}

class _PassengerAlarmPage extends State<PassengerAlarm> {
  int _selectedIndex = 1;

  List<Widget> _pages = [
    MyHomePage(),
    DetailsPage(),
    Mytickets(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
    );
  }

  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        Container(
          // color: Color.fromRGBO(255, 77, 1, 0.53),
          width: 297,
          height: 192,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/insung-yoon-w2JtIQQXoRU-unsplash.jpg'),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 20),
        Text(
            "Set an alarm for the remainder when the bus is almost to pull over",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            )),
        Center(
            child: Column(children: <Widget>[
          SizedBox(height: 20),
          Text('Set Alarm',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 77, 1, 0.53))),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                height: 40,
                width: 60,
                child: Center(
                    child: TextField(
                  controller: hourController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Hour'),
                ))),
            SizedBox(width: 20),
            Container(
                height: 40,
                width: 60,
                child: Center(
                    child: TextField(
                  controller: minuteController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Min'),
                )))
          ]),
        ])),
        Container(
          margin: const EdgeInsets.all(25),
          child: TextButton(
            child: const Text('OK',
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromRGBO(255, 77, 1, 0.53))),
            onPressed: () {
              int hour;
              int minutes;
              hour = int.parse(hourController.text);
              minutes = int.parse(minuteController.text);
              FlutterAlarmClock.createAlarm(hour, minutes);
            },
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              FlutterAlarmClock.showAlarms();
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(171, 189, 197, 1),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.alarm, size: 28),
              Text(
                'Show Alarms',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Color.fromRGBO(255, 77, 1, 0.53)),
              ),
            ])),
      ])),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Buy Ticket',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'My Ticket',
            tooltip: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(255, 98, 1, 0.53),
        onTap: _onItemTapped,
      ),
    );
  }
}
