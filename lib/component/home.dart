import 'package:flutter/material.dart';
import 'buttonGenre.dart';
import 'reusableCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _pressedMulher;
  bool _pressedHomem;
  bool _pressedPeso;
  bool _pressedIade;
  double _years;
  double _weight;
  double _height;

  @override
  void initState() {
    _pressedMulher = false;
    _pressedHomem = false;
    _years = 0;
    _weight = 0;
    _height = 0;
    _pressedPeso = false;
    _pressedIade = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(10, 12, 31, 0.5),
        appBar: AppBar(
          title: Text(
            "IMC",
            style: TextStyle(
              fontFamily: "Poppins",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(17, 19, 36, 1),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(13.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        child: ButtonGenre("Mulher", _pressedMulher),
                        onTap: () {
                          setState(() {
                            _pressedMulher = !_pressedMulher;
                          });
                        },
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          child: ButtonGenre("Homem", _pressedHomem),
                          onTap: () {
                            setState(() {
                              _pressedHomem = !_pressedHomem;
                            });
                          },
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 160,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 19, 36, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text("Altura",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                padding: EdgeInsets.only(top: 20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      _height.toStringAsPrecision(4),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "cm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                child: Slider(
                                  value: _height,
                                  min: 0.0,
                                  max: 200.0,
                                  //divisions: 200,
                                  onChanged: (newValue) {
                                    print(newValue);
                                    setState(() {
                                      _height = newValue;
                                    });
                                  },
                                ),
                                padding: EdgeInsets.only(top: 20),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 155,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(17, 19, 36, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                width: 50,
                                child: Text(
                                  "Peso",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 30),
                              child: Text(
                                _weight.toStringAsPrecision(2),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    child: GestureDetector(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (!(_weight <= 0)) {
                                        _weight--;
                                      }
                                    });
                                  },
                                )),
                                Container(
                                    child: GestureDetector(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 155,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(17, 19, 36, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(top: 20),
                                width: 50,
                                child: Text(
                                  "Idade",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              padding: EdgeInsets.only(top: 30, bottom: 30),
                              child: Text(
                                _years.toStringAsPrecision(2),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    child: GestureDetector(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (!(_years <= 0)) {
                                        _years--;
                                      }
                                    });
                                  },
                                )),
                                Container(
                                    child: GestureDetector(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _years++;
                                    });
                                  },
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Center(
                            child: Text(
                              "Calcular",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Color _getColor() {}
}
