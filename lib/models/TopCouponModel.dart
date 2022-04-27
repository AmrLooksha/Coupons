class TopCouponModel {
  final int id;
  final String coupns_name;
  final int quantity;
  final int used_copun;
  final String copunimgname;
  final String coupns_desc;

  TopCouponModel({
    required this.id,
    required this.coupns_name,
    required this.quantity,
    required this.used_copun,
    required this.copunimgname,
    required this.coupns_desc,
  });
  factory TopCouponModel.fromJson(jsonData) {
    return TopCouponModel(
      id: jsonData['id'],
      coupns_name: jsonData['coupns_name'],
      quantity: jsonData['quantity'],
      used_copun: jsonData['used_copun'],
      copunimgname: jsonData['Copunimgname'],
      coupns_desc: jsonData['coupns_desc'],
    );
  }
}
