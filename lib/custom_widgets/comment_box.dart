import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  Widget _buildCommentBox(deviceWidth, deviceHeight, name, time, description) {
    return Container(
      height: deviceHeight * 0.220,
      child: Card(
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
                      height: deviceHeight * 0.150,
                      width: deviceWidth * 0.150,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image: new AssetImage('assets/demo.jpg'),
                              fit: BoxFit.contain)),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.050,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight * 0.0050,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: deviceWidth * 0.070),
                          child: Text(
                            time,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 15),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                        right: deviceWidth * 0.4958, left: deviceWidth * 0.140),
                    child: Text(
                      description,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: _buildCommentBox(deviceWidth, deviceHeight, 'Ken Adams',
          '2 days ago', 'Hello Everyone'),
    );
  }
}
