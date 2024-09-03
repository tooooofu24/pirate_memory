import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_setting_state.freezed.dart';

@freezed
class MemberSettingState with _$MemberSettingState {
  const factory MemberSettingState({
    @Default([]) List<String> playerNames,
  }) = _MemberSettingState;
}
