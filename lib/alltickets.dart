import 'main.dart';
import 'details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart';


class Mytickets extends StatefulWidget {
  const Mytickets({
    Key? key,
  }) : super(key: key);

  @override
  State<Mytickets> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Mytickets> {
  int _selectedIndex = 2;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: EdgeInsets.all(1),
            child: Text("By a Ticket",
                style: TextStyle(fontWeight: FontWeight.bold))),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            // width: isSmallScreen ? screenWidth : 600,
            // height: isSmallScreen ? null : 500,
            color: Color.fromARGB(255, 182, 186, 187),
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 20),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Color(0xFFFF9844), child: Text("k")),
                      title: Text("Kigali - Musanze"),
                      subtitle: Text("10:00h - 12:00h"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color.fromARGB(255, 255, 152, 68), width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 152, 68),
                            width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFFFF9844),
                            child: Text("k")),
                        title: Text("Kigali - Musanze"),
                        subtitle: Text("10:00h - 12:00h"),
                        trailing: Icon(Icons.arrow_forward_ios))),
                SizedBox(height: 20),
              ],
            )),
      ]),
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