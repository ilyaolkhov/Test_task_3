import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';

class MasterMode extends StatefulWidget {
  const MasterMode({
    super.key,
  });
  @override
  State<MasterMode> createState() => _MasterModeState();
}

class _MasterModeState extends State<MasterMode> {
  List<Widget> master = <Widget>[
    Text('Используется'),
    Text('Не используется'),
  ];
  final List<bool> _selectedMaster = <bool>[
    true,
    false,
  ];
  bool vertical = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Режим мастер',
          style: TextStyle(
              color: darkGrey, 
              fontSize: 16, 
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16,),
        ToggleButtons(
          direction: vertical ? Axis.vertical : Axis.horizontal,
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < _selectedMaster.length; i++) {
                _selectedMaster[i] = i == index;
              }
            });
          },
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          selectedBorderColor: tmnBlue,
          selectedColor: Colors.white,
          fillColor: tmnBlue,
          color: tmnBlue,
          disabledBorderColor: tmnBlue,
          borderColor: tmnBlue,
          constraints: const BoxConstraints(
              minHeight: 40.0, minWidth: 180, maxWidth: double.infinity),
          isSelected: _selectedMaster,
          children: master,
        ),
      ],
    );
  }
}
