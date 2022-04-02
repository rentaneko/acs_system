
import '../apis/user.api.dart';

class UserRepo {
  final UserApi userApi;

  UserRepo(this.userApi);

  Future<dynamic> loginManual({required String email, required String password, required String fcmToken}) async {
    var res = await userApi.loginManual(
        {'email': email, 'password': password, 'fcm_token': fcmToken});
    return res?.success == true ? "LoginInfoModel.fromMap(res.data)" : null;
  }

}
