import 'package:json_annotation/json_annotation.dart';

part 'razor_pay_model.g.dart';

@JsonSerializable()
class RazorPayModel {
  String? id;
  String? entity;
  int? amount;
  @JsonKey(name: 'amount_paid')
  int? amountPaid;
  @JsonKey(name: 'amount_due')
  int? amountDue;
  String? currency;
  String? receipt;
  @JsonKey(name: 'offer_id')
  dynamic offerId;
  String? status;
  int? attempts;
  List<dynamic>? notes;
  @JsonKey(name: 'created_at')
  int? createdAt;

  RazorPayModel({
    this.id,
    this.entity,
    this.amount,
    this.amountPaid,
    this.amountDue,
    this.currency,
    this.receipt,
    this.offerId,
    this.status,
    this.attempts,
    this.notes,
    this.createdAt,
  });

  factory RazorPayModel.fromJson(Map<String, dynamic> json) {
    return _$RazorPayModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RazorPayModelToJson(this);
}
