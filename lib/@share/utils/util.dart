import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


widthScreen({int? percent}) =>
    percent != null ? (Get.width * percent) / 100 : Get.width;

heightScreen({int? percent}) =>
    percent != null ? (Get.height * percent) / 100 : Get.height;

goTo({required String screen, dynamic argument}) =>
    Get.toNamed(screen, arguments: argument);

goToAndRemoveAll({required String screen, dynamic argument}) =>
    Get.offAllNamed(screen, arguments: argument);

goBack({dynamic argument}) => Get.back(result: argument);

getArgument() => Get.arguments;

openDialog({required Widget dialog, bool dismiss = false}) =>
    Get.dialog(dialog, barrierDismissible: dismiss);

showToast(String content) =>
    EasyLoading.showToast(content);

showLoading([String? content]) => EasyLoading.show(
    status: content ?? "");

hideLoading() => EasyLoading.dismiss();

showSnackBar({required String title, required String content }) => Get.snackbar(title, content);

String formatDateTime(String date){
  var dateT = DateTime.tryParse(date);
  if(dateT != null){
    return DateFormat.yMd().format(dateT);
  }
  return '';
}
