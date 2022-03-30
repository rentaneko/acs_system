import 'package:acs_1/models/appointment.dart';
import 'package:acs_1/models/order_detail.dart';

var listAppointment = [
  Appointment(
    fullname: 'Anh Ngọc',
    phone: '0897465132',
    address: '98/23 đường Ngô Quyền phường 10 quận 5',
    date: '21/03/2022',
    time: '9:30',
    quantity: '3',
    serviceType: 'Bảo trì',
    status: 'Hoàn tất',
  ),
  Appointment(
    fullname: 'Chị Uyên',
    phone: '0378285566',
    address: '213 đường S11 phường Tây thạnh quận tân phú',
    date: '23/03/2022',
    time: '13:00',
    quantity: '1',
    serviceType: 'Sửa chữa',
    status: 'Đã hủy',
  ),
  Appointment(
    fullname: 'Anh Tuấn',
    phone: '1234567890',
    address: '45/67/32 đường sơn kỳ phường sơn kỳ quận tân phú',
    date: '26/03/2022',
    time: '10:30',
    quantity: '2',
    serviceType: 'Vệ sinh máy',
    status: 'Hoàn tất',
  ),
  Appointment(
    fullname: 'Anh Tùng',
    phone: '0987654321',
    address: '78 đường kinh dương vương phường an lạc quận bình tân',
    date: '01/04/2022',
    time: '9:00',
    quantity: '2',
    serviceType: 'Vệ sinh máy',
    status: 'Đang chờ',
  ),
];

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
