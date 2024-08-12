import 'package:freezed_annotation/freezed_annotation.dart';

part 'hide_select_state.freezed.dart';

@freezed
class HideSelectState with _$HideSelectState {
  const factory HideSelectState({
    int? selectedFieldIndex,
    int? selectedCardIndex,
  }) = _HideSelectState;

  const HideSelectState._();

  bool get canSubmit => selectedFieldIndex != null && selectedCardIndex != null;
}
