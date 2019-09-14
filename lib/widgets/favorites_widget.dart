import 'package:flutter/material.dart';

class FavoritesWidget extends StatelessWidget {
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
