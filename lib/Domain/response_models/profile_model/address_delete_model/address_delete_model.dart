import 'package:json_annotation/json_annotation.dart';

part 'address_delete_model.g.dart';

@JsonSerializable()
class AddressDeleteModel {
  String? message;

  AddressDeleteModel({this.message});

  factory AddressDeleteModel.fromJson(Map<String, dynamic> json) {
    return _$AddressDeleteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressDeleteModelToJson(this);
}
