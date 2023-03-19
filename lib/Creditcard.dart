import 'alltickets.dart';
import 'main.dart';
import 'details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Ticket.dart';
import 'Splash.dart';

class CreditCardPage extends StatefulWidget {
  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
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
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF4F4F4),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Buy a ticket",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DM Sans',
                          ),
                        ),
                        SizedBox(height: 23),
                        Text(
                          "Credit card",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DM Sans Reg',
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Radio(
                              value: true,
                              groupValue: true,
                              onChanged: (value) {},
                              activeColor: Color.fromRGBO(255, 77, 1, 0.53),
                            ),
                            SizedBox(width: 8),
                            Image.asset(
                              'assets/images/credit_card.png',
                              height: 135,
                              width: 248,
                            ),
                          ],
                        ),
                        SizedBox(height: 23),
                        Text(
                          "Credit Card Details",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DM Sans Reg',
                          ),
                        ),
                        SizedBox(height: 23),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border:
                                Border.all(color: Color(0xff000000), width: 1),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Credit Card Number",
                              ),
                              cursorColor: Color(0xff2c1602),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: Color(0xff000000), width: 1),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Expiry",
                                    ),
                                    cursorColor: Color(0xff2c1602),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: Color(0xff000000), width: 1),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "CVV",
                                    ),
                                    cursorColor: Color(0xff2c1602),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 33),
                        Center(
                          child: SizedBox(
                            width: 296,
                            height: 42,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TicketPage()),
                                );
                              },
                              child: Text(
                                "Submit Payment",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'DM Sans',
                                  color: Color(0xff000000),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(255, 77, 1, 0.53),
                                ),
                                elevation: MaterialStateProperty.all<double>(0),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Text(
                                    "By submitting your payment, you agree to the B-ticket",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'DM Sans Reg')),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Text("Terms and Conditions",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'DM Sans Reg',
                                      color: Colors.blue,
                                    ))
                              ],
                            )),
                      ]))
            ],
          ),
        ),
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
