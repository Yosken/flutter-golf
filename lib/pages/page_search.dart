import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchPageTextField,
      ],
    );
  }
}
