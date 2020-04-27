import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yenemesob/pages/phone_verification.dart';

class PhoneInput extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 350.0,
              width: double.infinity,
              padding: EdgeInsets.only(top: 125),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/phoneinputbg.png'
                  )
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'yene mesob',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Share your amazing\nexperience',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0, left: 40.0),
              child: Text(
                'Input your phone',
                style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0, left: 40.0),
              child: Text(
                '09**** or +2519****',
                style: Theme.of(context).textTheme.body2,
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
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context) => PhoneVerification()));
                  },
                  child: Text(
                    'submit',
                    style: Theme.of(context).textTheme.body1,
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