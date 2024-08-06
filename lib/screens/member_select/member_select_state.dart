import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_select_state.freezed.dart';

@freezed
class MemberSelectState with _$MemberSelectState {
  const factory MemberSelectState({
    int? count,
  }) = _MemberSelectState;
}
