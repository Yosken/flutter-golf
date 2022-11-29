import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/json/api_items.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget makeCard(Result result) {
  final item = result.Item!;
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: InkWell(
      onTap: () {},
      child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          elevation: 4,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: cardShape,
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 400,
                child: Image(
                  image: NetworkImage(item.golfCourseImageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
              Text(item.golfCourseName!),
              Stack(
                children: [
                  Center(
                    child: RatingBar.builder(
                      //tapを無効
                      ignoreGestures: true,
                      itemSize: 48,
                      initialRating: item.evaluation!,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                      },
                    ),
                  ),
                  Center(
                      child: Text(
                    item.evaluation.toString(),
                    style: const TextStyle(
                        fontSize: 24, height: 2, fontWeight: FontWeight.bold),
                  )),
                ],
              )
            ],
          )),
    ),
  );
}
