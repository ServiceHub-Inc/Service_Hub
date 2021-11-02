import 'package:get/state_manager.dart';

class BecomeProviderController extends GetxController {
  var enterQualification = false.obs;
  var agentOffer = false.obs;
  var proposedServiceReferrals = false.obs;

  void toggleEnterQualification(bool val) {
    enterQualification.value = val;
    update();
  }

  void toggleAgentOffer(bool val) {
    agentOffer.value = val;
    update();
  }

  void toggleProposedServiceReferrals(bool val) {
    proposedServiceReferrals.value = val;
    update();
  }
}
