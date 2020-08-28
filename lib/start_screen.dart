import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 70.0),
                    Text(
                      'My favorites',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF430c4d), Color(0xFFa72466)]),
              ),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
          ),
          body: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/arrow.png"),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Material(
                        elevation: 0.0,
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          children: [
                            Container(
                              width: 170.0,
                              height: 40.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6.0),
                                        topLeft: Radius.circular(6.0)),
                                    side: BorderSide(color: Color(0xFFb2206b))),
                                elevation: 0.0,
                                color: Colors.white,
                                child: Text("Cosmetic device"),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              width: 170.0,
                              height: 40.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(6.0),
                                        topRight: Radius.circular(6.0)),
                                    side: BorderSide(color: Color(0xFFb2206b))),
                                elevation: 0.0,
                                child: Text("Trainings"),
                                color: Color(0xFFb2206b),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Flexible(
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2.0,
                                                color: (index == 3)
                                                    ? Color(0xFF3195d3)
                                                    : Colors.transparent)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: (index == 0)
                                                  ? Row(
                                                      children: [
                                                        Image.asset(
                                                            "assets/starflag.png"),
                                                        SizedBox(
                                                          width: 5.0,
                                                        ),
                                                        Text(
                                                          "Training name ${index + 1}",
                                                          style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    )
                                                  : Text(
                                                      "Training name ${index + 1}",
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Short training descroption Short training descroption Short training descroption Short training descroption ",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Color(0xFFc0c0c0)),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.0,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  (index != 0)
                                                      ? Text(
                                                          "Deborah Kursta",
                                                          style: TextStyle(
                                                              fontSize: 13.0,
                                                              color: Color(
                                                                  0xFFc0c0c0)),
                                                        )
                                                      : Text(""),
                                                  SmoothStarRating(
                                                    allowHalfRating: true,
                                                    starCount: 5,
                                                    rating: 0.0,
                                                    color: Color(0xFFFFD143),
                                                    borderColor:
                                                        Color(0xFFFFD143),
                                                    size: 15.0,
                                                    spacing: 0.0,
                                                  ),
                                                  Text(
                                                    "(587)",
                                                    style: TextStyle(
                                                        fontSize: 13.0,
                                                        color:
                                                            Color(0xFFc0c0c0)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFdfdfdf),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              4.0))),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.add_shopping_cart,
                                                  size: 20.0,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            Icon(
                                              Icons.delete,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
