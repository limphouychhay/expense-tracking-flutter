import 'dart:convert';
import 'dart:developer';

import 'package:expense_tracking/models/models.dart';
import 'package:expense_tracking/utils/loading_modal.dart';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

class NetworkErrorHandler {
  final DioError error;

  NetworkErrorHandler(this.error);
  NetworkErrorModel? exec() {
    log('error.response.statusCode = ${error.response?.statusCode}');
    log('error.response = ${error.response?.toString()}');

    if (error.response?.statusCode == 400) {
      return NetworkErrorModel(
        title: tr('message.somethingWentWrong'),
        description: jsonDecode(error.response.toString())['responseError']
            ['message'] as String,
      );
    } else if (error.response?.statusCode == 401 &&
        error.response?.realUri.toString() == '') {
      return NetworkErrorModel(
        title: (tr('message.cancelled')),
        description: error.response?.data['responseError']['message'],
      );
    } else if (error.response?.statusCode == 401) {
      LoadingModal.hide();

      return null;
    } else if (error.response?.statusCode == 422) {
      return NetworkErrorModel(
        title: tr('message.somethingWentWrong'),
        description: jsonDecode(error.response.toString())['message'] as String,
        statusCode: error.response?.statusCode,
      );
    } else if (error.response?.statusCode == 403) {
      return NetworkErrorModel(
        title: tr('message.somethingWentWrong'),
        description: jsonDecode(error.response.toString())['responseError']
            ['message'] as String,
        statusCode: error.response?.statusCode,
      );
    } else if (error.response?.statusCode == 404) {
      return NetworkErrorModel(
        title: tr('message.notFound'),
        description: tr('message.yourRequestedUrlWasNotFound'),
        statusCode: error.response?.statusCode,
      );
    } else if (error.response?.statusCode == 500) {
      return NetworkErrorModel(
        title: tr('message.serverError'),
        description: tr('message.sorrySomethingWentWrongFromOurServer'),
        statusCode: error.response?.statusCode,
      );
    }

    if (error.type == DioErrorType.response) {
      if (error.type == DioErrorType.cancel) {
        return NetworkErrorModel(
          title: tr('message.cancelled'),
          description: tr('message.yourRequestHasBeenCancelled'),
        );
      } else if (error.type == DioErrorType.cancel) {
        NetworkErrorModel(
          title: tr('message.connectionTimeout'),
          description: tr('message.yourConnectionIsTimeout'),
        );
      } else if (error.type == DioErrorType.receiveTimeout) {
        return NetworkErrorModel(
          title: tr('message.recieveTimeout'),
          description: tr('message.yourRecievingDataIsTimeout'),
        );
      }
    }

    return NetworkErrorModel(
      title: tr('message.somethingWentWrong'),
      description: tr('message.sorryThisIsAnUnexpectedError'),
      statusCode: error.response?.statusCode,
    );
  }
}
