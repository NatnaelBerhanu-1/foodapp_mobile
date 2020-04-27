import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yenemesob/pages/post_desc.dart';
import 'package:yenemesob/pages/profile_page.dart';

class PostItem extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _PostItemState();

}

class _PostItemState extends State<PostItem>{
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildPostItem(context);
  }

  Widget _buildPostItem(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PostDescription()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                        'assets/images/breakfast.jpg'
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                              'Doro wot'
                          ),
                          Text(
                            '150Br',
                            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:16.0, left: 8.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
                },
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/avatar.png'
                      ),
                      backgroundColor: Colors.transparent,
                      maxRadius: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Jhone Doe',
                        style: Theme.of(context).textTheme.body2,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        liked = liked?false:true;
                      });
                    },
                    child: Icon(
                      liked?Icons.favorite:Icons.favorite_border,
                      color: liked?Theme.of(context).primaryColor: Theme.of(context).buttonColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Text(
                      '15',
                      style: TextStyle(
                          color: Theme.of(context).buttonColor
                      ),
                    ),
                  ),
                  Icon(
                    Icons.message,
                    color: Theme.of(context).buttonColor,
                  ),
                  Text(
                    '15',
                    style: TextStyle(
                        color: Theme.of(context).buttonColor
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}