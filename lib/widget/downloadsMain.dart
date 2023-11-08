import 'package:flutter/material.dart';
import 'package:test_task/theme/theme.dart';
import 'package:test_task/widget/liquidProdressBar.dart';

class DownloadsMainWidget extends StatelessWidget {
  const DownloadsMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LiquiProgressBar(),
          const SizedBox(width: 16,),
          Column(mainAxisAlignment: MainAxisAlignment.end,
          
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(195, 48),
                    primary: tmnBlue,
                    side: const BorderSide(color: tmnBlue, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Загрузка',
                    style: TextStyle(
                        color: tmnBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),),
                  const SizedBox(height: 16,),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(195, 48),
                    primary: tmnBlue,
                    side: const BorderSide(color: tmnBlue, width: 2),
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Инвентаризация',
                    style: TextStyle(
                        color: tmnBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),),
            ],
          )
        ],
      ),
    );
  }
}
