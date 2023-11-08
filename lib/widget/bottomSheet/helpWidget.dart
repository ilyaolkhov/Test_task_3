import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';

class HelpWidget extends StatefulWidget {
  const HelpWidget({super.key});

  @override
  State<HelpWidget> createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(color: tmnGreen.withOpacity(0.1)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
        child: Row(
          children: [
            Icon(
              Icons.done,
              color: tmnGreen,
              size: 32,
            ),
            Flexible(
                child: Text(
              'Изменения от 12.07.2021, 12:30 применены успешно',
              softWrap: true,
              style: textFontSize16w300,
            ))
          ],
        ),
      ),
    );
  }
}
