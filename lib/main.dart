import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: 'Text,Row & Expanded Widget',
    home: BookShelf(),
    debugShowCheckedModeBanner: false,
  ));
}

class BookShelf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookShelfState();
  }
}

class _BookShelfState extends State<BookShelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text('Text, Row & Expanded Widget Example',
              style: TextStyle(
                  color: Colors.yellow
              ),
            )),
        body: Container(
            color: Colors.teal,
            child: Column(children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                          Icons.book,
                          size: 30,
                          color: Colors.yellow,
                        )),
                    TextSpan(
                        text: "BOOk",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ])),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.yellow,
                              )),
                          TextSpan(
                              text: "Think Like a Monk",
                              style: GoogleFonts.aclonica(
                                  textStyle:
                                  TextStyle(fontSize: 30.0, color: Colors.white)))
                        ])),
                  ),
                  Expanded(
                      child: Text('Book by Jay Shetty',
                          style: GoogleFonts.aclonica(
                              textStyle:
                              TextStyle(fontSize: 30.0, color: Colors.white))))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.yellow,
                              )),
                          TextSpan(
                              text: "Rich Dad Poor Dad",
                              style: GoogleFonts.aclonica(
                                  textStyle:
                                  TextStyle(fontSize: 30.0, color: Colors.white)))
                        ])),
                  ),
                  Expanded(
                      child: Text('Book by Robert Kiyosaki',
                          style: GoogleFonts.aclonica(
                              textStyle:
                              TextStyle(fontSize: 30.0, color: Colors.white))))
                ],
              ),
                     Image.network('https://cdn.pixabay.com/photo/2016/02/16/21/07/books-1204029_960_720.jpg',
                      height: 250,
                     )
            ])));
  }
}
