class UserModel {
  UserModel({
    required this.id,
    required this.name,
    this.email,
    this.phone,
  });
  final int id;
  final String name;
  final String? email;
  final String? phone;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
    );
  }
}
