import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'cart.dart';

part 'user_datum.g.dart';

@JsonSerializable()
class UserDatum {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'Name')
  String? name;
  String? email;
  int? phone;
  String? password;
  @JsonKey(name: 'is_admin')
  int? isAdmin;
  @JsonKey(name: 'is_verified')
  bool? isVerified;
  @JsonKey(name: 'referral_code')
  int? referralCode;
  bool? referralPurchase;
  String? createdOn;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  int? wallet;
  List<dynamic>? wishlist;
  List<Cart>? cart;
  List<Address>? address;
  List<dynamic>? transactionDetails;
  @JsonKey(name: '__v')
  int? v;

  UserDatum({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.isAdmin,
    this.isVerified,
    this.referralCode,
    this.referralPurchase,
    this.createdOn,
    this.isBlocked,
    this.wallet,
    this.wishlist,
    this.cart,
    this.address,
    this.transactionDetails,
    this.v,
  });

  factory UserDatum.fromJson(Map<String, dynamic> json) {
    return _$UserDatumFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDatumToJson(this);
}
