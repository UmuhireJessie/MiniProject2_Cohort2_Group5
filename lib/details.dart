import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buyticket.dart';
import 'main.dart';
import 'alltickets.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool _obscureText = true;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border(bottom: BorderSide(width: 1, color: Color(0xFFE6E6E6))),
            ),
            child: Text(
              'Buy a Ticket',
              style: TextStyle(
                fontFamily: 'Source Sans 3',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150.0,
                    height: 115.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: 'Source Sans 3'),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Nyabugogo',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Source Sans 3',
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Color.fromRGBO(255, 77, 1, 0.53),
                        ),
                        Text(
                          'Kigali',
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: 'Source Sans 3'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    FontAwesomeIcons.rotate,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 150.0,
                    height: 115.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'To',
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: 'Source Sans 3'),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Add Destination',
                          style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Source Sans 3',
                              color: Colors.grey),
                        ),
                        Divider(
                          color: Color.fromRGBO(255, 77, 1, 0.53),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //departure and arrival time
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 150.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Departure Time',
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: 'Source Sans 3'),
                        ),
                        Text(
                          '__:__',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 150.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Arrival Time',
                          style: TextStyle(
                              fontSize: 16.0, fontFamily: 'Source Sans 3'),
                        ),
                        Text(
                          '__:__',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //passenger Name
              SizedBox(height: 20),

              Container(
                width: 330,
                height: 61,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Passenger Name',
                      border: InputBorder.none,
                    ),
                    cursorColor: Color(0xff2c1602),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                width: 330.0,
                height: 25.0,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Buy Agency you want',
                      style: TextStyle(
                          fontSize: 14.0, fontFamily: 'Source Sans 3'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.caretDown,
                      color: Colors.grey,
                      size: 15.0,
                    )
                  ],
                ),
              ),
              //payment button
              SizedBox(height: 20),

              SizedBox(
                width: 330,
                height: 25,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => buyticket()));
                  },
                  child: Text(
                    'Choose Payment',
                    style: TextStyle(fontSize: 14, fontFamily: 'DM Sans Med'),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(255, 77, 1, 0.53),
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.88),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
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
