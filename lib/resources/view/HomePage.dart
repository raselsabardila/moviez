import 'package:flutter/material.dart';
import 'package:moviez/resources/components/ListMovie.dart';
import 'package:moviez/resources/components/MovieCorrousel.dart';
import 'package:moviez/resources/styles/Style.dart';
import 'package:moviez/resources/view/SearchPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.only(top: 22, left: 15, bottom: 20),
              width: MediaQuery.of(context).size.width,
              color: bgColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Moviez", style: titlePage),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "watch must easier",
                            style: subTitle,
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SearchPage();
                              }));
                            },
                          ),
                        ),
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryGrey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                bottomLeft: Radius.circular(100))),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: double.infinity,
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MovieCorrousel(
                            "John Wick 3 : Parabellum",
                            "Action, Crime",
                            "https://images.unsplash.com/photo-1598518620943-b75fd9e4147c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bW92aWUlMjBwb3N0ZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                            4),
                        MovieCorrousel(
                            "Cars 3",
                            "Adventure, Racing",
                            "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2Fyc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
                            3)
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text("From Disney", style: titleBody),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        ListMovie("Mulan Session", "History, War", 3,
                            "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ListMovie("Mulan Session", "History, War", 3,
                            "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ListMovie("Mulan Session", "History, War", 3,
                            "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                      ],
                    ),
                  )
                ],
              )),
        ),
      )),
    );
  }
}
