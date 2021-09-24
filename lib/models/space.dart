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
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;
  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
  });

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['ratings'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['mapUrl'];
    photos = json['photos'];
  }
}
