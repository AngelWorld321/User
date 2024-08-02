import 'package:get/get.dart'; // GetX पैकेज को आयात करता है, जो स्टेट मैनेजमेंट और अन्य सुविधाएं प्रदान करता है।
import 'package:com.angelworld.app/data/model/response/choose_us_model.dart'; // ChooseUsModel को आयात करता है।
import 'package:com.angelworld.app/data/model/response/language_model.dart'; // LanguageModel को आयात करता है।
import 'package:com.angelworld.app/util/images.dart'; // Images वर्ग को आयात करता है, जो चित्रों से संबंधित है।

// AppConstants क्लास, जो ऐप में उपयोग किए जाने वाले सभी स्थिरांक (constants) को परिभाषित करता है।
class AppConstants {
  static const String appName = 'angel-world'; // ऐप का नाम।
  static const double appVersion = 3.22; // ऐप का संस्करण।

  static const String fontFamily = 'Roboto'; // ऐप में उपयोग की जाने वाली फॉन्ट फैमिली।
  static const bool payInWevView = false; // वेबव्यू में भुगतान की अनुमति है या नहीं।
  static const int balanceInputLen = 10; // बैलेंस इनपुट की अधिकतम लंबाई।
  static const String webHostedUrl = 'https://angelworld-web/angelworld.store'; // वेब होस्टेड URL।

