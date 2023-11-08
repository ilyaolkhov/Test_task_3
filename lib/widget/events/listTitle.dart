import 'package:flutter/material.dart';
import 'package:test_task/data/events.dart';
import 'package:test_task/theme/theme.dart';

class ListTitleWidget extends StatefulWidget {
  ListTitleWidget({super.key});

  @override
  State<ListTitleWidget> createState() => _ListTitleWidgetState();
}

class _ListTitleWidgetState extends State<ListTitleWidget> {
  List<EventsM?> events = InfoEvents.getInfoEvents();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [tmnRed, Colors.white], stops: [0.01, 0.01]),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A005AA8),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        )
                      ]),
                  height: 48,
                  padding: const EdgeInsets.all(0),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 16, right: 4, top: -5),
                    minVerticalPadding: 0.0,
                    visualDensity: const VisualDensity(vertical: -4),
                    dense: true,
                    title: Text(
                      events[index]!.nameEvents,
                      style: const TextStyle(
                        color: darkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: events[index]!.description == null
                        ? const SizedBox()
                        : Text(
                            '${events[index]!.description}',
                            style: const TextStyle(
                                height: 0.8, fontSize: 12, color: midGrey),
                          ),
                    trailing: IconButton(
                      iconSize: 30,
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: const Expanded(
                          child: Icon(
                        Icons.chevron_right,
                        size: 25,
                        color: midGrey,
                      )),
                    ),
                    tileColor: Colors.white,
                    leading: Text(
                      events[index]!.time,
                      style: const TextStyle(
                          fontSize: 14,
                          color: midGrey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        OutlinedButton(style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 32),
                    primary: tmnBlue,
                    side: const BorderSide(color: tmnBlue, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),), onPressed: (){}, child: Text('Смотреть еще', style: TextStyle(color: tmnBlue, fontWeight: FontWeight.w300),))
      ],
    );
  }
}
