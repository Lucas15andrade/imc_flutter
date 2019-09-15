import 'package:flutter/material.dart';

class ButtonGenre extends StatelessWidget {
  String _title;
  bool _pressed;

  ButtonGenre(this._title, this._pressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 155,
      height: 160,
      decoration: BoxDecoration(
        color: Color.fromRGBO(17, 19, 36, 1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            width: 50,
            child: Image(
              //width: 10,
              color: _getColor(),
              image: AssetImage(_getImage()),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              _title,
              style: TextStyle(
                  color: _getColor(),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  String _getImage() {
    if (this._title.contains("Homem")) {
      return "assets/images/male.png";
    } else {
      return "assets/images/female.png";
    }
  }

  Color _getColor(){
    if(_pressed){
      return Colors.white30;
    }else{
      return Colors.white;
    }

    //return Colors.white;
  }
}
