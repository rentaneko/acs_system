class Appointment {
  Appointment({
     this.id,
     this.customerId,
     this.wardId,
     this.staffId,
     this.promotionId,
     this.fullName,
     this.description,
     this.phone,
     this.address,
     this.date,
     this.time,
     this.quantity,
     this.note,
     this.status,
     this.createdDate,
  });
  late final int? id;
  late final int? customerId;
  late final int? wardId;
  late final int? staffId;
  late final int? promotionId;
  late final String? fullName;
  late final String? description;
  late final String? phone;
  late final String? address;
  late final String? date;
  late final String? time;
  late final int? quantity;
  late final String? note;
  late final int? status;
  late final String? createdDate;

  Appointment.fromJson(Map<String, dynamic> json){
    id = json['id'];
    customerId = json['customer_id'];
    wardId = json['ward_id'];
    staffId = json['staff_id'];
    promotionId = json['promotion_id'];
    fullName = json['full_name'];
    description = json['description'];
    phone = json['phone'];
    address = json['address'];
    date = json['date'];
    time = json['time'];
    quantity = json['quantity'];
    note = json['note'];
    status = json['status'];
    createdDate = json['created_date'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['customer_id'] = customerId;
    _data['ward_id'] = wardId;
    _data['staff_id'] = staffId;
    _data['promotion_id'] = promotionId;
    _data['full_name'] = fullName;
    _data['description'] = description;
    _data['phone'] = phone;
    _data['address'] = address;
    _data['date'] = date;
    _data['time'] = time;
    _data['quantity'] = quantity;
    _data['note'] = note;
    _data['status'] = status;
    _data['created_date'] = createdDate;
    return _data;
  }

  Map<String, String> toQuery() {
    final _data = <String, String>{};
    _data['customer_id'] = customerId.toString();
    _data['ward_id'] = wardId.toString();
    _data['full_name'] = fullName.toString();
    _data['description'] = description.toString();
    _data['phone'] = phone.toString();
    _data['address'] = address.toString();
    _data['date'] = date.toString();
    _data['time'] = time.toString();
    _data['quantity'] = quantity.toString();
    return _data;
  }
}