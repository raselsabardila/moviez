import 'package:flutter/material.dart';
import 'package:moviez/resources/styles/Style.dart';

class IconStar extends StatelessWidget {
  List<Widget> stars = [];
  int _active;

  IconStar(int active) {
    this._active = active;
    this._setStar();
  }

  void _setStar() {
    for (var i = 0; i < 5; i++) {
      if (i < this._active) {
        stars.add(Icon(
          Icons.star,
          size: 15,
          color: primaryYellow,
        ));
      } else {
        stars.add(Icon(
          Icons.star,
          size: 15,
          color: primaryGrey,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: this.stars,
    );
  }
}
