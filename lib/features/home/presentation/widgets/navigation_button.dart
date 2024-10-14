import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mytrips/shared/theme/text_styles.dart';

class NavigationButton extends ConsumerWidget {
  final VoidCallback onPressed;
  final String text;

  const NavigationButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.h4.copyWith(color: Colors.black),
        ));
  }
}
