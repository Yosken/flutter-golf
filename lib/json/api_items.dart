// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'api_items.g.dart';

@JsonSerializable()
class Results {
  Results({
    required this.hits,
    // ignore: non_constant_identifier_names
    required this.Items,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);

  final int? hits;

  // ignore: non_constant_identifier_names
  final List<Result>? Items;
}

@JsonSerializable()
class Result {
  Result({
    //ignore: non_constant_identifier_names
    required this.Item,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  //ignore: non_constant_identifier_names
  final CourseInfo? Item;
}

@JsonSerializable()
class CourseInfo {
  CourseInfo({
    required this.golfCourseId,
    required this.golfCourseName,
    required this.golfCourseImageUrl,
    required this.latitude,
    required this.longitude,
    required this.golfCourseAbbr,
    required this.evaluation,
  });

  factory CourseInfo.fromJson(Map<String, dynamic> json) =>
      _$CourseInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseInfoToJson(this);

  final int? golfCourseId;
  final String? golfCourseName;
  final String? golfCourseImageUrl;
  final double? latitude;
  final double? longitude;
  final String? golfCourseAbbr;
  final double? evaluation;
}
