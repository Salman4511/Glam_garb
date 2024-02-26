// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdressAddModel _$AdressAddModelFromJson(Map<String, dynamic> json) =>
    AdressAddModel(
      acknowledged: json['acknowledged'] as bool?,
      modifiedCount: json['modifiedCount'] as int?,
      upsertedId: json['upsertedId'],
      upsertedCount: json['upsertedCount'] as int?,
      matchedCount: json['matchedCount'] as int?,
    );

Map<String, dynamic> _$AdressAddModelToJson(AdressAddModel instance) =>
    <String, dynamic>{
      'acknowledged': instance.acknowledged,
      'modifiedCount': instance.modifiedCount,
      'upsertedId': instance.upsertedId,
      'upsertedCount': instance.upsertedCount,
      'matchedCount': instance.matchedCount,
    };
