import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterIncrement> {
  CounterCubit() : super(CounterIncrement());

  int teamAScore = 0;
  int teamBScore = 0;

  void increment({required String team, required int buttonNumber}) {
    {
      if (team == 'A') {
        teamAScore += buttonNumber;
        emit(CounterIncrement());
      } else {
        teamBScore += buttonNumber;
        emit(CounterIncrement());
      }
    }
  }

  void reset() {
    teamAScore = 0;
    teamBScore = 0;
    emit(CounterIncrement());
  }
}
