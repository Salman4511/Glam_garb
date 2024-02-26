// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserUpdateModel _$UserUpdateModelFromJson(Map<String, dynamic> json) =>
    UserUpdateModel(
      message: json['message'] as String?,
      updateData: json['updateData'] == null
          ? null
          : UpdateData.fromJson(json['updateData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateModelToJson(UserUpdateModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'updateData': instance.updateData,
    };
