import 'package:json_annotation/json_annotation.dart';

part 'update_order.g.dart';

@JsonSerializable()
class UpdateOrder {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  UpdateOrder({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory UpdateOrder.fromJson(Map<String, dynamic> json) {
    return _$UpdateOrderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateOrderToJson(this);
}
