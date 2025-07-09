import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controller/providers.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log('+++ home build');
    ref.watch(homeProvider);
    log('--- home build');
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: Column(
        children: [
          Text(
            'On this page. I set my homeProvider and send just the value to the next page.',
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(homeProvider.notifier).change('123');
            },
            child: Text('Set HomeProvider to ${ref.watch(homeProvider)}'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/apage/${ref.watch(homeProvider)}');
            },
            child: Text('Go to PageA'),
          ),
        ],
      ),
    );
  }
}
