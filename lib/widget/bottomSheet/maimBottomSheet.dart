import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';
import 'package:test_task/widget/bottomSheet/helpWidget.dart';
import 'package:test_task/widget/bottomSheet/masterMode.dart';
import 'package:test_task/widget/bottomSheet/price.dart';
import 'package:test_task/widget/bottomSheet/price_list.dart';

class MainBottomSheet extends StatefulWidget {
  const MainBottomSheet({super.key});

  @override
  State<MainBottomSheet> createState() => _MainBottomSheetState();
}

class _MainBottomSheetState extends State<MainBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 94.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Загрузка',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: darkGrey),
                  ),
                  IconButton(
                      iconSize: 40,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close, size: 35, color: darkGrey))
                ],
              ),
              SizedBox(
                height: 690,
                child: ListView(
                  children: [
                    HelpWidget(),
                    Price(),
                    SizedBox(
                      height: 24,
                    ),
                    MasterMode(),
                    SizedBox(
                      height: 24,
                    ),
                    PriceList(),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
