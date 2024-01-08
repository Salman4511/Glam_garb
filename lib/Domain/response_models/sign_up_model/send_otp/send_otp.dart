import 'package:json_annotation/json_annotation.dart';

part 'send_otp.g.dart';

@JsonSerializable()
class SendOtp {
  String? message;
  String? otpCode;

  SendOtp({this.message, this.otpCode});

  factory SendOtp.fromJson(Map<String, dynamic> json) {
    return _$SendOtpFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendOtpToJson(this);
}
