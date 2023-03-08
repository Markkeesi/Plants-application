import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TehtavatPeikkoDataSource extends CalendarDataSource<Tehtava> {
  TehtavatPeikkoDataSource(List<Tehtava> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay as bool;
  }

  @override
  String getSubject(int index) {
    return appointments![index].otsikko as String;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  String? getRecurrenceRule(int index) {
    return appointments![index].recurrenceRule;
  }

  @override
  Tehtava? convertAppointmentToObject(
      Tehtava? customData, Appointment appointment) {
    return Tehtava(
        from: appointment.startTime,
        to: appointment.endTime,
        otsikko: appointment.subject,
        background: appointment.color,
        isAllDay: appointment.isAllDay,
        recurrenceRule: appointment.recurrenceRule);
  }
}

TehtavatPeikkoDataSource getCalendarDataSource() {
  List<Tehtava> appointments = <Tehtava>[];

  final Tehtava recurrenceApp = Tehtava(
    from: DateTime.now(),
    to: DateTime.now(),
    otsikko: 'Veden vaihto',
    isAllDay: !false,
    background: const Color.fromARGB(255, 0, 0, 255),
    recurrenceRule: 'FREQ=WEEKLY;BYDAY=MO;COUNT=20',
  );

  appointments.add(recurrenceApp);

  return TehtavatPeikkoDataSource(appointments);
}

class Tehtava {
  Tehtava(
      {required this.from,
      required this.to,
      this.otsikko = '',
      this.isAllDay = false,
      this.background,
      this.recurrenceRule});

  DateTime from;
  DateTime to;
  String otsikko;
  bool isAllDay;
  Color? background;
  String? recurrenceRule;
}