  static const String baseUrl = 'https://angelworld.store/angel-world'; // बेस URL।
  static const String categoryUri = '/api/v1/categories'; // कैटेगरी API का URL।
  static const String bannerUri = '/api/v1/banners'; // बैनर API का URL।
  static const String storeItemUri = '/api/v1/items/latest'; // लेटेस्ट आइटम API का URL।
  static const String popularItemUri = '/api/v1/items/popular'; // पॉपुलर आइटम API का URL।
  static const String reviewedItemUri = '/api/v1/items/most-reviewed'; // मोस्ट रिव्यूड आइटम API का URL।
  static const String searchItemUri = '/api/v1/items/details/'; // आइटम डिटेल्स API का URL।
  static const String subCategoryUri = '/api/v1/categories/childes/'; // सब कैटेगरी API का URL।
  static const String categoryItemUri = '/api/v1/categories/items/'; // कैटेगरी आइटम API का URL।
  static const String categoryStoreUri = '/api/v1/categories/stores/'; // कैटेगरी स्टोर्स API का URL।
  static const String configUri = '/api/v1/config'; // कॉन्फिग API का URL।
  static const String trackUri = '/api/v1/customer/order/track?order_id='; // ऑर्डर ट्रैकिंग API का URL।
  static const String messageUri = '/api/v1/customer/message/get'; // मैसेज API का URL।
  static const String forgetPasswordUri = '/api/v1/auth/forgot-password'; // पासवर्ड भूलने का API URL।
  static const String verifyTokenUri = '/api/v1/auth/verify-token'; // टोकन वेरिफिकेशन API URL।
  static const String resetPasswordUri = '/api/v1/auth/reset-password'; // पासवर्ड रीसेट API URL।
  static const String verifyPhoneUri = '/api/v1/auth/verify-phone'; // फोन वेरिफिकेशन API URL।
  static const String checkEmailUri = '/api/v1/auth/check-email'; // ईमेल चेक API URL।
  static const String verifyEmailUri = '/api/v1/auth/verify-email'; // ईमेल वेरिफिकेशन API URL।
  static const String registerUri = '/api/v1/auth/sign-up'; // साइन अप API URL।
  static const String loginUri = '/api/v1/auth/login'; // लॉगिन API URL।
  static const String tokenUri = '/api/v1/customer/cm-firebase-token'; // फायरबेस टोकन API URL।
  static const String placeOrderUri = '/api/v1/customer/order/place'; // ऑर्डर प्लेसमेंट API URL।
  static const String placePrescriptionOrderUri = '/api/v1/customer/order/prescription/place'; // प्रिस्क्रिप्शन ऑर्डर प्लेसमेंट API URL।
  static const String addressListUri = '/api/v1/customer/address/list'; // एड्रेस लिस्ट API URL।
  static const String zoneUri = '/api/v1/config/get-zone-id'; // ज़ोन आईडी प्राप्त करने का API URL।
  static const String removeAddressUri = '/api/v1/customer/address/delete?address_id='; // एड्रेस हटाने का API URL।
  static const String addAddressUri = '/api/v1/customer/address/add'; // एड्रेस जोड़ने का API URL।
  static const String updateAddressUri = '/api/v1/customer/address/update/'; // एड्रेस अपडेट करने का API URL।
  static const String setMenuUri = '/api/v1/items/set-menu'; // मेनू सेट करने का API URL।
  static const String customerInfoUri = '/api/v1/customer/info'; // ग्राहक की जानकारी का API URL।
  static const String couponUri = '/api/v1/coupon/list'; // कूपन लिस्ट API URL।
  static const String couponApplyUri = '/api/v1/coupon/apply?code='; // कूपन लागू करने का API URL।
  static const String runningOrderListUri = '/api/v1/customer/order/running-orders'; // चल रहे ऑर्डर्स की सूची का API URL।
  static const String historyOrderListUri = '/api/v1/customer/order/list'; // ऑर्डर इतिहास की सूची का API URL।
  static const String orderCancelUri = '/api/v1/customer/order/cancel'; // ऑर्डर रद्द करने का API URL।
  static const String codSwitchUri = '/api/v1/customer/order/payment-method'; // कैश ऑन डिलीवरी स्विच करने का API URL।
  static const String orderDetailsUri = '/api/v1/customer/order/details?order_id='; // ऑर्डर डिटेल्स का API URL।
  static const String wishListGetUri = '/api/v1/customer/wish-list'; // विश लिस्ट प्राप्त करने का API URL।
  static const String addWishListUri = '/api/v1/customer/wish-list/add?'; // विश लिस्ट में आइटम जोड़ने का API URL।
  static const String removeWishListUri = '/api/v1/customer/wish-list/remove?'; // विश लिस्ट से आइटम हटाने का API URL।
  static const String notificationUri = '/api/v1/customer/notifications'; // सूचनाओं का API URL।
  static const String updateProfileUri = '/api/v1/customer/update-profile'; // प्रोफाइल अपडेट करने का API URL।
  static const String searchUri = '/api/v1/'; // खोज का API URL।
  static const String reviewUri = '/api/v1/items/reviews/submit'; // समीक्षा जमा करने का API URL।
  static const String itemDetailsUri = '/api/v1/items/details/'; // आइटम डिटेल्स का API URL।
  static const String lastLocationUri = '/api/v1/delivery-man/last-location?order_id='; // डिलीवरी मैन की आखिरी लोकेशन का API URL।
  static const String deliveryManReviewUri = '/api/v1/delivery-man/reviews/submit'; // डिलीवरी मैन की समीक्षा जमा करने का API URL।
  static const String storeUri = '/api/v1/stores/get-stores'; // स्टोर प्राप्त करने का API URL।
  static const String popularStoreUri = '/api/v1/stores/popular'; // लोकप्रिय स्टोर प्राप्त करने का API URL।
  static const String latestStoreUri = '/api/v1/stores/latest'; // नवीनतम स्टोर प्राप्त करने का API URL।
  static const String storeDetailsUri = '/api/v1/stores/details/'; // स्टोर विवरण का API URL।
  static const String basicCampaignUri = '/api/v1/campaigns/basic'; // बेसिक कैम्पेन का API URL।
  static const String itemCampaignUri = '/api/v1/campaigns/item'; // आइटम कैम्पेन का API URL।
  static const String basicCampaignDetailsUri = '/api/v1/campaigns/basic-campaign-details?basic_campaign_id='; // बेसिक कैम्पेन डिटेल्स का API URL।
  static const String interestUri = '/api/v1/customer/update-interest'; // ग्राहक की रुचि अपडेट करने का API URL।
  static const String suggestedItemUri = '/api/v1/customer/suggested-items'; // सुझाए गए आइटम का API URL।
  static const String storeReviewUri = '/api/v1/stores/reviews'; // स्टोर समीक्षा का API URL।
  static const String distanceMatrixUri = '/api/v1/config/distance-api'; // दूरी मैट्रिक्स का API URL।
  static const String searchLocationUri = '/api/v1/config/place-api-autocomplete'; // स्थान खोजने का API URL।
  static const String placeDetailsUri = '/api/v1/config/place-api-details'; // स्थान विवरण का API URL।
  static const String geocodeUri = '/api/v1/config/geocode-api'; // जियोकोडिंग का API URL।
  static const String socialLoginUri = '/api/v1/auth/social-login'; // सोशल लॉगिन का API URL।
  static const String socialRegisterUri = '/api/v1/auth/social-register'; // सोशल रजिस्टर का API URL।
  static const String updateZoneUri = '/api/v1/customer/update-zone'; // ज़ोन अपडेट करने का API URL।
  static const String moduleUri = '/api/v1/module'; // मॉड्यूल का API URL।
  static const String parcelCategoryUri = '/api/v1/parcel-category'; // पार्सल कैटेगरी का API URL।
  static const String aboutUsUri = '/about-us'; // हमारे बारे में पेज का URL।
  static const String privacyPolicyUri = '/privacy-policy'; // गोपनीयता नीति पेज का URL।
  static const String termsAndConditionUri = '/terms-and-conditions'; // नियम और शर्तें पेज का URL।
  static const String cancellationUri = '/cancelation'; // रद्द करने का पेज URL।
  static const String refundUri = '/refund'; // रिफंड का पेज URL।
  static const String shippingPolicyUri = '/shipping-policy'; // शिपिंग नीति का पेज URL।
  static const String subscriptionUri = '/api/v1/newsletter/subscribe'; // न्यूज़लेटर सदस्यता का API URL।
  static const String customerRemoveUri = '/api/v1/customer/remove-account'; // ग्राहक खाता हटाने का API URL।
  static const String walletTransactionUri = '/api/v1/customer/wallet/transactions'; // वॉलेट लेनदेन का API URL।
  static const String loyaltyTransactionUri = '/api/v1/customer/loyalty-point/transactions'; // वफादारी बिंदु लेनदेन का API URL।
  static const String loyaltyPointTransferUri = '/api/v1/customer/loyalty-point/point-transfer'; // वफादारी बिंदु ट्रांसफर का API URL।
  static const String zoneListUri = '/api/v1/zone/list'; // ज़ोन सूची का API URL।
  static const String storeRegisterUri = '/api/v1/auth/vendor/register'; // स्टोर रजिस्टर का API URL।
  static const String dmRegisterUri = '/api/v1/auth/delivery-man/store'; // डिलीवरी मैन रजिस्टर का API URL।
  static const String refundReasonUri = '/api/v1/customer/order/refund-reasons'; // रिफंड कारण का API URL।
  static const String refundRequestUri = '/api/v1/customer/order/refund-request'; // रिफंड अनुरोध का API URL।
  static const String directionUri = '/api/v1/config/direction-api'; // दिशा API का URL।
  static const String vehicleListUri = '/api/v1/vehicles/list'; // वाहनों की सूची का API URL।
  static const String taxiCouponUri = '/api/v1/coupon/list/taxi'; // टैक्सी कूपन सूची का API URL।
  static const String taxiBannerUri = '/api/v1/banners/taxi'; // टैक्सी बैनर का API URL।
  static const String topRatedVehiclesListUri = '/api/v1/vehicles/top-rated/list'; // उच्च रेटेड वाहनों की सूची का API URL।
  static const String bandListUri = '/api/v1/vehicles/brand/list'; // वाहन ब्रांड की सूची का API URL।
  static const String taxiCouponApplyUri = '/api/v1/coupon/apply/taxi?code='; // टैक्सी कूपन लागू करने का API URL।
  static const String tripPlaceUri = '/api/v1/trip/place'; // यात्रा का स्थान API URL।
  static const String runningTripUri = '/api/v1/trip/list'; // चल रही यात्राओं की सूची का API URL।
  static const String vehicleChargeUri = '/api/v1/vehicle/extra_charge'; // वाहन अतिरिक्त चार्ज का API URL।
  static const String vehiclesUri = '/api/v1/get-vehicles'; // वाहनों का API URL।
  static const String storeRecommendedItemUri = '/api/v1/items/recommended'; // स्टोर की सिफारिश की गई वस्तुओं का API URL।
  static const String orderCancellationUri = '/api/v1/customer/order/cancellation-reasons'; // ऑर्डर रद्द करने के कारणों का API URL।
  static const String cartStoreSuggestedItemsUri = '/api/v1/items/suggested'; // कार्ट स्टोर के सुझाए गए आइटम का API URL।
  static const String landingPageUri = '/api/v1/flutter-landing-page'; // लैंडिंग पेज का API URL।

