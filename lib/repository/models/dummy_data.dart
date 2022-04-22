
import 'package:acs_1/repository/models/appointment.dart';
import 'package:acs_1/repository/models/order_detail.dart';

var listOrder = [
  OrderDetail(
    serviceType: 'Bảo trì máy',
    status: 'Hoàn tất',
    time: '10:00 - 11:30',
    date: '28/02/2022',
  ),
  OrderDetail(
      serviceType: 'Bảo trì máy',
      status: 'Hoàn tất',
      time: '8:00 - 9:00',
      date: '13/03/2022'),
  OrderDetail(
      serviceType: 'Sữa chữa máy',
      status: 'Đã hủy',
      time: '14:30 - 15:00',
      date: '15/03/2022'),
  OrderDetail(
      serviceType: 'Vệ sinh máy',
      status: 'Đang chờ',
      time: '15:30',
      date: '02/04/2022'),
  OrderDetail(
      serviceType: 'Kiểm tra máy',
      status: 'Đang chờ',
      time: '11:00',
      date: '03/04/2022'),
];
