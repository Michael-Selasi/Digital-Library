import 'package:flutter/material.dart';

class BooksAndPublicationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Nitrogren Fertilizer",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Michael & co'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Potassium per manganate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Dei, Adjei & co'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Proper use of Nitrogen Phospate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Acheampong & Aboagye, 2018'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Fighting Fall Army Worm.pdf",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Deduako Publications'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Animal Farming, an untouched agricultural venture in Ghana",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Herbert K. Dei'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Using right tools for poultry farming.pdf",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Michael Selasi'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Agricultural farming, the right way",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Michael & co'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Agriculuture, Africa's way to grow its economy",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Michael & co'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Sodium phosphate and its use in fertilizing",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Yeboah, Amoah, Apaloo & co'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          elevation: 1.5,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.green[300],
                    width: 3,
                  ),
                  top: BorderSide(color: Colors.grey[300], width: 1)),
            ),
            child: ListTile(
              title: Text(
                "Manure production.pdf",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Author: Ntim publications'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.blue[300],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
