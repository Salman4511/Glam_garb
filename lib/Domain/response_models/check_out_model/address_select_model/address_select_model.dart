import 'package:json_annotation/json_annotation.dart';

part 'address_select_model.g.dart';

@JsonSerializable()
class AddressSelectModel {
  String? message;

  AddressSelectModel({this.message});

  factory AddressSelectModel.fromJson(Map<String, dynamic> json) {
    return _$AddressSelectModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressSelectModelToJson(this);
}
