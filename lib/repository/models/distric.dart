
class District {
  District({
    this.id,
    this.name,
    this.cityId,
  });
  late final int? id;
  late final String? name;
  late final int? cityId;

  District.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    cityId = json['city_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['city_id'] = cityId;
    return _data;
  }
}