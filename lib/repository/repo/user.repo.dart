
import 'package:acs_1/repository/models/Profile.dart';

import '../apis/user.api.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<Profile?> login({required String username, required String password}) async {
    var res = await userApi.login({'username': username, 'password': password});
    return res?.success == true ? Profile.fromJson(res?.data) : null;
  }

  Future<bool> register({required Profile profile}) async {
    var res = await userApi.register(profile.toQuery());
    return res?.success ?? false;
  }
}
