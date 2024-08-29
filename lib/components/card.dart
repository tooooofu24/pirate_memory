import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.image,
    this.onTap,
    this.disabled = false,
    this.isSelected = false,
    this.primaryColor = Colors.blue,
    super.key,
  });

  final void Function()? onTap;
  final Color primaryColor;
  final bool isSelected;
  final Image image;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: isSelected
              ? Border.all(
                  color: primaryColor,
                  width: 4,
                )
              : Border.all(
                  color: Colors.grey,
                ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Opacity(
            opacity: disabled ? 0.60 : 1,
            child: image,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<void Function()>.has('onTap', onTap));
    properties.add(ColorProperty('primaryColor', primaryColor));
    properties.add(DiagnosticsProperty<bool>('isSelected', isSelected));
    properties.add(DiagnosticsProperty<bool>('disabled', disabled));
  }
}
