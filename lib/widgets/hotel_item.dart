import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelItem extends StatelessWidget{
  String hotelName;
  num followers;
  String imageUrl;

  HotelItem({@required this.hotelName,@required this.followers,@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildHotelItem(context);
  }

  Widget _buildHotelItem(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Theme.of(context).backgroundColor,
      ),
        margin: EdgeInsets.only(bottom: 8.0),
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:5.0),
              child: CircleAvatar(
                radius: 22.5,
                backgroundImage: AssetImage(
                  imageUrl
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hotelName,
                    style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 16.0),
                  ),
                  Text(
                    '$followers followers',
                    style: Theme.of(context).textTheme.body2,
                  )
                ],
              ),
            ),
            GestureDetector(
              child: SizedBox(
                width: 115,
                child: Text(
                  'Follow',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}