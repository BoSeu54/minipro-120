import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [
              const Color(0xFF26CBE6),
              const Color(0xFF26CBC0),
            ], begin: Alignment.topCenter, end: Alignment.center)),
          ),
          new Scaffold(
            backgroundColor: Colors.transparent,
            body: new Container(
              child: new Stack(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.center,
                    child: new Padding(
                      padding: new EdgeInsets.only(top: _height / 15),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                                'https://bosste.files.wordpress.com/2022/03/174675058_1597431410462111_3151516143098867568_n.jpg?w=324&h=326'),
                          ),
                          new SizedBox(
                            height: _height / 30,
                          ),
                          new Text(
                            'Boseu Teera',
                            style: GoogleFonts.mali(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: _height / 2.2),
                    child: new Container(
                      color: Colors.white,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 2.6,
                        left: _width / 20,
                        right: _width / 20),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 2.0,
                                    offset: new Offset(0.0, 2.0))
                              ]),
                          child: new Padding(
                            padding: new EdgeInsets.all(_width / 20),
                            child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  headerChild('Favorite', 10),
                                  headerChild('Spot', 5),
                                  headerChild('Futures', 8),
                                ]),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(top: _height / 20),
                          child: new Column(
                            children: <Widget>[
                              infoChild(
                                  _width, Icons.email, 'bosszer.ac@gmail.com'),
                              infoChild(_width, Icons.call, '+66 0629750033'),
                              infoChild(
                                  _width, Icons.credit_card, 'KTB 0159520565'),
                              infoChild(_width, Icons.verified, 'Identity'),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerChild(String header, int value) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            header,
            style: GoogleFonts.mali(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          new SizedBox(
            height: 8.0,
          ),
          new Text(
            '$value',
            style: new TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 255, 33, 8),
                fontWeight: FontWeight.bold),
          )
        ],
      ));

  Widget infoChild(double width, IconData icon, data) => new Padding(
        padding: new EdgeInsets.only(bottom: 8.0),
        child: new InkWell(
          child: new Row(
            children: <Widget>[
              new SizedBox(
                width: width / 12,
              ),
              new Icon(
                icon,
                color: Color.fromARGB(255, 1, 140, 31),
                size: 45.0,
              ),
              new SizedBox(
                width: width / 20,
              ),
              new Text(
                data,
                style: GoogleFonts.prompt(fontSize: 20),
              ),
            ],
          ),
        ),
      );
}
