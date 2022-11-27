import 'package:flutter_golf/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter/material.dart';

String _input = '';

class TextFieldForSearchPage extends ConsumerWidget {
  const TextFieldForSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      enabled: true,
      onChanged: (input) {
        _input = input;
      },
      onEditingComplete: () {
        ref.read(searchWardProvider.notifier).state = _input;
      },
      decoration: inputDecorationForSearchPage
    );
  }
}
