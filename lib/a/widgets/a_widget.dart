import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../home/controller/providers.dart';
import '../controller/providers.dart';

class AWidget extends HookConsumerWidget {
  const AWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            context.go(
              '/apage/${ref.read(homeProvider)}/bpage/${ref.read(aProvider)}',
            );
          },
          child: Text('Go to B page'),
        ),
      ],
    );
  }
}
