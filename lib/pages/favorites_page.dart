import 'package:digital_library_prototype/pages/search_bar_page.dart';
import 'package:digital_library_prototype/widgets/favorites_widget.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          title: Center(
            child: Container(
              padding: EdgeInsets.only(top: 28),
              child: Text(
                "My Favorites",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          leading: Container(
            padding: EdgeInsets.only(top: 25),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/home');
              },
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 25),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {
                  showSearch(context: context, delegate: SearchBarPage());
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Favorite Books and Publications",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: FavoritesWidget(),
            )
          ],
        ),
      ),
    );
  }
}
