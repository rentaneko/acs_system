class Ward {
  Ward({
    this.id,
    this.name,
    this.districtId,
  });
  late final int? id;
  late final String? name;
  late final int? districtId;

  Ward.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    districtId = json['district_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['district_id'] = districtId;
    return _data;
  }
}