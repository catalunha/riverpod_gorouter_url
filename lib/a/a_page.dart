import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/controller/providers.dart';

import 'controller/providers.dart';
import 'widgets/a_widget.dart';

class APage extends HookConsumerWidget {
  final String homeValue;
  const APage({super.key, required this.homeValue});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('+++ PAGE A build');
    ref.watch(aProvider);
    ref.watch(homeGetProvider(homeValue));
    // ref.watch(homeProvider);
    ref.listen(homeGetProvider(homeValue), (_, next) async {
      ref.watch(homeProvider.notifier).change(next.requireValue);
    });
    log('--- PAGE A build');
    return Scaffold(
      appBar: AppBar(title: Text('Page A')),
      body: Column(
        children: [
          Text('I first get the value of homeProvider'),
          Text('homeProvider: ${ref.read(homeProvider)}'),
          Text('And I update the value of aProvider'),
          ElevatedButton(
            onPressed: () {
              ref.read(aProvider.notifier).change('456');
            },
            child: Text('Set aProvider to ${ref.watch(aProvider)}'),
          ),

          AWidget(),
        ],
      ),
    );
  }
}
