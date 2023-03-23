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

  List<String> locations = [
    'Rubavu',
    'Musanze',
    'Nyanza',
    'Karongi',
    'Kamonyi',
    'Rusizi',
    'Ngororero',
    'Nyabihu',
    'Kayonza'
  ];
  String selectedLocation = 'Rubavu';

  List<String> departTime = [
    '5:00am',
    '5:30am',
    '6:00am',
    '6:30am',
    '7:00am',
    '7:30am',
    '8:00am',
    '8:30am',
    '9:00am',
    '9:30am',
    '10:00am',
    '10:30',
    '11:00am',
    '11:30',
    '12:00am',
    '12:30am',
    '13:00pm',
    '13:30pm',
    '14:00pm',
    '14:30pm',
    '15:00pm',
    '15:30pm',
    '16:00pm',
    '16:30pm',
    '17:00pm',
    '17:30pm',
    '18:00pm',
    '18:30pm',
    '19:00pm'
  ];
  String selectedTime = '5:00am';

  List<String> Agencies = [
    'RITCO',
    'KIVUBELT',
    'JAGUAR',
    'CAPITAL',
    'VIRUNGA',
    'EXPRESS'
  ];
  String ChosenAgencies = 'VIRUNGA';

   List<String> ArrivalTime = [
    'Rubavu: 3hrs',
    'Musanze: 3hrs',
    'Nyanza : 2hrs',
    'Karongi 4hrs',
    'Kamonyi: 30min',
    'Rusizi: 5hrs',
    'Ngororero: 2h30min',
    'Nyabihu: 1h25min',
    'Kayonza: 2hrs'
  ];
  String checkArrivalTime = 'Rubavu: 3hrs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 65,
            padding: EdgeInsets.all(21),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xFFE6E6E6))),
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
                        Text('Kigali City')
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
                    width: 180.0,
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
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        DropdownButton<String>(
                            value: selectedLocation,
                            items: locations.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? new_value) {
                              setState(() {
                                selectedLocation = new_value!;
                              });
                            }),
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
                    height: 140.0,
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
                              fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                            value: selectedTime,
                            items: departTime.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? New_Time) {
                              setState(() {
                                selectedTime = New_Time!;
                              });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 180.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Check your Arrival Time',
                          style: TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                         DropdownButton<String>(
                            value: checkArrivalTime,
                            items: ArrivalTime.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? New_check) {
                              setState(() {
                                checkArrivalTime = New_check!;
                              });
                            }),                   
                        ],
                    ),
                  ),
                ],
              ),

              //passenger Name
              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(right: 15),
                width: 355,
                height: 61,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
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
              Text(
                'Choose Agency',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(right: 15),
                width: 355.0,
                height: 35.0,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(255, 77, 1, 0.53), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton<String>(
                        value: ChosenAgencies,
                        items: Agencies.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? New_Agency) {
                          setState(() {
                            ChosenAgencies = New_Agency!;
                          });
                        }),
                  ],
                ),
              ),
              //payment button
              SizedBox(height: 20),

              SizedBox(
                width: 355,
                height: 28,
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
