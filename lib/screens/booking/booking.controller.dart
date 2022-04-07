import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/repository/models/distric.dart';
import 'package:acs_1/repository/models/ward.dart';
import 'package:acs_1/repository/repo/service.repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../@share/utils/util.dart';
import '../../repository/models/city.dart';
import '../../repository/models/service.dart';

class BookingController extends GetxController {
  var listServices = <Service>[].obs;
  var serviceSelected = Service().obs;

  var listCity = <City>[].obs;
  var citySelected = City().obs;

  var listDistrict = <District>[].obs;
  var districtSelected = District().obs;

  var listWard = <Ward>[].obs;
  var wardSelected = Ward().obs;
  var isMale = true.obs;

  final introKey = GlobalKey<IntroductionScreenState>();
  final _serviceRepo = Get.find<ServiceRepo>();

  final amountController = TextEditingController();
  final amountFormKey = GlobalKey<FormState>();

  final descriptionController = TextEditingController();
  final descriptionFormKey = GlobalKey<FormState>();

  final addressController = TextEditingController();
  final addressFormKey = GlobalKey<FormState>();

  final infoUserFormKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    _getListService();
    _getListCity();
  }

  String? validatorAmount(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy nhập số lượng máy !';
    } else {
      var amount = int.tryParse(value);
      if (amount == null || amount < 0 || amount > 100) {
        return 'Số lượng máy ít nhất là 1 và không quá 100 !';
      }
    }
    return null;
  }

  String? validatorDescription(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy miêu tả sự cố của máy !';
    } else if ((value.length < 10 && value.length > 1) || value.length > 200) {
      return 'Ghi chú không thể ít hơn 10 và lớn hơn 200 ký tự !';
    }
    return null;
  }

  String? validatorAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy nhập địa chỉ của bạn !';
    } else if (value.length < 6 || value.length > 30) {
      return 'Địa chỉ phải trên 6 kí tự và không lớn hơn 30 kí tự !';
    }
    return null;
  }

  String? validatorLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy nhập tên của bạn !';
    } else if (value.length < 3 || value.length > 10) {
      return 'Tên của bạn không hợp lệ !';
    }
    return null;
  }

  String? validatorFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Hãy nhập họ của bạn !';
    } else if (value.length < 3 || value.length > 30) {
      return 'Họ của bạn không hợp lệ !';
    }
    return null;
  }

  String? validatorPhone(String? value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Số điện thoại không hợp lệ !';
    }
    return null;
  }

  _getListService() async {
    showLoading();
    await _serviceRepo.getService().then((value) => {
          if (value != null)
            listServices.value = value
          else
            showSnackBar(title: "Lỗi", content: "Lấy dữ liệu không được"),
          hideLoading()
        });
  }

  _getListCity() async {
    showLoading();
    await _serviceRepo.getCity().then((value) => {
          if (value != null)
            listCity.value = value
          else
            showSnackBar(
                title: "Báo lỗi",
                content: "Lấy dữ liệu tỉnh/thành phố từ hệ thống lỗi"),
          hideLoading()
        });
  }

  getListDistrict(int? cityId) async {
    if (cityId != null) {
      showLoading();
      await _serviceRepo.getDistrictByCity(cityId: cityId).then((value) => {
            if (value != null)
              listDistrict.value = value
            else
              showSnackBar(
                  title: "Báo lỗi",
                  content: "Lấy dữ liệu quận/huyện từ hệ thống lỗi"),
            hideLoading()
          });
    }
  }

  getListWard(int? districtId) async {
    if (districtId != null) {
      showLoading();
      await _serviceRepo
          .getWardByDistrict(districtId: districtId)
          .then((value) => {
                if (value != null)
                  listWard.value = value
                else
                  showSnackBar(
                      title: "Báo lỗi",
                      content: "Lấy dữ liệu phường/xã từ hệ thống lỗi"),
                hideLoading()
              });
    }
  }

  nextFirstPage() {
    if (serviceSelected.value.id != null) {
      if (amountFormKey.currentState?.validate() == true) {
        introKey.currentState?.controller.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      }
    } else {
      showSnackBar(title: "Cảnh báo", content: "Hãy chọn loại dịch vụ");
    }
  }

  nextSecondPage() {
    if (addressFormKey.currentState?.validate() == true) {
      if (citySelected.value.id == null) {
        showSnackBar(title: "Cảnh báo", content: "Hãy chọn thành phố/tỉnh");
      } else if (districtSelected.value.id == null) {
        showSnackBar(title: "Cảnh báo", content: "Hãy chọn quận/huyện");
      } else if (wardSelected.value.id == null) {
        showSnackBar(title: "Cảnh báo", content: "Hãy chọn phường/xã");
      } else {
        introKey.currentState?.controller.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      }
    }
  }

  donePage() {
    if (infoUserFormKey.currentState?.validate() == true) {
      goTo(screen: ROUTER_CONFIRM_BOOKING);
    }
  }

  backPage() {
    introKey.currentState?.controller.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }
}
