import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'; // Facebook login
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Google Maps के
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart'; // image_picker
import 'package:com.angelworld.app/controller/location_controller.dart'; // get location
import 'package:com.angelworld.app/controller/splash_controller.dart'; //
import 'package:com.angelworld.app/controller/user_controller.dart'; // user controlar location
import 'package:com.angelworld.app/data/api/api_checker.dart'; // API check
import 'package:com.angelworld.app/data/api/api_client.dart'; // API client
import 'package:com.angelworld.app/data/model/body/delivery_man_body.dart'; // delivery man body
import 'package:com.angelworld.app/data/model/body/store_body.dart'; // store body
import 'package:com.angelworld.app/data/model/body/signup_body.dart'; // signup body
import 'package:com.angelworld.app/data/model/body/social_log_in_body.dart'; // social log in body
import 'package:com.angelworld.app/data/model/response/delivery_man_vehicles.dart'; // delivery man vehicle
import 'package:com.angelworld.app/data/model/response/module_model.dart'; // module model
import 'package:com.angelworld.app/data/model/response/response_model.dart'; // response model
import 'package:com.angelworld.app/data/model/response/zone_model.dart'; // zone modal
import 'package:com.angelworld.app/data/model/response/zone_response_model.dart'; // zone response
import 'package:com.angelworld.app/data/repository/auth_repo.dart'; // auth repo
import 'package:com.angelworld.app/helper/responsive_helper.dart'; // response helper
import 'package:com.angelworld.app/helper/route_helper.dart'; // root route helper
import 'package:com.angelworld.app/view/base/custom_snackbar.dart'; // custom snack bar
import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo}) {
    _notification = authRepo.isNotificationActive();
  }

  // कई डाटा वेरिएबल्स की घोषणा
  bool _isLoading = false; 
  bool _notification = true;
  bool _acceptTerms = true;
  XFile? _pickedLogo;
  XFile? _pickedCover;
  List<ZoneModel>? _zoneList;
  int? _selectedZoneIndex = -1;
  LatLng? _restaurantLocation;
  List<int>? _zoneIds;
  XFile? _pickedImage;
  List<XFile> _pickedIdentities = [];
  final List<String> _identityTypeList = ['passport', 'driving_license', 'nid'];
  int _identityTypeIndex = 0;
  final List<String?> _dmTypeList = ['freelancer', 'salary_based'];
  int _dmTypeIndex = 0;
  List<ModuleModel>? _moduleList;
  int? _selectedModuleIndex = -1;
  List<DeliveryManVehicleModel>? _vehicles;
  List<int?>? _vehicleIds;
  int? _vehicleIndex = 0;
  double _dmStatus = 0.4;
  bool _lengthCheck = false;
  bool _numberCheck = false;
  bool _uppercaseCheck = false;
  bool _lowercaseCheck = false;
  bool _spatialCheck = false;
  double _storeStatus = 0.4;
  String? _storeAddress;
  String _storeMinTime = '--';
  String _storeMaxTime = '--';
  String _storeTimeUnit = 'minute';
  bool _showPassView = false;

  // Getters और Setters की घोषणा
  bool get isLoading => _isLoading;
  bool get notification => _notification;
  bool get acceptTerms => _acceptTerms;
  XFile? get pickedLogo => _pickedLogo;
  XFile? get pickedCover => _pickedCover;
  List<ZoneModel>? get zoneList => _zoneList;
  int? get selectedZoneIndex => _selectedZoneIndex;
  LatLng? get restaurantLocation => _restaurantLocation;
  List<int>? get zoneIds => _zoneIds;
  XFile? get pickedImage => _pickedImage;
  List<XFile> get pickedIdentities => _pickedIdentities;
  List<String> get identityTypeList => _identityTypeList;
  int get identityTypeIndex => _identityTypeIndex;
  List<String?> get dmTypeList => _dmTypeList;
  int get dmTypeIndex => _dmTypeIndex;
  List<ModuleModel>? get moduleList => _moduleList;
  int? get selectedModuleIndex => _selectedModuleIndex;
  List<DeliveryManVehicleModel>? get vehicles => _vehicles;
  List<int?>? get vehicleIds => _vehicleIds;
  int? get vehicleIndex => _vehicleIndex;
  double get dmStatus => _dmStatus;
  bool get lengthCheck => _lengthCheck;
  bool get numberCheck => _numberCheck;
  bool get uppercaseCheck => _uppercaseCheck;
  bool get lowercaseCheck => _lowercaseCheck;
  bool get spatialCheck => _spatialCheck;
  double get storeStatus => _storeStatus;
  String? get storeAddress => _storeAddress;
  String get storeMinTime => _storeMinTime;
  String get storeMaxTime => _storeMaxTime;
  String get storeTimeUnit => _storeTimeUnit;
  bool get showPassView => _showPassView;

  // पासवर्ड की वैधता की जांच
  void validPassCheck(String pass, {bool isUpdate = true}) {
    _lengthCheck = false;
    _numberCheck = false;
    _uppercaseCheck = false;
    _lowercaseCheck = false;
    _spatialCheck = false;

    if(pass.length > 7){
      _lengthCheck = true;
    }
    if(pass.contains(RegExp(r'[a-z]'))) {
      _lowercaseCheck = true;
    }
    if(pass.contains(RegExp(r'[A-Z]'))){
      _uppercaseCheck = true;
    }
    if(pass.contains(RegExp(r'[ .!@#$&*~^%]'))){
      _spatialCheck = true;
    }
    if(pass.contains(RegExp(r'[\d+]'))){
      _numberCheck = true;
    }
    if(isUpdate) {
      update();
    }
  }

  // अन्य विभिन्न सेटिंग्स को अपडेट करने वाले मेथड्स
  void showHidePass({bool isUpdate = true}){
    _showPassView = ! _showPassView;
    if(isUpdate) {
      update();
    }
  }

  void minTimeChange(String time){
    _storeMinTime = time;
    update();
  }

  void maxTimeChange(String time){
    _storeMaxTime = time;
    update();
  }

  void timeUnitChange(String unit){
    _storeTimeUnit = unit;
    update();
  }

  void dmStatusChange(double value, {bool isUpdate = true}){
    _dmStatus = value;
    if(isUpdate) {
      update();
    }
  }

  void storeStatusChange(double value, {bool isUpdate = true}){
    _storeStatus = value;
    if(isUpdate) {
      update();
    }
  }

  // वाहन की सूची प्राप्त करने वाला मेथड
  Future<void> getVehicleList() async {
    Response response = await authRepo.getVehicleList();
    if (response.statusCode == 200) {
      _vehicles = [];
      _vehicleIds = [];
      _vehicleIds!.add(0);
      response.body.forEach((vehicle) => _vehicles!.add(DeliveryManVehicleModel.fromJson(vehicle)));
      response.body.forEach((vehicle) => _vehicleIds!.add(DeliveryManVehicleModel.fromJson(vehicle).id));
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }

  // वाहन के इंडेक्स को सेट करने वाला मेथड
  void setVehicleIndex(int? index, bool notify) {
    _vehicleIndex = index;
    if(notify) {
      update();
    }
  }

  // साइन अप के लिए रजिस्ट्रेशन मेथड
  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;
    update();
    Response response = await authRepo.registration(signUpBody);
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      if(!Get.find<SplashController>().configModel!.customerVerification!) {
        authRepo.saveUserToken(response.body["token"]);
        await authRepo.updateToken();
        Get.find<UserController>().getUserInfo();
        responseModel = ResponseModel(true, response.body["message"]);
      } else {
        responseModel = ResponseModel(true, response.body["message"]);
      }
    } else {
      ApiChecker.checkApi(response);
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

// अन्य मेथड्स जैसे सोशल लॉगिन, फेसबुक लॉगिन आदि के लिए
// इन्हें भी इसी तरह से समझा जा सकता है।
}
