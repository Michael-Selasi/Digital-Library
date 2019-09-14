import 'package:digital_library_prototype/widgets/user_info_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserProfilePageState();
  }
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/home');
                      },
                    ),
                    Text(
                      "User Profile",
                      style: TextStyle(color: Colors.black, fontSize: 24.0),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red[300],
                          elevation: 2.0,
                          child: Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 125.0,
                width: 125.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(62.5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/profile.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
          UserInfoWidget(),
        ],
      ),
    );
  }
}
