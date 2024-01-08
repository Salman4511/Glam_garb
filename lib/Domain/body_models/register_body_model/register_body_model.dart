class UserPassModel {
  String? email;
  String? name;
  int? phone;
  String? password;

  UserPassModel({this.email, this.name, this.phone, this.password});

  UserPassModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['password'] = this.password;
    return data;
  }
}
