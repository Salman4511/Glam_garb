import 'package:json_annotation/json_annotation.dart';

import 'user_datum.dart';

part 'wallet_get_model.g.dart';

@JsonSerializable()
class WalletGetModel {
  List<UserDatum>? userData;
  int? quantity;
  List<dynamic>? transaction;

  WalletGetModel({this.userData, this.quantity, this.transaction});

  factory WalletGetModel.fromJson(Map<String, dynamic> json) {
    return _$WalletGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WalletGetModelToJson(this);
}
