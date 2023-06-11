import 'package:flutter_bloc/flutter_bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(2);

  void updateActiveButton(int pageNum) {
    emit(pageNum);
  }
}
