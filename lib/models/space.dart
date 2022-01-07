class Space {
  int id;
  String name;
  // ignore: non_constant_identifier_names
  String image_url;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  // ignore: non_constant_identifier_names
  int number_of_kitchens;
  // ignore: non_constant_identifier_names
  int number_of_bedrooms;
  // ignore: non_constant_identifier_names
  int number_of_cupboards;
  Space({
    this.id,
    this.name,
    // ignore: non_constant_identifier_names
    this.image_url,
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
    image_url = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['mapUrl'];
    photos = json['photos'];
    number_of_kitchens = json['number_of_kitchens'];
    number_of_bedrooms = json['number_of_bedrooms'];
    number_of_cupboards = json['number_of_cupboards'];
  }

  get numberOfBedrooms => null;
}
