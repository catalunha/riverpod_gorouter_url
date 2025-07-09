import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/controller/providers.dart';

class BPage extends HookConsumerWidget {
  final String homeValue;
  final String aValue;
  const BPage({super.key, required this.homeValue, required this.aValue});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('+++ PAGE B build');

    log('--- PAGE B build');
    return Scaffold(
      appBar: AppBar(title: Text('Page B')),
      body: Column(
        children: [
          Text('Here I get Home Value and Value'),
          Text('homeValue: $homeValue'),
          Text('aValue: $aValue'),
          Text(
            'But since I already went through page A. I should have the aProvider with value filled in.',
          ),
          Text('homeProvider: ${ref.watch(homeProvider)}'),
        ],
      ),
    );
  }
}
