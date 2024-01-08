// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOtp _$SendOtpFromJson(Map<String, dynamic> json) => SendOtp(
      message: json['message'] as String?,
      otpCode: json['otpCode'] as String?,
    );

Map<String, dynamic> _$SendOtpToJson(SendOtp instance) => <String, dynamic>{
      'message': instance.message,
      'otpCode': instance.otpCode,
    };
