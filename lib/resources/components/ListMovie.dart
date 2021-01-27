import 'package:flutter/material.dart';
import 'package:moviez/resources/styles/Style.dart';

import 'IconStart.dart';

class ListMovie extends StatelessWidget {
  String _title, _imgURL, _genre;
  int _active;

  ListMovie(this._title, this._genre, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 85,
            height: 110,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15),
              Text(
                this._title,
                style: nameMovie,
              ),
              Text(
                this._genre,
                style: subTitle,
              ),
              SizedBox(height: 13),
              IconStar(this._active)
            ],
          )
        ],
      ),
    );
  }
}
