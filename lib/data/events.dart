// ignore: empty_constructor_bodies
class EventsM {
  String time;
  String nameEvents;
  String? description;
  EventsM(
      {required this.time,
      required this.nameEvents,
      required this.description});
}
class InfoEvents{
  static List<EventsM?> getInfoEvents() {
  return [EventsM(time: '14:00', nameEvents: 'Сейф переполнен', description: null),
  EventsM(time: '11:20', nameEvents: 'Сломался купюроприемник', description: '2341245'),
  EventsM(time: '14:00', nameEvents: 'Закончилась наличка', description: 'Toshiba снековый')
  ];
}

}

