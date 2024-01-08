import 'package:json_annotation/json_annotation.dart';

part 'user_register.g.dart';

@JsonSerializable()
class UserRegister {
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
  @JsonKey(name: '_id')
  String? id;
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  List<dynamic>? address;
  List<dynamic>? transactionDetails;
  @JsonKey(name: '__v')
  int? v;

  UserRegister({
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
    this.id,
    this.wishlist,
    this.cart,
    this.address,
    this.transactionDetails,
    this.v,
  });

  factory UserRegister.fromJson(Map<String, dynamic> json) {
    return _$UserRegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserRegisterToJson(this);
}
