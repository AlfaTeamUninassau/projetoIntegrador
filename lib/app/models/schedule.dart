enum ScheduleStatus { available, unavailable }

class Schedule {
  String date;
  String time;
  String name;
  String vehicle;
  String brand;
  String model;
  String plate;
  String schedule;
  ScheduleStatus status;

  Schedule({
    required this.date,
    required this.time,
    required this.name,
    required this.vehicle,
    required this.brand,
    required this.model,
    required this.plate,
    required this.schedule,
    required this.status,
  });

  String statusDisplay() {
    switch (status) {
      case ScheduleStatus.available:
        return 'Disponível';
      case ScheduleStatus.unavailable:
        return 'Indisponível';
      default:
        return 'Pendente';
    }
  }
}
