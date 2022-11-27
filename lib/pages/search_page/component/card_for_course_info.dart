import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/json/api_items.dart';



Widget makeCard(Result result) {
  final item = result.Item!;
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          elevation: 10,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: cardShape,
          child: Column(
            children: [
              Text(item.golfCourseName!),
            ],
          )),
    ),
  );
}