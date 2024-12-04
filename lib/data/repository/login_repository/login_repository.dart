import 'package:mvvm_getx/data/network/network_api_services.dart';
import 'package:mvvm_getx/res/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic responseJson =
        await _apiServices.postApiResponse(AppUrl.loginApi, data);
    return responseJson;
  }
}
