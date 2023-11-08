import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';
import 'package:test_task/widget/bottomSheet/styleTextFormField.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}
final Cash = TextEditingController();
final Cashless = TextEditingController();
bool isCheck = false;


class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Decimal position',
            style: TextStyle(
                color: darkGrey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomStyleTextField(text: 'Cash', controller: Cash,),
              const SizedBox(
                width: 16,
              ),
              CustomStyleTextField(text: 'Cashless', controller: Cashless,)
            ],
          ),
          const SizedBox(height: 24,),
          const Text(
            'Scale factor',
            style: TextStyle(
                color: darkGrey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomStyleTextField(text: 'Cash', controller: Cash,),
              const SizedBox(
                width: 16,
              ),
              CustomStyleTextField(text: 'Cashless', controller: Cashless,),
              
            ],
          ),
          Row(
                children: [
                  Checkbox(value: isCheck, autofocus: false, activeColor: Colors.white, checkColor: darkGrey,
                  onChanged: (bool? newValue){
                    setState(() =>isCheck = newValue!
                    );
                  }), Text('Включить звук', style: textFontSize16w300)
                ],
              )
        ],
      ),
    );
  }
}
