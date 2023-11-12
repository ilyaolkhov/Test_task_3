import 'package:flutter/material.dart';
import 'package:test_task/data/price_list_data.dart';
import 'package:test_task/theme/theme.dart';

class PriceList extends StatefulWidget {
  const PriceList({super.key});

  @override
  State<PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _first = [];
  final List<TextEditingController> _second = [];
  final List<bool> _firstCheck = [];
  final List<bool> _secondCheck = [];
  List<Price> price = PriceUtils.getPrice();
  @override
  void initState() {
    for (int index = 0; index < price.length; index++) {
      _firstCheck.add(true);
      _secondCheck.add(true);
      _first.add(TextEditingController());
      _second.add(TextEditingController());
      if (price[index].priceID.toString() != 'null') {
        _first[index].text = price[index].priceID.toString();
      } else {
        _first[index].text = "";
      }
      if (price[index].priceCount.toString() != 'null') {
        _second[index].text = price[index].priceCount.toString();
      } else {
        _second[index].text = "";
      }
    }
    super.initState();
  }

  void checkInt() {
    initState();
    for (int index = 0; index < price.length; index++) {
      if (int.tryParse(_first[index].text) == null) {
        setState(() {
          _firstCheck[index] = false;
        });
      }
      if (int.tryParse(_second[index].text) == null) {
        setState(() {
          _secondCheck[index] = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<_PriceListState> _PriceListKey = GlobalKey();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Прайс листы',
          style: TextStyle(
              color: darkGrey, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Последняя синхронизация с модемом'),
            Text('1 час назад'),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Text('#',
                style: TextStyle(
                    fontSize: 14, color: midGrey, fontWeight: FontWeight.w300)),
            SizedBox(
              width: 140,
            ),
            Text('Цена',
                style: TextStyle(
                    fontSize: 14, color: midGrey, fontWeight: FontWeight.w300)),
          ],
        ),
        Container(
          height: 150,
          child: ListView.builder(
              itemCount: price.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 60,
                          height: 45,
                          child: Center(
                            child: TextFormField(
                              cursorHeight: 1,
                              cursorColor: tmnBlue,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.phone,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(1),
                                labelStyle: const TextStyle(color: midGrey),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFD9E2F1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xFFD9E2F1)),
                                ),
                              ),
                              controller: _first[index],
                            ),
                          )),
                      SizedBox(
                          width: 110,
                          height: 45,
                          child: TextFormField(
                            cursorHeight: 1,
                            cursorColor: tmnBlue,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(1),
                              labelStyle: const TextStyle(color: midGrey),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFD9E2F1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFD9E2F1)),
                              ),
                            ),
                            controller: _second[index],
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _firstCheck.removeAt(index);
                              _secondCheck.removeAt(index);
                              _first.removeAt(index);
                              _second.removeAt(index);
                              price.removeAt(index);
                            });
                          },
                          icon: const Icon(
                            Icons.cancel_outlined,
                            color: tmnRed,
                          ))
                    ],
                  ),
                );
              })),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 30),
            primary: tmnBlue,
            side: const BorderSide(color: tmnBlue, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            setState(() {
              _firstCheck.add(true);
              _secondCheck.add(true);
              _first.add(TextEditingController());
              _second.add(TextEditingController());
              price.add(Price.nullPrice());
              _first[price.length - 1].text = "";
              _second[price.length - 1].text = "";
            });
          },
          child: const Text('Добавить строку',
              style: TextStyle(
                  fontSize: 14, color: tmnBlue, fontWeight: FontWeight.w300)),
        ),
        const SizedBox(
          height: 50,
        ),

      ],
    );
  }
}
