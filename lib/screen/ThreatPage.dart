import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:threat_around/screen/DetailThreat.dart';

class ThreatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        color: Hexcolor('#ffffff'),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildCurrentStatusListView(),
                  _buildThreatArroundListView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

SizedBox _buildCurrentStatusListView() {
  return SizedBox(
    height: 150.0,
    child: 
    Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          child: InkWell(
            onTap: () {                          
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => DetailThreatPage(),
            //     ),
            //   );
            }, 
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Hexcolor('#4EB152'),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
              padding: EdgeInsets.only(top: 20.0, right: 20.0, bottom: 5.0, left: 5.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Here monitored safe,\nthere is no threat',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          softWrap: false,
                          style: new TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Hexcolor('#ffffff'),
                            fontSize: 16.0
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:15),
                        ),
                        Text("Jl. Kelapa, Sukolilo, Jiwan, Madiun",
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                            fontSize: 11.0,
                            fontFamily: 'Roboto',
                            color: new Hexcolor('#ffffff'),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                            image: new DecorationImage(
                                // fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://i.ibb.co/XV4C7FD/banner.png")
                                  )
                                )
                      ),
                    ],
                  ),
                ],
              ),
            ),
              ],
            ),
          ),
        ),
        ),
  );
}

Widget _buildThreatArroundListView() {
  return Container(
    margin: EdgeInsets.only(top: 4.0),
    // color: Colors.white,
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
          padding: EdgeInsets.only(left:10.0, right: 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Text("Threat around 0-100Km",
                style:
                  new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold
                  // color: Colors.yellow,
                  ),
                ),
              new Text("See All",
                style: 
                new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold,
                  color: Hexcolor('##2FC7F5')
                  ),
              ),
            ]
          ),          
        ),
        ListView.builder(
      padding: EdgeInsets.only(top: 0),
      itemCount: 10,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailThreatPage(),
                ),
              );
            },
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://www.dw.com/image/52148088_303.jpg")
                                  )
                                )
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Earthquake',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            // fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Hannah Montana',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          '2 hours ago',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('10Km',
                        style:
                          new TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ),
      ],
    )
  );
}
