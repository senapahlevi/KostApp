class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfBedrooms;
  int numberOfCupboards;
  int numberOfKitchens;
  Space({
    required this.id,
    required this.city,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.country,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.numberOfKitchens,
  });
  factory Space.fromJson(json) {
    return Space(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      country: json['country'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      rating: json['rating'],
      photos: json['photos'],
      address: json['address'],
      phone: json['phone'],
      mapUrl: json['mapUrl'],
      numberOfBedrooms: json['numberOfBedrooms'],
      numberOfCupboards: json['numberOfCupboards'],
      numberOfKitchens: json['numberOfKitchens'],
    );
  }
}
