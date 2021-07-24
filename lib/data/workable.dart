import 'package:freezed_annotation/freezed_annotation.dart';

part 'workable.freezed.dart';
part 'workable.g.dart';

/// [Workable] represents the state of any model classes. Where work is being done
/// to mutate data using asyn functions an instance of [Workable] can inform the UI
/// as to the state of the model. i.e. if it is working disable buttons.
@freezed
class Workable with _$Workable {
  const factory Workable.ready() = ReadyState;
  const factory Workable.working() = WorkingState;
  const factory Workable.invalid() = InvalidState;
  const factory Workable.error([String? message]) = ErrorDetailState;

  const Workable._();

  factory Workable.fromJson(Map<String, dynamic> json) =>
      _$WorkableFromJson(json);
}

extension WorkableExt on Workable {
  bool get isReady => this is ReadyState;
  bool get isWorking => this is WorkingState;
  bool get isInvalid => this is InvalidState;
  bool get isError => this is ErrorDetailState;
}
