import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        title: Text(
          'Profile',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      border: Border.all(
                          color: Theme.of(context).buttonColor, width: 2.0)),
                  width: 80,
                  height: 80,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/images/select_pic.png',
                        ),
                      )
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      _CustomTextInput(
                        hintText: 'Jhone Doe',
                        title: 'Full Name',
                      ),
                      _CustomTextInput(
                        hintText: 'hint text',
                        title: 'A little info',
                      ),
                      _CustomTextInput(
                        hintText: 'abc@gmail.com',
                        title: 'Email',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                              style: Theme.of(context).textTheme.body2.copyWith(
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Hotel Mode',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(fontSize: 18.0)),
                                Container(
                                  width: 200,
                                  child: Text(
                                    'makes you visible on search as a hotel you also need to provide location',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color:
                                                Theme.of(context).buttonColor,
                                            fontSize: 14.0),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (bool val) {},
                                value: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            margin: EdgeInsets.only(bottom: 22.0),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Text(
                'SAVE',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2.0, fontSize: 16.0),
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
  final title;
  _CustomTextInput({@required this.hintText, @required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(left: 10.0),
          width: MediaQuery.of(context).size.width,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Theme.of(context).primaryColor),
          ),
        ),
        Container(
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
            style: TextStyle(height: 1, color: Theme.of(context).cursorColor),
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
                        width: 1.0, color: Theme.of(context).buttonColor)
                )
            ),
          ),
        ),
      ],
    );
  }
}
