import 'package:flutter/material.dart';

class SearchBarPage extends SearchDelegate {
  final books = [
    "Nitrogen Fertilizer",
    "Potassium per Manganate",
    "Proper use of Nitrogen phosphate",
    "Fighting Fall Army Worm",
    "Animal Farming, an untouched agricultural venture in Ghana",
    "Using right tools for poultry farming",
    "Agricultural farming, the right way",
    "Agriculture, Africa's way to grow its economy",
    "Sodium phosphate and its use in fertilizing",
    "Manure production",
  ];
  final recentBooks = [
    "Sodium Phosphate and its usage",
    "Proper use of Nitrogen phosphate",
    "Fighting Fall Army Worm",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentBooks
        : books.where((text) => text.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          //showResults(context);
        },
        leading: Icon(Icons.book),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
