

import '../response/base.response.dart';
import 'base_connect.api.dart';

class ServiceApi extends BaseConnect {

  Future<BaseResponse?> getServices() async {
    return await getResponse('/service-type/all');
  }

  Future<BaseResponse?> getCities() async {
    return await getResponse('/city/all');
  }

  Future<BaseResponse?> getDistrictByCity({required int cityId}) async {
    return await getResponse('/district/$cityId');
  }

  Future<BaseResponse?> getWardByDistrict({required int districtId}) async {
    return await getResponse('/ward/$districtId');
  }
}

