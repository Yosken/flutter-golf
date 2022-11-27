import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_golf/pages/search_page/model/search_course_info.dart';
import 'package:flutter_golf/constant/importer_constant.dart';

const int firstPageIndex = 0;
final pageIndexProvider = StateProvider((ref) => firstPageIndex);

final searchWardProvider = StateProvider((ref) => firstSearchWard);

final searchCourseInfoFutureProvider = FutureProvider((ref) async {
  final searchWard = ref.watch(searchWardProvider);
  return searchGolfCourse(searchWard);
});