  //MESSAGING
  static const String conversationListUri = '/api/v1/customer/message/list'; // बातचीत की सूची का API URL।
  static const String searchConversationListUri = '/api/v1/customer/message/search-list'; // बातचीत की खोज सूची का API URL।
  static const String messageListUri = '/api/v1/customer/message/details'; // संदेश की सूची का API URL।
  static const String sendMessageUri = '/api/v1/customer/message/send'; // संदेश भेजने का API URL।

  // Shared Key
  static const String theme = 'angel-world_theme'; // थीम के लिए की।
  static const String token = 'angel-world_token'; // टोकन के लिए की।
  static const String countryCode = 'angel-world_country_code'; // देश कोड के लिए की।
  static const String languageCode = 'angel-world_language_code'; // भाषा कोड के लिए की।
  static const String cartList = 'angel-world_cart_list'; // कार्ट सूची के लिए की।
  static const String userPassword = 'angel-world_user_password'; // उपयोगकर्ता पासवर्ड के लिए की।
  static const String userAddress = 'angel-world_user_address'; // उपयोगकर्ता पता के लिए की।
  static const String userNumber = 'angel-world_user_number'; // उपयोगकर्ता संख्या के लिए की।
  static const String userCountryCode = 'angel-world_user_country_code'; // उपयोगकर्ता देश कोड के लिए की।
  static const String notification = 'angel-world_notification'; // अधिसूचना के लिए की।
  static const String searchHistory = 'angel-world_search_history'; // खोज इतिहास के लिए की।
  static const String intro = 'angel-world_intro'; // परिचय के लिए की।
  static const String notificationCount = 'angel-world_notification_count'; // अधिसूचना गणना के लिए की।
  static const String dmTipIndex = 'angel-world_dm_tip_index'; // डीएम टिप इंडेक्स के लिए की।
  static const String earnPoint = 'angel-world_earn_point'; // अर्जित बिंदु के लिए की।
  static const String acceptCookies = 'angel-world_accept_cookies'; // कुकीज़ स्वीकार करने के लिए की।

