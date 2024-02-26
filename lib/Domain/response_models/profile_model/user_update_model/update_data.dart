import 'package:json_annotation/json_annotation.dart';

part 'update_data.g.dart';

@JsonSerializable()
class UpdateData {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  UpdateData({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory UpdateData.fromJson(Map<String, dynamic> json) {
    return _$UpdateDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateDataToJson(this);
}
