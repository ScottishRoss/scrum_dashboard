import 'package:collection/collection.dart';
import 'package:collection/src/iterable_extensions.dart';

class CompletedSprint {
  CompletedSprint({
    required this.sprintNumber,
    required this.completedDate,
    required this.plannedSP,
    required this.completedSP,
    required this.velocity,
  });
  final int sprintNumber;
  final String completedDate;
  final double plannedSP, completedSP, velocity;
}

List testCompletedSprints = [
  CompletedSprint(
    sprintNumber: 1,
    completedDate: '2021-11-24',
    completedSP: 32,
    plannedSP: 32,
    velocity: 32,
  ),
  CompletedSprint(
    sprintNumber: 2,
    completedDate: '2021-12-08',
    completedSP: 32,
    plannedSP: 42,
    velocity: 64,
  ),
  CompletedSprint(
    sprintNumber: 3,
    completedDate: '2021-12-22',
    completedSP: 42,
    plannedSP: 20,
    velocity: 108,
  ),
  CompletedSprint(
    sprintNumber: 4,
    completedDate: '2022-01-05',
    completedSP: 20,
    plannedSP: 24,
    velocity: 128,
  ),
];

double getAverageVelocity() {
  var velocities = testCompletedSprints.map((e) => e.velocity!).toList();
  double sum = velocities.fold(0, (p, c) => p + c);
  return sum / velocities.length;
}
