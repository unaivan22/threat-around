import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class AllWitnessPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // title: Text('Backend Web Developer NodeJS Specialis (Senior Level)'),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Withness - Earthquake",
              style: TextStyle(fontSize: 14, color: Hexcolor('#212121')),
              children: <TextSpan>[
                TextSpan(
                  text: '\nKearney Ave Memphis, TN 38111, USA',
                  style: TextStyle(fontSize: 10, color: Hexcolor('#212121')),
                ),
              ]),
        ),
        // centerTitle: true,
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
              // Container(
              //   color: Colors.white,
              //   padding: EdgeInsets.only(
              //       top: 15.0, right: 15.0, bottom: 15.0, left: 15.0),
              //   child: Row(
              //     // mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.baseline,
              //     textBaseline: TextBaseline.alphabetic,
              //     children: <Widget>[
              //       Stack(
              //         children: <Widget>[
              //           Container(
              //               width: 80.0,
              //               height: 80.0,
              //               decoration: new BoxDecoration(
              //                   borderRadius:
              //                       new BorderRadius.all(Radius.circular(20.0)),
              //                   image: new DecorationImage(
              //                       fit: BoxFit.cover,
              //                       image: new NetworkImage(
              //                           "https://cdn.pixabay.com/photo/2017/10/18/21/36/portrait-2865605_960_720.jpg")))),
              //         ],
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(left: 16),
              //       ),
              //       Expanded(
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: <Widget>[
              //             Text(
              //               'Hannah Montanah',
              //               style: TextStyle(
              //                   color: Colors.black87,
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 18.0
              //                   // fontSize: 16,
              //                   ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.only(top: 5),
              //             ),
              //             Text(
              //               '2 hours ago',
              //               overflow: TextOverflow.ellipsis,
              //               style: TextStyle(
              //                   color: Colors.black54,
              //                   fontSize: 12.0,
              //                   fontWeight: FontWeight.normal),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.only(top: 5),
              //             ),
              //             Text(
              //               'there was an earthquake in my area, many houses were destroyed and the roads were badly damaged',
              //               // overflow: TextOverflow.ellipsis,
              //               // softWrap: false,
              //               style: TextStyle(
              //                 color: Colors.black54,
              //                 fontWeight: FontWeight.w300,
              //                 fontSize: 14,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.all(8.0),
              //         child: Column(
              //           children: <Widget>[
              //             Text(
              //               '10Km',
              //               style: new TextStyle(
              //                   color: Colors.black54,
              //                   fontSize: 12.0,
              //                   fontWeight: FontWeight.normal),
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
              //   padding: EdgeInsets.only(left: 10.0, right: 10.0),
              //   child: new Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         new Text(
              //           "Map Location",
              //           style: new TextStyle(
              //               fontSize: 16.0, fontWeight: FontWeight.w600
              //               // color: Colors.yellow,
              //               ),
              //         ),
              //       ]),
              // ),
              // Container(
              //     padding: EdgeInsets.only(left: 20, right: 20),
              //     width: 400.0,
              //     height: 200.0,
              //     decoration: new BoxDecoration(
              //         // shape: BoxShape.circle,
              //         borderRadius: new BorderRadius.all(Radius.circular(10.0)),
              //         image: new DecorationImage(
              //             fit: BoxFit.cover,
              //             image: new NetworkImage(
              //                 "https://i.ibb.co/njDmYyt/dummy-map-pin.png")))),
              Container(
                // margin: EdgeInsets.only(top: 10.0,),
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                margin: EdgeInsets.only(bottom:10.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        "All Witness",
                        style: new TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600
                            // color: Colors.yellow,
                            ),
                      ),
                      Text("95% - 100 witness",
                        style: new TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Hexcolor('#444444')),
                      ),
                    ]
                ),
              ),
              SizedBox(
                height: 10000.0,
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: 105,
                  itemExtent: 200.0,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
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
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 0), // changes position of shadow
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
                                  'This information proved to be correct, here a mess of buildings and trees were destroyed. there was an earthquake in my area, many  houses were destroyed and the roads were  badly damaged',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 10,
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
                                  '1$index minutes ago',
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
                                          'https://i.pravatar.cc/11$index',
                                        ),
                                        radius: 16.0,
                                      ),
                                    ),
                                    Flexible(
                                      child: new Container(
                                        padding: new EdgeInsets.only(left: 8.0),
                                        child: new Text(
                                          'Joakim Noah',
                                          overflow: TextOverflow.ellipsis,
                                          style: new TextStyle(
                                            fontSize: 14.0,
                                            // fontFamily: 'Roboto',
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
