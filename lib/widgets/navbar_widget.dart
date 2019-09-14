import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
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
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/userprofile');
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: Text("User Profile", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/userprofile');
                },
              ),
              Divider(
                height: 8.0,
              ),
              ListTile(
                title: Text("Contact", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.phone_iphone),
                onTap: (){},
              ),
              Divider(
                height: 8.0,
              ),
              ListTile(
                title: Text("Setting", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.settings),
                onTap: (){},
              ),
              Divider(
                height: 8.0,
              ),
              ListTile(
                title: Text("FAQs", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.question_answer),
                onTap: (){},
              ),
              Divider(
                height: 8.0,
              ),
              ListTile(
                title: Text("Logout", style: TextStyle(fontSize: 20)),
                leading: Icon(Icons.exit_to_app),
                onTap: (){
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
