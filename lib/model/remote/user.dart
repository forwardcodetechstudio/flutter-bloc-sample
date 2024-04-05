class User {
  String? id;
  String? name;
  String? email;
  String? createdAt;

  User({this.id, this.name, this.email, this.createdAt});

  User.fromJson(dynamic json) {
    if (json['id'] is String) {
      id = json['id'] as String;
    }
    if (json['name'] is String) {
      name = json['name'] as String;
    }
    if (json['email'] is String) {
      email = json['email'] as String;
    }
    if (json['created_at'] is String) {
      createdAt = json['created_at'] as String;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['created_at'] = createdAt;
    return _data;
  }
}
