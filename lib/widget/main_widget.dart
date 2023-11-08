import 'package:flutter/material.dart';
import 'package:test_task/data/vending_machines_info.dart';
import 'package:test_task/theme/theme.dart';

class MainWidget extends StatefulWidget {
  final vendingInfo = VendingMachinesInfo();
  MainWidget({
    super.key,
  });

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  static const spaceBox = SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A005AA8),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              widget.vendingInfo.type,
              style: const TextStyle(color: midGrey),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.vendingInfo.numberMachines.toString(),
                        style: const TextStyle(fontSize: 25, color: darkGrey),
                      ),
                      spaceBox,
                      const Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Color.fromARGB(255, 249, 120, 121),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Не работает',
                            style: textFontSize14,
                          ),
                        ],
                      ),
                      spaceBox,
                      Text(
                        widget.vendingInfo.location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 2,
                  color: background,
                ),
                const SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Тип шины',
                            style: textFontSize14,
                          ),
                          Text(
                            widget.vendingInfo.typeOfTire,
                            style: textFontSize14,
                          )
                        ],
                      ),
                      spaceBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Уровень сигнала',
                            style: textFontSize14,
                          ),
                          Text(
                            widget.vendingInfo.levelSignal,
                            style: textFontSize14,
                          )
                        ],
                      ),
                      spaceBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Идентификатор',
                            style: textFontSize14,
                          ),
                          Text(
                            widget.vendingInfo.id.toString(),
                            style: textFontSize14,
                          )
                        ],
                      ),
                      spaceBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Модем',
                            style: textFontSize14,
                          ),
                          Text(
                            widget.vendingInfo.modem.toString(),
                            style: textFontSize14,
                          )
                        ],
                      ),
                      spaceBox,
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
