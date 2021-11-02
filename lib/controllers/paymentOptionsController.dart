import 'package:get/get.dart';
import 'package:servicehub/models/paymentOptionModel.dart';

class PaymentOptionsController extends GetxController {
  // declare the list
  // final services = [Services()].obs;
  // ignore: deprecated_member_use
  var paymentOptions = List<PaymentOptions>().obs;
  //  List<Services> services = []..length = 500                                    ;

  // Create a getter for the list
  @override
  void onInit() {
    super.onInit();
    fetchPaymentOptions();
  }

  void fetchPaymentOptions() async {
    await Future.delayed(Duration(seconds: 1));
    var paymentOptionList = [
      PaymentOptions(
        imageUrl: 'assets/networkImages/mtn.jpg',
        optionTitle: 'MTN Mobile Money',
      ),
      PaymentOptions(
          imageUrl: 'assets/networkImages/vodafone.jpg',
          optionTitle: 'Vodafone Mobile Money'),
      PaymentOptions(
        imageUrl: 'assets/networkImages/airtelTigo.jpg',
        optionTitle: 'AirtelTigo Mobile Money',
      ),
      PaymentOptions(
        imageUrl: 'assets/networkImages/visa.png',
        optionTitle: 'Visa Payment',
      ),
    ];

    // equate the service that you fetch to a new list
    // ignore: unnecessary_cast
    //  paymentOptions.value = paymentOptionList as List<PaymentOptions>;
    paymentOptions.assignAll(paymentOptionList);
    // services.assignAll(servicesList);
  }
}
