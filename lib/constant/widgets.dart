import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';

///page_search
const Widget _searchPageTextField = TextField(
  decoration: InputDecoration(
    labelText: searchLabelText,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    labelStyle: TextStyle(color: Colors.lightGreen),
    floatingLabelStyle: TextStyle(color: Colors.green),
    prefixIcon: Icon(Icons.search),
  ),
);
final Widget searchPageTextField = Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8)
    ),
    child: _searchPageTextField,
  ),
);