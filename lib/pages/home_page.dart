import 'package:digital_library_prototype/pages/search_bar_page.dart';
import 'package:digital_library_prototype/widgets/books_and_publications_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 400);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.85).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          sideNav(context),
          mainPage(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
        backgroundColor: Colors.green[300],
        onPressed: () {
          showSearch(context: context, delegate: SearchBarPage());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget sideNav(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 50.0),
          child: NavBarWidget(),
        ),
      ),
    );
  }

  Widget mainPage(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          elevation: 8,
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu, color: Colors.black),
                      onPressed: () {
                        setState(() {
                          if (isCollapsed)
                            _controller.forward();
                          else
                            _controller.reverse();
                          isCollapsed = !isCollapsed;
                        });
                      },
                    ),
//
                    Text(
                      "Digital Library",
                      style: TextStyle(fontSize: 24),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border(
                          bottom: BorderSide(color: Colors.redAccent),
                          top: BorderSide(color: Colors.redAccent),
                          left: BorderSide(color: Colors.redAccent),
                          right: BorderSide(color: Colors.redAccent),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/favorites');
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 6, right: 6.0, top: 10.0, bottom: 10.0),
                          child: Text(
                            "Favorites",
                            style: TextStyle(
                                fontSize: 18.0, color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "All Books and Publications",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Expanded(
                  child: BooksAndPublicationsWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
