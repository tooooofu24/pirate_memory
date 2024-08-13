import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/models/field.dart';

class FieldSelect extends StatelessWidget {
  const FieldSelect({
    required this.fields,
    required this.selectedIndex,
    required this.onSelect,
    required this.primaryColor,
    super.key,
  });

  final List<Field> fields;
  final int? selectedIndex;
  final void Function(int) onSelect;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    final notSelectedYet = selectedIndex == null;
    // フィールドが9つの場合は3列、それ以外は4列で表示する
    final crossAxisCount = fields.length == 9 ? 3 : 4;
    return GridView.count(
      childAspectRatio: 3 / 4,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 8,
      crossAxisSpacing: 6,
      shrinkWrap: true,
      children: List.generate(fields.length, (index) {
        final isSelected = selectedIndex == index;
        return InkWell(
          onTap: () => onSelect(index),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: isSelected
                  ? Border.all(
                      color: primaryColor,
                      width: 6,
                    )
                  : null,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Opacity(
                opacity: !isSelected && !notSelectedYet ? 0.60 : 1,
                child: Image.asset('assets/island.png'),
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Field>('fields', fields));
    properties.add(IntProperty('selectedIndex', selectedIndex));
    properties.add(
      ObjectFlagProperty<void Function(int p1)>.has('onSelect', onSelect),
    );
    properties.add(ColorProperty('primaryColor', primaryColor));
  }
}
