import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/config/app_colors.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    required this.text,
    required this.onPressed,
    this.backGroundColor = AppColors.primary,
    this.textColor = Colors.white,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;
  final Color backGroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      color: backGroundColor,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('text', text));
    properties
        .add(ObjectFlagProperty<VoidCallback>.has('onPressed', onPressed));
    properties.add(ColorProperty('backGroundColor', backGroundColor));
    properties.add(ColorProperty('textColor', textColor));
  }
}
