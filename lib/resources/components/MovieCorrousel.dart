import 'package:flutter/material.dart';
import 'package:moviez/resources/components/IconStart.dart';
import 'package:moviez/resources/styles/Style.dart';

class MovieCorrousel extends StatelessWidget {
  String _title, _genres, _imgURL;
  int _active;

  MovieCorrousel(this._title, this._genres, this._imgURL, this._active);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 300,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this._title,
                      style: nameMovie,
                    ),
                    SizedBox(height: 1),
                    Text(
                      this._genres,
                      style: subTitle,
                    )
                  ],
                ),
                IconStar(this._active)
              ],
            ),
          )
        ],
      ),
    );
  }
}
