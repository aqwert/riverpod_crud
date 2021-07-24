import 'package:freezed_annotation/freezed_annotation.dart';

part 'dated_identity_data.freezed.dart';

/// Data class to hold the date and id of an entity
@freezed
class DatedIdentityData
    with _$DatedIdentityData, Comparable<DatedIdentityData> {
  const factory DatedIdentityData({
    required DateTime date,
    required String id,
  }) = _DatedIdentityData;

  const DatedIdentityData._();

  @override
  int compareTo(DatedIdentityData other) {
    return date.compareTo(other.date);
  }
}
