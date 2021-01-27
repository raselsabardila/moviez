import 'package:flutter/material.dart';
import 'package:moviez/resources/components/ListMovie.dart';
import 'package:moviez/resources/styles/Style.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 22),
          width: MediaQuery.of(context).size.width,
          color: bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryGrey),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      hintText: "Search movie",
                      border: InputBorder.none,
                      hintStyle: nameMovie.copyWith(
                          color: Colors.white.withOpacity(0.5))),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Search Result(3)",
                style: titleBody,
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 350,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    ListMovie("Mulan Session", "History, War", 3,
                        "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    ListMovie("Mulan Session", "History, War", 3,
                        "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    ListMovie("Mulan Session", "History, War", 3,
                        "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    ListMovie("Mulan Session", "History, War", 3,
                        "https://images.unsplash.com/photo-1600385546605-536b691202df?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVsYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                  ],
                ),
              ),
              SizedBox(height: 37),
              Center(
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryBlue,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 16,
                          offset: Offset(0, 0),
                          spreadRadius: 8,
                          color: primaryBlue.withOpacity(0.2)
                        )
                      ],
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Text(
                      "Suggest Movie",
                      style: nameMovie,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
