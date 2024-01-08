import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleButton extends StatelessWidget {
  final int toggleIndex;
  final Function(int)? onToggle;
  final List<String> labels;

  ToggleButton({
    required this.toggleIndex,
    required this.onToggle,
    required this.labels,
  });

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 200.0,
      minHeight: 30.0,
      initialLabelIndex: toggleIndex,
      inactiveBgColor: Colors.white,
      inactiveFgColor: Color(0xFF5192AC),
      activeBgColor: [Color(0xFF5192AC)],
      activeFgColor: Colors.white,
      borderColor: [Color(0xFF5192AC)],
      borderWidth: 2.0,
      labels: labels,
      cornerRadius: 30.0,
      onToggle: (index) {
        if (onToggle != null) {
          onToggle!(index!);
        }
      },
    );
  }
}
