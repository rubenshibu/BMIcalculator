import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      colour: Color(0xff1d1e33),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableContainer(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                  Container(
                    color: Color(0xffEB1555),
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    height: 80.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {

  ReuseableContainer({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
