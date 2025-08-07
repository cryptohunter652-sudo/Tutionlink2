hereimport '../models/tuition.dart';

class TuitionProvider {
  List<Tuition> _tuitions = [];

  List<Tuition> get tuitions => _tuitions;

  void addTuition(Tuition tuition) {
    _tuitions.add(tuition);
  }
}
