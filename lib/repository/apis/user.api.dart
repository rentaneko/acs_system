

import '../response/base.response.dart';
import 'base_connect.api.dart';

class UserApi extends BaseConnect {
  Future<BaseResponse?> loginManual(Map<String, dynamic> map) async {
    return await postRequest('user/login', body: map);
  }

}
