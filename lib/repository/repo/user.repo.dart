
import '../apis/user.api.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<dynamic> login({required String username, required String password}) async {
    var res = await userApi.login({'username': username, 'password': password});
    return res?.success == true ? res?.data : null;
  }

  Future<dynamic> register({required String phone, required String username, required String password, required String email}) async {
    var res = await userApi.register({'username': username, 'password': password, 'phone': phone, 'email': email});
    return res?.success == true ? res?.data : null;
  }

  Future<dynamic> getMyPage() async {
    var res = await userApi.getMyPage();
    return res?.success == true ? "UserInfoModel.fromMap(res.data)" : null;
  }
}
