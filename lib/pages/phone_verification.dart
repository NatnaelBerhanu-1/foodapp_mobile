import 'package:flutter/material.dart';
import 'package:yenemesob/pages/home.dart';

class PhoneVerification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification>{
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: globalKey,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:80.0, left: 40.0, right: 40.0),
              child: Text(
                'Input Verification Code',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0, left: 40.0, right: 40.0),
              child: Text(
                'check your message for verification\ncode',
                style: Theme.of(context).textTheme.body2,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0, left: 40.0, right: 40.0),
              child: TextFormField(
                  keyboardType: TextInputType.phone
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 40.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(25.0)
                      )
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: (){
//                    Scaffold.of(context).showSnackBar(SnackBar(content: Text('show'),));
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'submit',
                    style: Theme.of(context).textTheme.body1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Didn\'t get code',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.body2,
              ),
            ),
            GestureDetector(
              onTap: (){
                globalKey.currentState.showSnackBar(SnackBar(content: Text('resend code'),));
              },
              child: Text(
                'resend code',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 18,color: Theme.of(context).accentColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}