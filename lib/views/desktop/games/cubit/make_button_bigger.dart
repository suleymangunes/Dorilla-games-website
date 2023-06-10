import 'package:flutter_bloc/flutter_bloc.dart';

class MakeButtonBigger extends Cubit<bool> {
  MakeButtonBigger() : super(false);

  void changeSize(bool newState) {
    emit(newState);
  }
}
