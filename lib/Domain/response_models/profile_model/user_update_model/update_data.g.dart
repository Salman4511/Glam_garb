// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateData _$UpdateDataFromJson(Map<String, dynamic> json) => UpdateData(
      acknowledged: json['acknowledged'] as bool?,
      modifiedCount: json['modifiedCount'] as int?,
      upsertedId: json['upsertedId'],
      upsertedCount: json['upsertedCount'] as int?,
      matchedCount: json['matchedCount'] as int?,
    );

Map<String, dynamic> _$UpdateDataToJson(UpdateData instance) =>
    <String, dynamic>{
      'acknowledged': instance.acknowledged,
      'modifiedCount': instance.modifiedCount,
      'upsertedId': instance.upsertedId,
      'upsertedCount': instance.upsertedCount,
      'matchedCount': instance.matchedCount,
    };
