import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'component/card_for_course_info.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncApiData = ref.watch(searchCourseInfoFutureProvider);

    return Column(
      children: [
        searchPageTextField,
        asyncApiData.when(
            data: (value) {
              final results = value.Items;
              return Expanded(
                child: ListView.builder(
                    itemCount: value.hits,
                    itemBuilder: (BuildContext context, int index) {
                      final courseInfo = results![index];
                      return makeCard(courseInfo);
                    }),
              );
              // final firstResult = results![0];
              // final courseInfo = firstResult.Item!;
              // return Text(courseInfo.golfCourseName!);
            },
            error: (error, stack) => Center(
                  child: Text(error.toString()),
                ),
            loading: () {
              return const CircularProgressIndicator();
            }),
      ],
    );
  }
}
