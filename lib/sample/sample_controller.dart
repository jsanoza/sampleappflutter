import 'package:get/get.dart';

class SampleController extends GetxController {
  var hello = "qewqewq".obs;

  changeText() {
    hello.value = "new string asdjhquwehjk asdasda";
  }
}
