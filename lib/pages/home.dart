import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yenemesob/pages/new_post.dart';
import 'package:yenemesob/pages/profile_page.dart';
import 'package:yenemesob/pages/search_page.dart';
import 'package:yenemesob/widgets/post.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final featured = <String>[
    'assets/images/lunch.jpg',
    'assets/images/breakfast.jpg',
    'assets/images/dinner.jpg'
  ];

  num top_tab_index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        focusNode: FocusNode(
                          canRequestFocus: false
                        ),
                        autofocus: false,
                        style: TextStyle(height: 1, color: Theme.of(context).cursorColor),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
                        },
                        decoration: InputDecoration(
                          hintText: 'search',
                          hintStyle: Theme.of(context).textTheme.body2,
                          prefixIcon: Icon(Icons.search, color: Theme.of(context).primaryColor,),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Theme.of(context).buttonColor
                            )
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 2.0,
                                style: BorderStyle.solid
                              ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProfilePage()));
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/avatar.png'
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Yene Mesob',
                          style: Theme.of(context).textTheme.title.copyWith(
                              color: Theme.of(context).buttonColor, fontSize: 28),
                        ),
                        Text(
                          'share your experience',
                          style: Theme.of(context).textTheme.body2,
                        )
                      ],
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewPost()));
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                      label: Text(
                        'New Post',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Featured',
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'more',
                        style: Theme.of(context).textTheme.body2,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: featured.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10.0),
                  itemBuilder: (context, i) =>
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                            BorderSide(
                              width: .5,
                              color: Theme.of(context).buttonColor
                            )
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            featured[i],
                            height: 90,
                          ),
                        ),
                      )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            top_tab_index = 0;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        child: Text(
                          'Following',
                          style: TextStyle(color: top_tab_index==0?Colors.white:Theme.of(context).buttonColor),
                        ),
                        color: top_tab_index==0?Theme.of(context).primaryColor:Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            top_tab_index = 1;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        child: Text(
                          'Explore',
                          style: TextStyle(color: top_tab_index==0?Theme.of(context).buttonColor:Colors.white),
                        ),
                        color: top_tab_index==0?Colors.transparent:Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              PostItem(),
              PostItem(),
            ],
          ),
        ),
      ),
    );
  }
}
