import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yenemesob/widgets/hotel_item.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool map = false;
  bool includePost = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.95),
        body: Stack(
          children: <Widget>[
            map
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                  )
                : SizedBox(
                    width: 0,
                    height: 0,
                  ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      child: TextField(
                        autofocus: true,
                        style: TextStyle(
                            height: 1, color: Theme.of(context).buttonColor),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.filter_list),
                            onPressed: () {},
                          ),
                          hintText: 'search',
                          hintStyle: Theme.of(context).textTheme.body2,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Theme.of(context).primaryColor,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  width: 2.0,
                                  color: Theme.of(context).buttonColor)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(width: 2.0, style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                child: Text(
                                  'List',
                                  style: TextStyle(
                                      color: map
                                          ? Theme.of(context).buttonColor
                                          : Theme.of(context).primaryColor),
                                ),
                                onTap: () {
                                  setState(() {
                                    map = false;
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                      color: map
                                          ? Theme.of(context).primaryColor
                                          : Theme.of(context).buttonColor),
                                ),
                                onTap: () {
                                  setState(() {
                                    map = true;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  includePost = !includePost;
                                });
                              },
                              child: Text(
                                'include posts',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                            SizedBox(
                              width: 24.0,
                              height: 24.0,
                              child: Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (bool val) {
                                  setState(() {
                                    includePost = val;
                                  });
                                },
                                value: includePost,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  !map
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0, left: 8.0, right: 8.0),
                                  child: Text(
                                    'Hotels',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context).textTheme.subtitle.copyWith(color: Theme.of(context).primaryColor),
                                  ),
                                ),
                                HotelItem(
                                  hotelName: 'Sheraton Hotel',
                                  followers: 120,
                                  imageUrl: 'assets/images/hotel.jpg',
                                ),
                                HotelItem(
                                  hotelName: 'Sheraton Hotel',
                                  followers: 120,
                                  imageUrl: 'assets/images/hotel.jpg',
                                )
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 0.0,
                          height: 0.0,
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
