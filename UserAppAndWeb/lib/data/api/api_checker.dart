import 'package:com.angelworld.app/controller/auth_controller.dart';
import 'package:com.angelworld.app/controller/wishlist_controller.dart';
import 'package:com.angelworld.app/helper/route_helper.dart';
import 'package:com.angelworld.app/view/base/custom_snackbar.dart';
import 'package:get/get.dart';
import 'package:com.angelworld.app/controller/auth_controller.dart';

// ApiChecker क्लास API प्रतिक्रिया की जाँच करने के लिए
class ApiChecker {
  // स्टैटिक विधि checkApi जो API प्रतिक्रिया की जाँच करती है
  static void checkApi(Response response, {bool getXSnackBar = false}) {
    // प्रतिक्रिया की स्थिति कोड की जाँच करें
    if (response.statusCode == 401) {
      // AuthController का उपयोग करके साझा डेटा को साफ़ करें
      Get.find<AuthController>().clearSharedData();
      // WishListController का उपयोग करके वॉशेज़ को हटाएँ
      Get.find<WishListController>().removeWishes();
      // उपयोगकर्ता को लॉगिन स्क्रीन पर पुनः निर्देशित करें
      Get.offAllNamed(GetPlatform.isWeb
          ? RouteHelper.getInitialRoute()
          : RouteHelper.getSignInRoute(RouteHelper.splash));
    } else {
      // अन्य स्थिति कोड के लिए कस्टम स्नैकबार दिखाएँ
      showCustomSnackBar(
          response.statusText ?? 'Unknown Error',
          getXSnackBar: getXSnackBar
      );
    }
  }
}
