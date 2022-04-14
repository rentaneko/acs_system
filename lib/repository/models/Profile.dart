class Profile {
  int? id;
  int? userId;
  String? fullName;
  String? email;
  String? address;
  String? phone;
  String? username;
  String? password;

  Profile(
      {this.id,
        this.userId,
        this.fullName,
        this.email,
        this.address,
        this.phone,
        this.username,
        this.password
      });

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    fullName = json['fullName'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['address'] = this.address;
    data['phone'] = this.phone;
    return data;
  }

  Map<String, dynamic> toQuery() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['email'] = email;
    data['address'] = address;
    data['phone'] = phone;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}