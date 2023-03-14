import 'Creditcard.dart';
import 'package:miniproject/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'Splash.dart';

class TicketPage extends StatefulWidget {
  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    MyHomePage(),
    TicketPage(),
    CreditCardPage(),
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
      body: SingleChildScrollView(
        child: Column(children: [
          // Top bar with time and icons
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateTime.now().hour.toString() +
                      ":" +
                      DateTime.now().minute.toString() +
                      "  " +
                      "MTN",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(width: 8),
                    Icon(FontAwesomeIcons.signal, size: 17),
                    SizedBox(width: 8),
                    Icon(FontAwesomeIcons.batteryThreeQuarters),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/travel.png',
                height: 160,
                width: 240,
              ),
            ]),
          ),

          SizedBox(height: 16),

          Center(
            child: Container(
              width: 304,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(255, 77, 1, 0.53),
                  width: 1,
                ),
              ),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 48,
                  color: Color.fromRGBO(255, 77, 1, 0.53),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/bticket.jpeg',
                        height: 48,
                        width: 52,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'B-TICKETS',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Bungee',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Your best online ticketing system',
                            style: TextStyle(
                              fontSize: 9,
                              fontFamily: 'Fontdiner Swanky',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Passenger Name:',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Mum Kiir',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(children: [
                          Text(
                            'Seat Number:',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '02',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Departure time:',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '11:45 am',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(children: [
                          Text(
                            'Number plate:',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(width: 4),
                          Text(
                            'RAF202V',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        SizedBox(height: 8),
                        Row(children: [
                          Text(
                            'Amount paid:',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '1000',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: QrImage(
                          data: 'Mum kiir + 02 + 11:45 am + RAF202V + 1000',
                          version: QrVersions.auto,
                        ),
                      ),
                    ),
                  ),
                ]),
              ]),
            ),
          ),

          SizedBox(height: 34),

          Padding(
              padding: EdgeInsets.only(right: 18),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 32,
                    width: 146,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Download',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'DM Sans Med',
                                  color: Color(0xff000000)),
                            ),
                            SizedBox(width: 10),
                            Icon(FontAwesomeIcons.download,
                                size: 15, color: Color(0xff000000))
                          ]),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 77, 1, 0.53),
                        ),
                        elevation: MaterialStateProperty.all<double>(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.88),
                          ),
                        ),
                      ),
                    ),
                  )))
        ]),
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
