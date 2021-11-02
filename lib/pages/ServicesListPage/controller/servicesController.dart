import 'package:get/get.dart';
import 'package:servicehub/models/servicesModel.dart';

class ServicesController extends GetxController {
  // declare the list
  // final services = [Services()].obs;
  // var services = List<Services>().obs;
  final services = [Services()].obs;
  //  List<Services> services = []..length = 500                                    ;

  // Create a getter for the list
  @override
  void onInit() {
    super.onInit();
    fetchService();
  }

  void fetchService() async {
    await Future.delayed(Duration(seconds: 1));
    var servicesList = [
      Services(
          imageUrl: 'assets/serviceImages/plumber.jpg',
          serviceTitle: 'Plumbing',
          priceRange: 20.00,
          serviceDescription:
              'Your cleaning headache is over with this service. Whether you want to provide cleaning services or require the services of cleaners, this platform offers you flexibility, value and reliability like no other. For all manner of indoor cleaning, outdoor cleaning, deep cleaning, etc, you will find able providers ready to assist you.  Just give it a go!'),
      Services(
          imageUrl: 'assets/serviceImages/cleaner.jpg',
          serviceTitle: 'Cleaning',
          priceRange: 50.00,
          serviceDescription:
              'Enjoy your favourite food from competent cooks without hustle. Are you a cook in search of opportunities? Why not subscribe as a provider of this service to earn decent income. Do you need a cook for your favourite local or continental dish? Find competent cooks of your choice here for every occasion at competitive rates.'),
      Services(
          imageUrl: 'assets/serviceImages/laundry.jpg',
          serviceTitle: 'Laundry',
          priceRange: 20.00,
          serviceDescription:
              'Access a pool of capable plumbers for all your plumbing needs. All you have to do is to search for a plumber closer to your location, describe the issue and they will be on hand to fix it. You can also register here to provide plumbing services at cool rates. Get started! We’ve got your back'),
      Services(
          imageUrl: 'assets/serviceImages/Home-tutor.png',
          serviceTitle: 'Home Tutoring',
          priceRange: 450.00,
          serviceDescription:
              'Enthusiastic and capable professionals here handle every gardening task such as trimming trees and shrubs, mowing lawns, weeding and keeping green spaces and walkways clear of debris and litter. Subscribe to become a provider of this service to earn decent income or request for this service at competitive rates.'),
      Services(
          imageUrl: 'assets/serviceImages/security.jpg',
          serviceTitle: 'Security',
          priceRange: 100.00,
          serviceDescription:
              'This service offers the opportunity to hire nannies on temporary or on permanent basis for your childcare needs. Potential nannies admitted to this platform satisfy strict requirements with regards to knowledge, experience, health and security.  You can also register your details here as an individual or corporate provider of child nanny services'),
    ];

    // equate the service that you fetch to a new list
    // ignore: unnecessary_cast
    // services.value = servicesList as List<Services>;
    services.assignAll(servicesList);
    // services.assignAll(servicesList);
  }
}
