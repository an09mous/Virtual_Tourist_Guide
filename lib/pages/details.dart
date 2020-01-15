import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: deviceHeight * 0.4,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Tokyo',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            background: Image.asset(
              'assets/fuji.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFillRemaining(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0),
                )),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: deviceHeight * 0.15,
                ),
                Container(
                  child: Text(
                    'Details',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.06,
                ),
                Container(
                  child: Text(
                    'Some Important Stuff',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