  static const String topic = 'all_zone_customer'; // सभी ज़ोन ग्राहकों के लिए टॉपिक।
  static const String zoneId = 'zoneId'; // ज़ोन आईडी के लिए की।
  static const String operationAreaId = 'operationAreaId'; // ऑपरेशन एरिया आईडी के लिए की।
  static const String moduleId = 'moduleId'; // मॉड्यूल आईडी के लिए की।
  static const String cacheModuleId = 'cacheModuleId'; // कैश मॉड्यूल आईडी के लिए की।
  static const String localizationKey = 'X-localization'; // स्थानीयकरण के लिए की।
  static const String latitude = 'latitude'; // अक्षांश के लिए की।
  static const String longitude = 'longitude'; // देशांतर के लिए की।
  static const String cookiesManagement = 'cookies_management'; // कुकीज़ प्रबंधन के लिए की।

  ///Refer & Earn work flow list..
  static final dataList = [
    'invite_your_friends_and_business'.tr, // अपने दोस्तों और व्यवसायों को आमंत्रित करें।
    '${'they_register'.tr} ${AppConstants.appName} ${'with_special_offer'.tr}', // वे विशेष ऑफर के साथ पंजीकरण करते हैं।
    'you_made_your_earning'.tr, // आपने अपनी कमाई की।
  ];

