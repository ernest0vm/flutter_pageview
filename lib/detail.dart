import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpageview/home.dart';

class DetailPage extends StatefulWidget {
  final Vacation vacation;

  DetailPage({Key key, this.vacation}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Hero(
          tag: widget.vacation.url,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.vacation.url),
                  fit: BoxFit.fill
                ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: widget.vacation.city,
                  child: Text(
                    widget.vacation.city,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Hero(
                  tag: widget.vacation.country,
                  child: Text(
                    widget.vacation.country,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 50,
          child: Material(
            shape: CircleBorder(),
            color: Colors.transparent,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.keyboard_arrow_up, size: 36, color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
