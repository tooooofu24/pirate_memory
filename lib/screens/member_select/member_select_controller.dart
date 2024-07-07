import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberSelectController {
  final Map<String, int> options = {
    '2人': 2,
    '3人': 3,
    '4人': 4,
  };

  Future<void> goBack(
    BuildContext context,
  ) async {
    Navigator.pop(context);
  }

  Future<void> showPicker(BuildContext context) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoPicker(
            backgroundColor: Colors.white,
            itemExtent: 32,
            onSelectedItemChanged: (index) {},
            children: options.keys.map((value) {
              return Center(child: Text(value));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
