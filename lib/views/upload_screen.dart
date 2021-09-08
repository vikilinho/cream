import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Upload Content',
          style: GoogleFonts.kodchasan(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {}),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.white,
                  onPressed: () {}),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Card(
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 1.0),
                          child: Text("Music",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.kodchasan(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(212, 175, 55, 1),
                              )),
                        ))),
                SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                Text(
                  "Video",
                  style: GoogleFonts.kodchasan(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                Text(
                  "Product",
                  style: GoogleFonts.kodchasan(
                    color: Colors.black,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.020,
                child: Text("1",
                    style: GoogleFonts.roboto(
                        fontSize: 16.0, color: Colors.black)),
                backgroundColor: Color.fromRGBO(212, 175, 55, 0.3),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Container(
                height: 0.5,
                width: 100.0,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: Color.fromRGBO(212, 175, 55, 0.3),
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  foregroundColor: Colors.black,
                  radius: MediaQuery.of(context).size.height * 0.020,
                  child: Text("2",
                      style: GoogleFonts.roboto(
                          fontSize: 16.0, color: Colors.black)),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 0.5,
                width: 100.0,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: Color.fromRGBO(212, 175, 55, 0.3),
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  foregroundColor: Colors.black,
                  radius: MediaQuery.of(context).size.height * 0.020,
                  child: Text("3",
                      style: GoogleFonts.roboto(
                          fontSize: 16.0, color: Colors.black)),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.file_upload_outlined, size: 50.0),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  "Upload Music File",
                  style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  "BROWSE",
                  style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      color: Color.fromRGBO(212, 175, 55, 1),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: Color.fromRGBO(212, 175, 55, 0.5),
                  style: BorderStyle.solid),
              color: Color.fromRGBO(212, 175, 55, 0.05),
            ),
            height: MediaQuery.of(context).size.width * 0.5,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "MAX SIZE: 10MB",
                style: GoogleFonts.roboto(
                  fontSize: 9.0,
                  color: Color.fromRGBO(75, 75, 75, 0.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "SONG TITLE",
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  color: Color.fromRGBO(75, 75, 75, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "e.g. The Mountains",
                hintStyle: GoogleFonts.kodchasan(
                  fontSize: 14.0,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(212, 175, 55, 0.5),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "RECORD LABEL",
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  color: Color.fromRGBO(75, 75, 75, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "e.g. The Mountains Group",
                hintStyle: GoogleFonts.kodchasan(
                  fontSize: 14.0,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(212, 175, 55, 0.5),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "YEAR RELEASED",
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  color: Color.fromRGBO(75, 75, 75, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "GENRE",
                    style: GoogleFonts.roboto(
                      fontSize: 10.0,
                      color: Color.fromRGBO(75, 75, 75, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.1),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Select Year",
                      suffixIcon: Icon(Icons.arrow_downward),
                      hintStyle: GoogleFonts.kodchasan(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(212, 175, 55, 0.5),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "HipHop",
                      suffixIcon: Icon(Icons.arrow_downward),
                      hintStyle: GoogleFonts.kodchasan(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromRGBO(212, 175, 55, 0.5),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Save & Continue',
                          style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  )),
            ),
          ],
        ),
      ])),
    );
  }
}
