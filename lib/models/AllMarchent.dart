class MarchentModel {
  final int id;
  final String company_img;
  MarchentModel({required this.id, required this.company_img});
  factory MarchentModel.fromJson(jsonData) {
    return MarchentModel(
        id: jsonData['id'], company_img: jsonData['company_img']);
  }
}
