// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razor_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RazorPayModel _$RazorPayModelFromJson(Map<String, dynamic> json) =>
    RazorPayModel(
      id: json['id'] as String?,
      entity: json['entity'] as String?,
      amount: json['amount'] as int?,
      amountPaid: json['amount_paid'] as int?,
      amountDue: json['amount_due'] as int?,
      currency: json['currency'] as String?,
      receipt: json['receipt'] as String?,
      offerId: json['offer_id'],
      status: json['status'] as String?,
      attempts: json['attempts'] as int?,
      notes: json['notes'] as List<dynamic>?,
      createdAt: json['created_at'] as int?,
    );

Map<String, dynamic> _$RazorPayModelToJson(RazorPayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entity': instance.entity,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'amount_due': instance.amountDue,
      'currency': instance.currency,
      'receipt': instance.receipt,
      'offer_id': instance.offerId,
      'status': instance.status,
      'attempts': instance.attempts,
      'notes': instance.notes,
      'created_at': instance.createdAt,
    };
