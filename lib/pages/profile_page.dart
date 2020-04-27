import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yenemesob/pages/edit_profile.dart';
import 'package:yenemesob/widgets/post.dart';

class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {

  bool following = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildProfilePage(context);
  }

  Widget _buildProfilePage(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBar(
                leading: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).buttonColor,
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:16.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));
                      },
                      child: Icon(
                        Icons.edit,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
                elevation: 0,
                backgroundColor: Theme.of(context).backgroundColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80.0,
                  width: 80.0,
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 2.0
                    )
                  ),
                  child: CircleAvatar(
                    radius: 38.0,
                    backgroundImage: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '132',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '26',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          'Posts',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 200.0,
                height: 40.0,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: following?Theme.of(context).buttonColor: Theme.of(context).primaryColor,
                      width: 1.0
                    )
                  ),
                  color: following?Colors.white:Theme.of(context).primaryColor,
                  onPressed: (){
                    setState(() {
                      following = !following;
                    });
                  },
                  child: Text(
                    following?'Unfollow':'Follow',
                    style: TextStyle(
                        color: following?Theme.of(context).buttonColor:Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Jhon Doe',
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Text(
                  'Handling text files is a big part of web development. We often need to produce or handle received text content, including strings, numbers, JSON, XML, etc. As a high performance language,',
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 24.0, bottom: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Posts',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
              ),
              PostItem(),
              PostItem(),
              PostItem(),
            ],
          ),
        ),
      ),
    );
  }
}