import 'package:miniproject/main.dart';

import 'Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;
  final emailContoller = TextEditingController();
  final passwordContoller = TextEditingController();

  @override
  void dispose() {
    emailContoller.dispose();
    passwordContoller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF4F4F4),
        child: Column(
          children: [
            // Top bar with time and icons
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '11:30 PM MTN',
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
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Icon(FontAwesomeIcons.arrowLeft,
                          color: Color(0xff000000), size: 26),
                    ),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(fontSize: 32, fontFamily: 'Bungee'),
                    ),
                  ),
                ),
              ],
            ),

            Expanded(child: SizedBox(height: 1)),

            // Sign in form
            StreamBuilder<User?>(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Something went wrong!'));
                } else if (snapshot.hasData) {
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  });
                  return Center(child: Text('Successfully logged in!'));
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Enter Your Email',
                          style: TextStyle(fontSize: 14, fontFamily: 'DM Sans'),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Color.fromRGBO(255, 77, 1, 0.53),
                                width: 2),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: TextField(
                              controller: emailContoller,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              cursorColor: Color(0xff2c1602),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Enter Your Password',
                          style: TextStyle(fontSize: 14, fontFamily: 'DM Sans'),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Color.fromRGBO(255, 77, 1, 0.53),
                                width: 2),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 8.0, top: 8.0, right: 8.0),
                            child: Stack(
                              children: [
                                TextField(
                                  controller: passwordContoller,
                                  textInputAction: TextInputAction.done,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  cursorColor: Color(0xff2c1602),
                                ),
                                Positioned(
                                  right: 0,
                                  child: IconButton(
                                    icon: _obscureText
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: signIn,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'DM Sans Med',
                                color: Color(0xff000000)),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(255, 77, 1, 0.53),
                            ),
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.88),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),

            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account yet?",
                  style: TextStyle(fontSize: 14, fontFamily: 'DM Sans'),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        color: Color(0xff305489),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignOutPage()),
                    );
                  },
                ),
              ],
            )),
            Expanded(child: SizedBox(height: 10)),
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailContoller.text.trim(),
          password: passwordContoller.text.trim()).then((value) => 
            Future.delayed(Duration(seconds: 2), () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()));
                    })
          );
    } on FirebaseAuthException catch (e) {
      Center(child: Text("Signin Failed, Please Try again"));
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
