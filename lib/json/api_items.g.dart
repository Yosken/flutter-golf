// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      hits: json['hits'] as int?,
      Items: (json['Items'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'hits': instance.hits,
      'Items': instance.Items,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      Item: json['Item'] == null
          ? null
          : CourseInfo.fromJson(json['Item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'Item': instance.Item,
    };

CourseInfo _$CourseInfoFromJson(Map<String, dynamic> json) => CourseInfo(
      golfCourseId: json['golfCourseId'] as int?,
      golfCourseName: json['golfCourseName'] as String?,
      golfCourseImageUrl: json['golfCourseImageUrl'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      golfCourseAbbr: json['golfCourseAbbr'] as String?,
      evaluation: (json['evaluation'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CourseInfoToJson(CourseInfo instance) =>
    <String, dynamic>{
      'golfCourseId': instance.golfCourseId,
      'golfCourseName': instance.golfCourseName,
      'golfCourseImageUrl': instance.golfCourseImageUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'golfCourseAbbr': instance.golfCourseAbbr,
      'evaluation': instance.evaluation,
    };
