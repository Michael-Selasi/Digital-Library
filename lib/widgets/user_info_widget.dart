import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        //This allows the keyboard to close when you tap anywhere on the screen
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.account_circle),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: "John Doe",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    decoration: new InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[300],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.phone_iphone),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: "0273621478",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    decoration: new InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[300],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: "digital@library.com",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    decoration: new InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[300],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.remove_red_eye),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    enabled: false,
                    initialValue: "********",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    decoration: new InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[300],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                height: 40.0,
                width: 200.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue[300],
                  elevation: 6.0,
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
