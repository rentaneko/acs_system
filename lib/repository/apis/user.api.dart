

import '../response/base.response.dart';
import 'base_connect.api.dart';

class UserApi extends BaseConnect {

  Future<BaseResponse?> login(Map<String, dynamic> map) async {
    return await postRequest('/user/authenticate', body: map);
  }

  Future<BaseResponse?> register(Map<String, dynamic> map) async {
    return await postRequest('/user/customer', query: map);
  }

}
