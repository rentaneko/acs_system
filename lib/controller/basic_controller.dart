/*
import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../repository/apis/base_url.dart';
import '../repository/models/city.dart';
import '../repository/models/distric.dart';
import '../repository/models/service.dart';
import '../repository/models/ward.dart';

class BasicController extends GetxController {
  final _getCity = ApiUrl.baseUrl + ApiUrl.getAllCity;
  final _getDistric = ApiUrl.baseUrl + ApiUrl.getAllDistric;
  final _getWard = ApiUrl.baseUrl + ApiUrl.getAllWard;
  final _getServices = ApiUrl.baseUrl + ApiUrl.getAllServices;

//
  var listCities = <City>[].obs;
  var listDistrics = <Distric>[].obs;
  var listWards = <Ward>[].obs;
  var listServices = <ServiceModel>[].obs;
  var serviceSelected = ''.obs;
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
            id: items[i]['id'].toString(),
            name: items[i]['name'],
            cityId: items[i]['district_id'].toString(),
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
            id: items[i]['id'].toString(),
            name: items[i]['name'],
            districId: items[i]['district_id'].toString(),
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

// lấy danh sách các service

  Future<void> fetchService() async {
    final response = await http.get(Uri.parse(_getServices));
    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        for (int i = 0; i < json.length; i++) {
          ServiceModel service = ServiceModel(
            id: json[i]['id'].toString(),
            name: json[i]['name'],
            description: json[i]['description'],
            price: json[i]['price'].toString(),
            typeId: json[i]['type_id'].toString(),
            status: json[i]['status'].toString(),
          );
          listServices.add(service);
        }
        print(listServices.length);
      }
    } catch (e) {
      log('Error fetchService at Basic Controller');
      log(e.toString());
    }
  }

  void setServiceSelected(String value) {
    serviceSelected.value = value;
  }

  Future<void> initialValue() async {
    serviceSelected.value = listServices[0].id;
  }

  @override
  void onInit() async {
    Future.wait(
      [
        fetchAllCity(),
        fetchAllDistric(),
        fetchAllWard(),
        fetchService(),
        initialValue(),
      ],
    );

    isLoading.value = false;
    super.onInit();
  }
}
*/
