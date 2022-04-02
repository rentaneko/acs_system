

import '../response/base.response.dart';
import 'base_connect.api.dart';

class UserApi extends BaseConnect {

  Future<BaseResponse?> login(Map<String, dynamic> map) async {
    return await postRequest('/api/v2/user/authenticate', body: map);
  }

  Future<BaseResponse?> register(Map<String, dynamic> map) async {
    return await postRequest('/api/v2/user/customer', body: map);
  }

  Future<BaseResponse?> getMyPage() async {
    return await getResponse('user/my_page');
  }

}
