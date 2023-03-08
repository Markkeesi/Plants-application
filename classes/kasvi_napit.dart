import 'package:flutter/material.dart';
import 'package:projekti/classeja/tehtavat.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:projekti/classeja/varjotehtava.dart';
import 'package:projekti/classeja/kultatehtavat.dart';
import 'package:projekti/classeja/kolibritehtava.dart';
import 'package:projekti/classeja/zebratehtava.dart';
import 'package:projekti/classeja/muulitehtavat.dart';
import 'package:projekti/classeja/pullotehtavat.dart';

class Peikonlehti extends StatefulWidget {
  const Peikonlehti({super.key});

  @override
  State<Peikonlehti> createState() => PeikonlehtiState();
}

class PeikonlehtiState extends State<Peikonlehti> {
  TehtavatPeikkoDataSource? peikkoDataSource;

  @override
  void initState() {
    peikkoDataSource = getCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Peikonlehti',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: peikkoDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Varjoviikuna extends StatefulWidget {
  const Varjoviikuna({super.key});

  @override
  State<Varjoviikuna> createState() => VarjoviikunaState();
}

class VarjoviikunaState extends State<Varjoviikuna> {
  TehtavatVarjoDataSource? varjoDataSource;

  @override
  void initState() {
    varjoDataSource = haeCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Varjoviikuna',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: varjoDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Kulta extends StatefulWidget {
  const Kulta({super.key});

  @override
  State<Kulta> createState() => KultaState();
}

class KultaState extends State<Kulta> {
  TehtavatKultaDataSource? kultaDataSource;

  @override
  void initState() {
    kultaDataSource = haetCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Kultaköynnös',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(
                    2,
                    2,
                  ),
                  blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: kultaDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            agendaStyle: AgendaStyle(
              appointmentTextStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Kolibri extends StatefulWidget {
  const Kolibri({super.key});

  @override
  State<Kolibri> createState() => KolibriState();
}

class KolibriState extends State<Kolibri> {
  TehtavatKolibriDataSource? kolibriDataSource;

  @override
  void initState() {
    kolibriDataSource = gettoCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Kolibrikukka',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(
                    2,
                    2,
                  ),
                  blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: kolibriDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Zebra extends StatefulWidget {
  const Zebra({super.key});

  @override
  State<Zebra> createState() => ZebraState();
}

class ZebraState extends State<Zebra> {
  TehtavatZebraDataSource? zebraDataSource;

  @override
  void initState() {
    zebraDataSource = gettCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Seebra Alokasia',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(
                    2,
                    2,
                  ),
                  blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: zebraDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Muuli extends StatefulWidget {
  const Muuli({super.key});

  @override
  State<Muuli> createState() => MuuliState();
}

class MuuliState extends State<Muuli> {
  TehtavatMuuliDataSource? muuliDataSource;

  @override
  void initState() {
    muuliDataSource = haCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Muulinkorva',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(
                    2,
                    2,
                  ),
                  blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: muuliDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}

class Pullo extends StatefulWidget {
  const Pullo({super.key});

  @override
  State<Pullo> createState() => PulloState();
}

class PulloState extends State<Pullo> {
  TehtavatPulloDataSource? pulloDataSource;

  @override
  void initState() {
    pulloDataSource = heatCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 255, 255, 255),
          shadows: [
            Shadow(
                color: Color.fromARGB(255, 5, 0, 0),
                offset: Offset(2, 2),
                blurRadius: 1),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'PulloJukka',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(
                    2,
                    2,
                  ),
                  blurRadius: 1),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imge/appbar_leafs.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),
      body: SfCalendar(
        dataSource: pulloDataSource,
        showWeekNumber: true,
        weekNumberStyle: const WeekNumberStyle(
            backgroundColor: Color.fromARGB(255, 0, 255, 13),
            textStyle: TextStyle(
              color: Colors.black,
            )),
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayCount: 2,
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            showAgenda: true,
            agendaItemHeight: 50,
            navigationDirection: MonthNavigationDirection.horizontal),
        showNavigationArrow: true,
        initialSelectedDate: DateTime.now(),
        cellBorderColor: const Color.fromARGB(255, 0, 255, 55),
        firstDayOfWeek: 1,
        cellEndPadding: 5,
      ),
    );
  }
}
