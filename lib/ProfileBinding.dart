import 'package:get/get.dart';
import 'package:web_my_profile/MyProfileController.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileController>(() => ProfileController());
  }

}