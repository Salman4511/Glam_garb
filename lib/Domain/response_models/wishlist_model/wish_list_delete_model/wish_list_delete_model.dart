class WishlistDeleteModel {
  String? mesage;

  WishlistDeleteModel({this.mesage});

  WishlistDeleteModel.fromJson(Map<String, dynamic> json) {
    mesage = json['mesage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mesage'] = this.mesage;
    return data;
  }
}
