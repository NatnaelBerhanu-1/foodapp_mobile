import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'New Post',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _CustomTextInput(
                    hintText: 'Food Name',
                  ),
                  _CustomTextInput(
                    hintText: 'Price',
                  ),
                  Text(
                    'Includes',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Wrap(children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Checkbox(
                          onChanged: (bool value) {
                            return true;
                          },
                          value: true,
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'tax',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Checkbox(
                          onChanged: (bool value) {
                            return true;
                          },
                          value: true,
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'service fee',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Location',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontSize: 18.0)),
                            Text(
                              'default(current location)',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: Theme.of(context).buttonColor,
                                      fontSize: 14.0),
                            )
                          ],
                        ),
                        Text(
                          'Change',
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tags',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontSize: 18.0)),
                            Text(
                              'added(0/6)',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: Theme.of(context).buttonColor,
                                      fontSize: 14.0),
                            )
                          ],
                        ),
                        Text(
                          'Add',
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Images',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontSize: 18.0)),
                            Text(
                              'added(0/4)',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(
                                      color: Theme.of(context).buttonColor,
                                      fontSize: 14.0),
                            )
                          ],
                        ),
                        Text(
                          'Add',
                          style: Theme.of(context)
                              .textTheme
                              .body2
                              .copyWith(color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50.0,
            margin: EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'POST',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 16.0),
                    ),
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class _CustomTextInput extends StatelessWidget {
  final hintText;

  _CustomTextInput({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        initialValue: '',
        validator: (String value) {
          if (value.isEmpty) {
            return value;
          }
          return null;
        },
        style: TextStyle(height: 1),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).cursorColor),
            errorText: null,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide(
                    width: 1.0, color: Theme.of(context).buttonColor)
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                borderSide: BorderSide(
                    width: 1.0, color: Theme.of(context).buttonColor))),
      ),
    );
  }
}
