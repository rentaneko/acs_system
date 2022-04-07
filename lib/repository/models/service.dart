/*class ServiceModel {
  final String id;
  final String typeId;
  final String name;
  final String description;
  final String price;
  final String status;

  ServiceModel({
    required this.id,
    required this.typeId,
    required this.name,
    required this.description,
    required this.price,
    required this.status,
  });
}*/

class Service {
  Service({
    this.id,
    this.name,
    this.content,
    this.imageUrl,
    this.status,
  });
  late final int? id;
  late final String? name;
  late final String? content;
  late final String? imageUrl;
  late final int? status;

  Service.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    content = json['content'];
    imageUrl = json['imageUrl'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['content'] = content;
    _data['imageUrl'] = imageUrl;
    _data['status'] = status;
    return _data;
  }
}
