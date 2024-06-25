class SavePresensiResponseModel {
  bool success;
  String message;
  Data data;

  SavePresensiResponseModel({required this.success, required this.message, required this.data});

  factory SavePresensiResponseModel.fromJson(Map<String, dynamic> json) {
    return SavePresensiResponseModel(
      success: json['success'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  int id;
  int userId;
  String latitude;
  String longitude;
  String tanggal;
  String masuk;
  String? pulang;  // This field can be null
  String createdAt;
  String updatedAt;

  Data({
    required this.id,
    required this.userId,
    required this.latitude,
    required this.longitude,
    required this.tanggal,
    required this.masuk,
    this.pulang,  // This field can be null
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      userId: json['user_id'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      tanggal: json['tanggal'],
      masuk: json['masuk'],
      pulang: json['pulang'],  // This field can be null
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
