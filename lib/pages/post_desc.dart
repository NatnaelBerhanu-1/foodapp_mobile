import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yenemesob/widgets/comment.dart';

class PostDescription extends StatefulWidget {
  final tags = <String>[
    'tag1',
    'tag2',
    'tag3',
    'tag1',
    'tag2',
    'tag3',
    'tag1',
    'tag2',
    'tag3'
  ];

  final images = <String>[
    'assets/images/lunch.jpg',
    'assets/images/breakfast.jpg',
    'assets/images/dinner.jpg'
  ];

  @override
  State<StatefulWidget> createState() => _PostDescriptionState();
}

class _PostDescriptionState extends State<PostDescription> {
  num image_index = 1;
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Stack(children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 260.0,
                        width: double.infinity,
                        child: CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: false,
                              enableInfiniteScroll: false,
                              height: 260.0,
                              onPageChanged: (i, reason) {
                                setState(() {
                                  image_index = i + 1;
                                });
                              },
                              viewportFraction: 1.0),
                          items: widget.images.map((name) {
                            return Container(
                              height: 260,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                name,
                                fit: BoxFit.fill,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        padding: EdgeInsets.only(top: 200.0),
                        child: Card(
                          color: Theme.of(context).backgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Doro Wot',
                                          style:
                                              Theme.of(context).textTheme.title,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            '150 Br',
                                            style: Theme.of(context)
                                                .textTheme
                                                .title
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontSize: 25.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      width: 46,
                                      height: 46,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  Theme.of(context).buttonColor,
                                              width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(23.0)),
                                      child: Icon(
                                        Icons.location_on,
                                        color: Colors.redAccent,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'includes vat and service fee',
                                  style: Theme.of(context)
                                      .textTheme
                                      .body1
                                      .copyWith(
                                          color: Theme.of(context).accentColor),
                                ),
                                Html(
                                  data: """
                                    Handling text files is a big part of web development. We often need to produce or handle <b>received</b> text content, including strings, numbers, JSON, XML, etc. As a high performance language,
                                  """,
                                  defaultTextStyle:
                                      Theme.of(context).textTheme.caption,
                                ),
                                Wrap(
                                  children: widget.tags
                                      .map((tag) => Text(
                                            '#$tag ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .body1
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .buttonColor,
                                                    fontSize: 14.0),
                                          ))
                                      .toList(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            liked = liked ? false : true;
                                          });
                                        },
                                        child: Icon(
                                          liked
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: liked
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context).buttonColor,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          '15',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .buttonColor),
                                        ),
                                      ),
                                      Icon(
                                        Icons.message,
                                        color: Theme.of(context).buttonColor,
                                      ),
                                      Text(
                                        '15',
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).buttonColor),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Comments',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Theme.of(context).buttonColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, right: 8.0, top: 8.0, bottom: 60.0),
                  child: Column(
                    children: <Widget>[
                      CommentItem(),
                      CommentItem(),
                      CommentItem(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black54, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$image_index/${widget.images.length}',
                  style: TextStyle(
                      fontSize: 18
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 10.0,
              margin: EdgeInsets.all(0.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  border: Border.all(
                    color: Theme.of(context).buttonColor
                  )
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: Theme.of(context).textTheme.body2,
                        decoration: InputDecoration(
                          hintStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).cursorColor),
                          hintText: 'Add comment',
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),

                      ),
                    ),
                    Icon(
                      Icons.send,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
