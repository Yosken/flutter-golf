import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final asyncApiData = ref.watch(searchCourseInfoFutureProvider);

    return Column(
      children: [
        searchPageTextField,
        asyncApiData.when(
          data: (value){
            return const  Text('success');
          },
          error: (error, stack) => Center(child: Text(error.toString()),),
          loading: () {
            return const CircularProgressIndicator();
          }
        ),
      ],
    );
  }
}
