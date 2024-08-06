import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/player.dart';

part 'member_setting_state.freezed.dart';

@freezed
class MemberSettingState with _$MemberSettingState {
  const factory MemberSettingState({
    @Default([]) List<Player> players,
  }) = _MemberSettingState;
}
