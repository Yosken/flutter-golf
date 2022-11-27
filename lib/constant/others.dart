import 'package:flutter/material.dart';
import 'importer_constant.dart';

const List<Widget> navigationBarList = [
  NavigationDestination(icon: Icon(Icons.home), label: 'home'),
  NavigationDestination(icon: Icon(Icons.search_rounded), label: 'search'),
  NavigationDestination(icon: Icon(Icons.comment), label: 'chat'),
  NavigationDestination(icon: Icon(Icons.score), label: 'score'),
];

///search page text field
const inputDecorationForSearchPage = InputDecoration(
  labelText: searchLabelText,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  labelStyle: TextStyle(color: Colors.lightGreen),
  floatingLabelStyle: TextStyle(color: Colors.green),
  prefixIcon: Icon(Icons.search),
);

///card for search page
final RoundedRectangleBorder cardShape =
RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));