  /// Delivery Tips
  static List<String> tips = ['not_now' ,'15', '10', '20', '40', 'custom']; // डिलीवरी टिप्स की सूची।
  static List<String> deliveryInstructionList = [
    'deliver_to_front_door'.tr, // सामने के दरवाजे पर डिलीवर करें।
    'deliver_the_reception_desk'.tr, // रिसेप्शन डेस्क पर डिलीवर करें।
    'avoid_calling_phone'.tr, // फोन कॉल से बचें।
    'come_with_no_sound'.tr, // बिना आवाज के आएं।
  ];

  static List<ChooseUsModel> whyChooseUsList = [
    ChooseUsModel(icon: Images.landingTrusted, title: 'trusted_by_customers_and_store_owners'), // ग्राहकों और स्टोर मालिकों द्वारा विश्वसनीय।
    ChooseUsModel(icon: Images.landingStores, title: 'thousands_of_stores'), // हजारों स्टोर।
    ChooseUsModel(icon: Images.landingExcellent, title: 'excellent_shopping_experience'), // उत्कृष्ट शॉपिंग अनुभव।
    ChooseUsModel(icon: Images.landingCheckout, title: 'easy_checkout_and_payment_system'), // आसान चेकआउट और भुगतान प्रणाली।
  ];

  /// order status..
  static const String pending = 'pending'; // ऑर्डर की लंबित स्थिति।
  static const String accepted = 'accepted'; // ऑर्डर की स्वीकृत स्थिति।
  static const String processing = 'processing'; // ऑर्डर की प्रोसेसिंग स्थिति।
  static const String confirmed = 'confirmed'; // ऑर्डर की पुष्टि स्थिति।
  static const String handover = 'handover'; // ऑर्डर की हैंडओवर स्थिति।
  static const String pickedUp = 'picked_up'; // ऑर्डर की पिक-अप स्थिति।

  ///user type..
  static const String user = 'user'; // उपयोगकर्ता प्रकार।
  static const String customer = 'customer'; // ग्राहक प्रकार।
  static const String admin = 'admin'; // व्यवस्थापक प्रकार।
  static const String deliveryMan = 'delivery_man'; // डिलीवरी मैन प्रकार।
  static const String vendor = 'vendor'; // विक्रेता प्रकार।

  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: Images.english, languageName: 'English', countryCode: 'US', languageCode: 'en'), // अंग्रेजी भाषा मॉडल।
    LanguageModel(imageUrl: Images.arabic, languageName: 'عربى', countryCode: 'SA', languageCode: 'ar'), // अरबी भाषा मॉडल।
    LanguageModel(imageUrl: Images.arabic, languageName: 'Spanish', countryCode: 'ES', languageCode: 'es'), // स्पेनिश भाषा मॉडल।
    LanguageModel(imageUrl: Images.hindi, languageName: 'Hindi', countryCode: 'IN', languageCode: 'hi'), // हिंदी भाषा मॉडल।
    LanguageModel(imageUrl: Images.urdu, languageName: 'Urdu', countryCode: 'IN', languageCode: 'ur'),
    LanguageModel(imageUrl: Images.tamil, languageName: 'Tamil', countryCode: 'IN', languageCode: 'ta'),
    LanguageModel(imageUrl: Images.gujrati, languageName: 'Gujrati', countryCode: 'IN', languageCode: 'gu'),
    LanguageModel(imageUrl: Images.kannada, languageName: 'Kannada', countryCode: 'IN', languageCode: 'kn'),
    LanguageModel(imageUrl: Images.malayalam, languageName: 'Malayalam', countryCode: 'IN', languageCode: 'ml'),
    LanguageModel(imageUrl: Images.panjabi, languageName: 'Panjabi', countryCode: 'IN', languageCode: 'pa'),
  ];
}
