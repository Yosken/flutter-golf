import 'package:flutter/material.dart';
import 'package:flutter_golf/model/search_page_text_field.dart';

///page_search
final Widget searchPageTextField = Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8)
    ),
    child: const TextFieldForSearchPage(),
  ),
);