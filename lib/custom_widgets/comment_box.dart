import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Card(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        child: Image.asset('dm.jpg'),
                      ),
                    ),
                    SizedBox(width: deviceWidth * 0.125,),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text('Ken Adama'),
                        ),
                        SizedBox(height: deviceHeight * 0.120,),
                        Container(
                          child: Text('2 days ago'),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: deviceHeight * 0.150,),
                Container(
                  child: Text('...........Description...........'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}