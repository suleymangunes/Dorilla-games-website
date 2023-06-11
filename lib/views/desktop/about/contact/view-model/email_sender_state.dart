import 'package:dorilla_games/views/_products/enum/service_status_enum.dart';

abstract class IEmailSenderState {
  final SenderStatus status;

  IEmailSenderState(this.status);
}

class EmailSenderInitialState extends IEmailSenderState {
  EmailSenderInitialState() : super(SenderStatus.initial);
}

class EmailSenderLoadingState extends IEmailSenderState {
  EmailSenderLoadingState() : super(SenderStatus.loading);
}

class EmailSenderCompletedState extends IEmailSenderState {
  EmailSenderCompletedState() : super(SenderStatus.completed);
}

class EmailSenderErrorState extends IEmailSenderState {
  EmailSenderErrorState() : super(SenderStatus.error);
}
