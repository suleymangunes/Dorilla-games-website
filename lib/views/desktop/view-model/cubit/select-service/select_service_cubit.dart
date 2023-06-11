import 'package:flutter_bloc/flutter_bloc.dart';

class IsSelectedGame extends Cubit<bool> {
  IsSelectedGame() : super(false);

  void select() {
    emit(!state);
  }
}

class IsSelectedApp extends Cubit<bool> {
  IsSelectedApp() : super(false);

  void select() {
    emit(!state);
  }
}

class IsSelectedWeb extends Cubit<bool> {
  IsSelectedWeb() : super(false);

  void select() {
    emit(!state);
  }
}
