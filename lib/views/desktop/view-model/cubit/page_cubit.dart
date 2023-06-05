import 'package:flutter_bloc/flutter_bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void updateActiveButton(int pageNum) {
    print("calist");
    print(pageNum);
    emit(pageNum);
  }
}
