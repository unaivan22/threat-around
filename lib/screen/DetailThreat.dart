// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:threat_around/screen/AllWitnessPage.dart';

import '../extensions/custom_icons.dart';

class DetailThreatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // title: Text('Backend Web Developer NodeJS Specialis (Senior Level)'),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Earthquake",
              style: TextStyle(fontSize: 14, color: Hexcolor('#212121')),
              children: <TextSpan>[
                TextSpan(
                  text: '\nKearney Ave Memphis, TN 38111, USA',
                  style: TextStyle(fontSize: 10, color: Hexcolor('#212121')),
                ),
              ]),
        ),
        // centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              CustomIcons.forward,
              color: Hexcolor('#2FC7F5'),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        // backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Hexcolor('#F6F7FB'),
          color: Hexcolor('#ffffff'),
          padding: EdgeInsets.only(top: 10.0, bottom: 50.0),
          // color: Colors.pinkAccent,

          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                    top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(20.0)),
                                image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/10/18/21/36/portrait-2865605_960_720.jpg")))),
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
                            'Hannah Montanah',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0
                                // fontSize: 16,
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
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Text(
                            'there was an earthquake in my area, many houses were destroyed and the roads were badly damaged',
                            // overflow: TextOverflow.ellipsis,
                            // softWrap: false,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '10Km',
                            style: new TextStyle(
                                color: Colors.black54,
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "Photos",
                        style: new TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600
                            // color: Colors.yellow,
                            ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        // padding: EdgeInsets.only(left: 10, right: 10),
                        width: 125.0,
                        height: 125.0,
                        decoration: new BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(10.0)),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://www.dw.com/image/52148088_303.jpg")))),
                    Container(
                        // padding: EdgeInsets.only(left: 10, right: 10),
                        width: 125.0,
                        height: 125.0,
                        decoration: new BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(10.0)),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iJMRWBqJe7WA/v1/1000x-1.jpg")))),
                    Container(
                        // padding: EdgeInsets.only(left: 10, right: 10),
                        width: 125.0,
                        height: 125.0,
                        decoration: new BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius:
                                new BorderRadius.all(Radius.circular(10.0)),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://www.earthmagazine.org/sites/earthmagazine.org/files/2018-08/damage.png")))),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "Map Location",
                        style: new TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600
                            // color: Colors.yellow,
                            ),
                      ),
                    ]),
              ),
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  width: 400.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage(
                              "https://i.ibb.co/njDmYyt/dummy-map-pin.png")))),
              Container(
                margin: EdgeInsets.only(
                  top: 40.0,
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "Actually",
                        style: new TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600
                            // color: Colors.yellow,
                            ),
                      ),
                      new InkWell(
                          onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllWitnessPage(),
                            ),
                          );
                        },
                        child: new Text("See All",
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Hexcolor('#2FC7F5')),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "95% - 100% witness",
                        style: new TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w600
                            // color: Colors.yellow,
                            ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 160.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemExtent: 300.0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 4.0),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => JobsDetail(),
                          //     ),
                          //   );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 18.0,
                                    left: 18.0,
                                    top: 16.0,
                                    bottom: 4.0),
                                child: Text(
                                  'This information proved to be correct, here a mess of buildings and trees were destroyed',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  softWrap: false,
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 18.0,
                                    left: 18.0,
                                    top: 4.0,
                                    bottom: 4.0),
                                child: Text(
                                  '45 minutes ago',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11.0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          'https://www.vippng.com/png/detail/366-3660934_business-man-business-man-face-png.png',
                                        ),
                                        radius: 12.0,
                                      ),
                                    ),
                                    Flexible(
                                      child: new Container(
                                        padding: new EdgeInsets.only(left: 4.0),
                                        child: new Text(
                                          'Djoanahh Nukib',
                                          overflow: TextOverflow.ellipsis,
                                          style: new TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'Roboto',
                                            color: new Color(0xFF212121),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
