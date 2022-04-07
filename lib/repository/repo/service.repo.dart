
import 'package:acs_1/repository/apis/service.api.dart';
import 'package:acs_1/repository/models/distric.dart';
import 'package:acs_1/repository/models/ward.dart';

import '../models/city.dart';
import '../models/service.dart';

class ServiceRepo {
  final ServiceApi serviceApi;

  ServiceRepo(this.serviceApi);

  Future<List<Service>?> getService() async {
    var res = await serviceApi.getServices();
    return res?.success == true ? List.from(res?.data).map((e)=> Service.fromJson(e)).toList() : null;
  }

  Future<List<City>?> getCity() async {
    var res = await serviceApi.getCities();
    return res?.success == true ? List.from(res?.data).map((e)=> City.fromJson(e)).toList() : null;
  }

  Future<List<District>?> getDistrictByCity({required int cityId}) async {
    var res = await serviceApi.getDistrictByCity(cityId: cityId);
    return res?.success == true ? List.from(res?.data).map((e)=> District.fromJson(e)).toList() : null;
  }

  Future<List<Ward>?> getWardByDistrict({required int districtId}) async {
    var res = await serviceApi.getWardByDistrict(districtId: districtId);
    return res?.success == true ? List.from(res?.data).map((e)=> Ward.fromJson(e)).toList() : null;
  }
}