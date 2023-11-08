import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';
import 'package:test_task/widget/Finance/financeList.dart';
import 'package:test_task/widget/bottomSheet/maimBottomSheet.dart';
import 'package:test_task/widget/downloadsMain.dart';
import 'package:test_task/widget/events/listTitle.dart';
import 'package:test_task/widget/main_widget.dart';

class VendingMachines extends StatefulWidget {
  const VendingMachines({super.key});

  @override
  State<VendingMachines> createState() => _VendingMachinesState();
}

class _VendingMachinesState extends State<VendingMachines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        surfaceTintColor: background,
        backgroundColor: background,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: darkGrey,
            )),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => MainBottomSheet());
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: darkGrey,
            ),
          ),
        ],
      ),
      body: const BodyScreen(),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  static const spaceWidget = SizedBox(
    height: 24,
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Торговые автоматы',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w700, color: darkGrey),
            ),
            spaceWidget,
            MainWidget(),
            spaceWidget,
            DownloadsMainWidget(),
            spaceWidget,
            Text(
              'События',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: darkGrey),
            ),
            SizedBox(
              height: 16,
            ),
            ListTitleWidget(),
            spaceWidget,
            FinanceList(),
            SizedBox(height: 49)
          ],
        ),
      ),
    );
  }
}
