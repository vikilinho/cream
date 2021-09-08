import 'package:cream/views/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static const String loginID = 'LOGIN_SCREEN';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {}),
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          Center(
            child: Text(
              "Sign In",
              style: GoogleFonts.kodchasan(
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              "Welcome Back",
              style: GoogleFonts.kodchasan(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                    decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(212, 175, 55, 0.5),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                        )),
                  ),
                  hintText: "Username/Email",
                  hintStyle: GoogleFonts.kodchasan(
                    fontSize: 14,
                  ),
                )),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black12,
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                    decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(212, 175, 55, 0.5),
                        child: Icon(
                          Icons.security_outlined,
                          color: Colors.grey,
                        )),
                  ),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                  hintStyle: GoogleFonts.kodchasan(
                    fontSize: 14,
                  ),
                )),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black12,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(right: 35.0, top: 12, bottom: 12),
                child: Text(
                  "Lost your password?",
                  style: GoogleFonts.kodchasan(),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExploreScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign In', style: TextStyle(color: Colors.white)),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Or Signin with ",
            style: GoogleFonts.kodchasan(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage('images/google.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage('images/facebook.png'),
              ),
            )
          ])
        ]),
      ),
    );
  }
}
