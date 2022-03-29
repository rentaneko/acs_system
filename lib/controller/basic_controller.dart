import 'dart:convert';
import 'dart:developer';
import 'package:acs_1/apis/base_url.dart';
import 'package:acs_1/models/city.dart';
import 'package:acs_1/models/distric.dart';
import 'package:acs_1/models/ward.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BasicController extends GetxController {
  final _getCity = ApiUrl.baseUrl + ApiUrl.getAllCity;
  final _getDistric = ApiUrl.baseUrl + ApiUrl.getAllDistric;
  final _getWard = ApiUrl.baseUrl + ApiUrl.getAllWard;
  var listCities = <City>[].obs;
  var listDistrics = <Distric>[].obs;
  var listWards = <Ward>[].obs;
  var isLoading = true.obs;

// lấy danh sách thành phố
  Future<void> fetchAllCity() async {
    final response = await http.get(Uri.parse(_getCity));
    try {
      if (response.statusCode == 200) {
        final items = jsonDecode(response.body);
        for (int i = 0; i < items.length; i++) {
          City city = City(
            id: items[i]['id'].toString(),
            name: items[i]['name'],
          );
          listCities.add(city);
        }
      } else {
        log(response.reasonPhrase!);
      }
    } catch (e) {
      log('Error FetchAllCity at Basic Controller');
      log(e.toString());
    }
  }

// lấy danh sách quận, huyện
  Future<void> fetchAllDistric() async {
    final response = await http.get(Uri.parse(_getDistric));
    try {
      if (response.statusCode == 200) {
        final items = jsonDecode(response.body);
        for (int i = 0; i < items.length; i++) {
          Distric distric = Distric(
            id: items[i]['id'],
            name: items[i]['name'],
            cityId: items[i]['district_id'],
          );
          listDistrics.add(distric);
        }
      } else {
        log(response.reasonPhrase!);
      }
    } catch (e) {
      log('Error FetchAllDistric at Basic Controller');
      log(e.toString());
    }
  }

// lấy danh sách phường, xã

  Future<void> fetchAllWard() async {
    final response = await http.get(Uri.parse(_getWard));
    try {
      if (response.statusCode == 200) {
        final items = jsonDecode(response.body);
        for (int i = 0; i < items.length; i++) {
          Ward ward = Ward(
            id: items[i]['id'],
            name: items[i]['name'],
            districId: items[i]['district_id'],
          );
          listWards.add(ward);
        }
      } else {
        log(response.reasonPhrase!);
      }
    } catch (e) {
      log('Error FetchAllWard at Basic Controller');
      log(e.toString());
    }
  }

  @override
  void onInit() async {
    Future.wait(
      [
        fetchAllCity(),
        fetchAllDistric(),
        fetchAllWard(),
      ],
    );
    isLoading.value = false;
    super.onInit();
  }
}
