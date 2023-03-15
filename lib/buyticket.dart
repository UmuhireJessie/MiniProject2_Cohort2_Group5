import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class buyticket extends StatefulWidget {
  @override
  State<buyticket> createState() => _buyticketState();
}

class _buyticketState extends State<buyticket> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          children: [
            Row(children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Buy a Ticket',
                style: TextStyle(
                    fontFamily: 'Source Sans 3',
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 30,
            ),

            SvgPicture.asset(
              'assets/images/draw.svg',
              width: 268,
              height: 192,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Pay With',
                  style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Icon(
                  FontAwesomeIcons.circle,
                  color: Colors.deepOrange.shade200,
                  size: 13,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepOrange.shade200,
                      width: 1.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/momo.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Momo Pay',
                      style: TextStyle(fontFamily: 'DM Sans', fontSize: 12.0),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Code *182*8*1*00000#',
                      style: TextStyle(fontFamily: 'DM Sans', fontSize: 10.0),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),

            // credit card section
            Row(
              children: [
                SizedBox(
                  width: 60,
                ),
                Icon(
                  FontAwesomeIcons.circle,
                  color: Colors.deepOrange.shade200,
                  size: 13,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepOrange.shade200,
                      width: 1.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/credit.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Credit Card',
                      style: TextStyle(fontFamily: 'DM Sans', fontSize: 12.0),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '   Credit ********1725',
                      style: TextStyle(fontFamily: 'DM Sans', fontSize: 10.0),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next',
                style: TextStyle(
                    fontSize: 14, fontFamily: 'DM Sans', color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.deepOrange.shade200,
                ),
                elevation: MaterialStateProperty.all<double>(0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.88),
                  ),
                ),
              ),
            ),
          ],
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
      ),
    );
  }
}
