
class PromoteServiceModel {

  final String imageUrl;
  final String startDate;
  final String endDate;
  final String providerId;
  final String serviceDescription;
  final String providerName;
  final double providerRating;
  final String serviceType;
  final String providerImageUrl;

  PromoteServiceModel({
    this.providerId,
    this.providerRating,
    this.serviceType,
    this.imageUrl, 
    this.startDate, 
    this.endDate, 
    this.serviceDescription, 
    this.providerName, 
    this.providerImageUrl,
  });
}