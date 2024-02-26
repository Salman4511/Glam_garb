import 'package:json_annotation/json_annotation.dart';

part 'adress_add_model.g.dart';

@JsonSerializable()
class AdressAddModel {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  AdressAddModel({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory AdressAddModel.fromJson(Map<String, dynamic> json) {
    return _$AdressAddModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdressAddModelToJson(this);
}
