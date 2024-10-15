import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBackButton extends ConsumerWidget {
  final VoidCallback onPressed;

  const CustomBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      tooltip: 'Back',
      icon: const Icon(
        Icons.arrow_circle_left_outlined,
        color: Colors.black,
        size: 32,
      ),
      onPressed: onPressed,
    );
  }
}
