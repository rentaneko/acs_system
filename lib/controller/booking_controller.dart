import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../repository/apis/base_url.dart';

class BookingController extends GetxController {
  var serviceSelected = ''.obs;
  var listNameService = <String>[].obs;
  final _getServices = ApiUrl.baseUrl + ApiUrl.getAllServices;

  void setServiceSelected(String value) {
    serviceSelected.value = value;
  }

  Future<void> fetchService() async {
    final response = await http.get(Uri.parse(_getServices));
    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        for (int i = 0; i < json.length; i++) {
          listNameService.add(json[i]['name']);
        }
      }
    } catch (e) {
      log('Error fetchService at Booking Controller');
      log(e.toString());
    }
  }

  Future<void> initialValue() async {
    serviceSelected.value = listNameService[0];
  }

  @override
  void onInit() {
    Future.wait([
      fetchService().then((value) {
        initialValue();
      }),
    ]);

    super.onInit();
  }
}
