import 'package:json_annotation/json_annotation.dart';

import 'user_datum.dart';

part 'address_get_model.g.dart';

@JsonSerializable()
class AddressGetModel {
  List<UserDatum>? userData;
  int? quantity;

  AddressGetModel({this.userData, this.quantity});

  factory AddressGetModel.fromJson(Map<String, dynamic> json) {
    return _$AddressGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressGetModelToJson(this);
}
