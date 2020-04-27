import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildCommentItem(context);
  }

  Widget _buildCommentItem(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:5.0),
          child: CircleAvatar(
            maxRadius: 20.0,
            backgroundImage: AssetImage(
              'assets/images/avatar.png',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          width: MediaQuery.of(context).size.width-62,
          decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Jane Doe',
                  style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  '''what an amazing food it's what an amazing food it's''',
                  style: Theme.of(context).textTheme.caption,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '21-3-2010 10:20',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).primaryColor
                    ),
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