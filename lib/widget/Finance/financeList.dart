import 'package:flutter/material.dart';
import 'package:test_task/data/finance.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/theme/theme.dart';

class FinanceList extends StatefulWidget {
  const FinanceList({super.key});

  @override
  State<FinanceList> createState() => _FinanceListState();
}

class _FinanceListState extends State<FinanceList> {
  List<Finance> finance = FinanceInfo.getFinanceInfo();
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, height: 72,
      child: ListView.builder(itemCount: finance.length,shrinkWrap: true, scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0A005AA8),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            height: 72,
            width: 153,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  CircleAvatar( radius: 20,
                    backgroundColor: Color(0xFF208CEF).withOpacity(0.3),
                    child: (finance[index].description == 'Деньги в ТА')
                        ? SvgPicture.asset('assets/svg/money_icon.svg', height: 20, width: 25,)
                        : SvgPicture.asset('assets/svg/sdacha.svg', height: 20, width: 25,),
                  ),
                  SizedBox(width: 8,),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(finance[index].money.toString(), style: TextStyle(color: darkGrey, fontSize: 14, fontWeight: FontWeight.w500),),
                    Text(finance[index].description, style: TextStyle(color: darkGrey, fontSize: 14, fontWeight: FontWeight.w300))
                  ],)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
