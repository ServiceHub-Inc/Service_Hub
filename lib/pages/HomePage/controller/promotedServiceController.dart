import 'package:get/state_manager.dart';
import 'package:servicehub/pages/HomePage/model/promotedServiceModel.dart';

class PromotedServicesController extends GetxController {
  // declare the list
  //  List<PopularService> popularServices = []..length = 500;
  final promotedServices = [PromoteServiceModel()].obs;
  // final popularServices = List<PopularService>().obs;
  // getter for the list
  void onInit() {
    super.onInit();
    fetchPopularServiceList();
  }

  // the function to retrive the list- Api goes here
  void fetchPopularServiceList() async {
    await Future.delayed(Duration(seconds: 1));
    var promotedServicesList = [
      PromoteServiceModel(
        imageUrl: 'assets/serviceImages/plumber_banner.jpg',
        endDate: '30/03/2021',
        startDate: '19/03/2021',
        serviceType: 'Plumbing',
        serviceDescription:
            'I am offering 50% discount on my regular charges for any painting job you request from 19/03/2021 to 30/04/2021, .',
        providerName: 'James Anthony',
        providerId: ' AD17443',
        providerRating: 3.5,
        providerImageUrl: 'assets/avatar/avatar1.jpg',
      ),
      PromoteServiceModel(
        imageUrl: 'assets/serviceImages/laundry_banner.jpg',
        endDate: '30/03/2021',
        startDate: '19/03/2021',
        serviceType: 'Cleaning',
        serviceDescription:
            'I am offering 50% discount on my regular charges for any painting job you request from 19/03/2021 to 30/04/2021, .',
        providerName: 'Ama koo',
        providerId: ' AD17463',
        providerRating: 5.5,
        providerImageUrl: 'assets/avatar/avatar1.jpg',
      ),
      PromoteServiceModel(
        imageUrl: 'assets/serviceImages/security_banner.jpg',
        endDate: '30/03/2021',
        startDate: '19/03/2021',
        serviceType: 'Security',
        providerId: ' AD17493',
        serviceDescription:
            'I am offering 50% discount on my regular charges for any painting job you request from 19/03/2021 to 30/04/2021.',
        providerName: 'Kwame Ansah',
        providerRating: 3.0,
        providerImageUrl: 'assets/avatar/avatar1.jpg',
      ),
    ];
    promotedServices.assignAll(promotedServicesList);
  }
}
