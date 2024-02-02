class CartEditQuantityModel {
  String? message;
  int? newQuantity;
  int? newSubtotal;
  int? salePrice;

  CartEditQuantityModel(
      {this.message, this.newQuantity, this.newSubtotal, this.salePrice});

  CartEditQuantityModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    newQuantity = json['newQuantity'];
    newSubtotal = json['newSubtotal'];
    salePrice = json['salePrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['newQuantity'] = this.newQuantity;
    data['newSubtotal'] = this.newSubtotal;
    data['salePrice'] = this.salePrice;
    return data;
  }
}
