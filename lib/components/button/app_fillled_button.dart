import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/config/app_colors.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    required this.text,
    required this.onPressed,
    this.color = AppColors.primary,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color),
      ),
      child: Text(
        text,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
    properties
        .add(ObjectFlagProperty<VoidCallback>.has('onPressed', onPressed));
    properties.add(ColorProperty('color', color));
  }
}
