import 'package:flutter/material.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_golf/pages/importer_pages.dart';


class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text(appbarTitle),
        ),
        body: pages[pageIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index){
            ref.read(pageIndexProvider.notifier).state = index;
          },
          selectedIndex: pageIndex,
          destinations: navigationBarList,
          backgroundColor: Colors.green.withOpacity(0.3),
        ));
  }
}
