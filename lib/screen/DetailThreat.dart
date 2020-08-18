import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:badges/badges.dart';

class DetailThreatPage extends StatefulWidget {
  @override
  _DetailThreatPageState createState() => _DetailThreatPageState();
}
  
class _DetailThreatPageState extends State<DetailThreatPage>  {

Completer<GoogleMapController> _controller = Completer();

static const LatLng _center = const LatLng(45.521563, -122.677433);

void _onMapCreated(GoogleMapController controller) {
  _controller.complete(controller);
}

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
                  text: '\nJl Tunjungan No. 1 Surabaya, Jawa Timur',
                  style: TextStyle(
                    fontSize: 10,
                    color: Hexcolor('#212121')
                  ),
                ),
              ]
          ),
        ),
        // centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        // backgroundColor: Colors.red,
      ),
      body: Container(
        // color: Hexcolor('#F6F7FB'),
        color: Hexcolor('#ffffff'),
        padding: EdgeInsets.only(top: 10.0, bottom: 50.0),
        // color: Colors.pinkAccent,

        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
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
                            borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/10/18/21/36/portrait-2865605_960_720.jpg")
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
                          'Hannah Montanah',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
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
                            color: Colors.black54, fontSize: 10.0, fontWeight: FontWeight.normal
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'there was an earthquake in my area, many houses were destroyed and the roads were badly damaged',
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
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
                          new TextStyle(color: Colors.black54, fontSize: 12.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              padding: EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text("Photos",
                    style:
                      new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold
                      // color: Colors.yellow,
                      ),
                    ),
                ]
              ),          
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.only(left: 10, right: 10),
                    width: 110.0,
                    height: 110.0,
                    decoration: new BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                            "https://www.dw.com/image/52148088_303.jpg")
                      )
                    )
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10, right: 10),
                    width: 110.0,
                    height: 110.0,
                    decoration: new BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                            "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iJMRWBqJe7WA/v1/1000x-1.jpg")
                      )
                    )
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10, right: 10),
                    width: 110.0,
                    height: 110.0,
                    decoration: new BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(
                            "https://www.earthmagazine.org/sites/earthmagazine.org/files/2018-08/damage.png")
                      )
                    )
                  ),
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
              padding: EdgeInsets.only(left:10.0, right: 10.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text("Maps",
                    style:
                      new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold
                      // color: Colors.yellow,
                      ),
                    ),
                ]
              ),          
            ),
            Container(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            )
          ],
        ),
        // child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children: <Widget>[
            // Container(
            //   width: 120.0,
            //   height: 120.0,
            //   decoration: new BoxDecoration(
            //     color: Colors.white,
            //     shape: BoxShape.circle,
            //     image: new DecorationImage(
            //       fit: BoxFit.cover,
            //       image: new NetworkImage(
            //           "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png")
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.1),
            //         spreadRadius: 4,
            //         blurRadius: 8,
            //         offset: Offset(0, 3), // changes position of shadow
            //       ),
            //     ],
            //   )
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 20.0),
            //   child: Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: <Widget>[
            //             Text(
            //               'Google LLC',
            //               style: TextStyle(
            //                 color: Colors.black87,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 16,
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(top: 8),
            //             ),
            //             Text(
            //               'Jakarta - 2 days ago',
            //               overflow: TextOverflow.ellipsis,
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w300
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(top: 15),
            //             ),
            //             // Badge(
            //             //   badgeColor: Colors.green,
            //             //   shape: BadgeShape.square,
            //             //   borderRadius: 4,
            //             //   toAnimate: false,
            //             //   badgeContent:
            //             //     Text('Rp 7.000.000 - Rp 19.000.000', 
            //             //     style: TextStyle(
            //             //       color: Colors.white,
            //             //       fontSize: 10,
            //             //       fontWeight: FontWeight.w500
            //             //     ),
            //             //   ),
            //             // ),
            //           ],
            //         ),
            //       ),
                
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 20.0),
            //   child: TabBar(
            //   controller: controller,
            //     tabs: <Widget>[
            //       new Tab(text: "Description",),
            //       new Tab(text: "Company"),
            //       new Tab(text: "Review",),
            //       // new Tab(icon: new Icon(Icons.smartphone),text: "Smartphone",),
            //     ],
            //   ),
            // ),

            // Expanded(
            //   child: TabBarView(
            //   controller: controller,
            //     children: <Widget>[
            //       new description.Description(),
            //       new company.Company(),
            //       new review.Review(),
            //     ],
            //   ),
            // ),
          // ],
        // ),
      ),
    );
  }
}
