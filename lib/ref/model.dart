

class Model {
  String name;
  String phone;
  String email;
  Model({this.name, this.phone, this.email});
  Model.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        phone =json['phone'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
  };
}