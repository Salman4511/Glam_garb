import 'package:json_annotation/json_annotation.dart';

part 'user_login.g.dart';

@JsonSerializable()
class UserLogin {
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
  List<dynamic>? cart;
  List<dynamic>? address;
  List<dynamic>? transactionDetails;
  @JsonKey(name: '__v')
  int? v;

  UserLogin({
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

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return _$UserLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserLoginToJson(this);
}
