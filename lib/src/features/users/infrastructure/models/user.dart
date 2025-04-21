class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  const User({
    required this.website,
    required this.address,
    required this.phone,
    required this.name,
    required this.company,
    required this.id,
    required this.email,
    required this.username,
  });

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
    website: json["website"],
    address: Address.fromJson(json["address"]),
    phone: json["phone"],
    name: json["name"],
    company: Company.fromJson(json["company"]),
    id: json["id"],
    email: json["email"],
    username: json["username"],
  );

  Map<dynamic, dynamic> toJson() => {
    "website": website,
    "address": address.toJson(),
    "phone": phone,
    "name": name,
    "company": company.toJson(),
    "id": id,
    "email": email,
    "username": username,
  };
}

class Address {
  final String zipcode;
  final Geo geo;
  final String suite;
  final String city;
  final String street;

  const Address({
    required this.zipcode,
    required this.geo,
    required this.suite,
    required this.city,
    required this.street,
  });

  factory Address.fromJson(Map<dynamic, dynamic> json) => Address(
    zipcode: json["zipcode"],
    geo: Geo.fromJson(json["geo"]),
    suite: json["suite"],
    city: json["city"],
    street: json["street"],
  );

  Map<dynamic, dynamic> toJson() => {
    "zipcode": zipcode,
    "geo": geo.toJson(),
    "suite": suite,
    "city": city,
    "street": street,
  };
}

class Geo {
  final String lng;
  final String lat;

  const Geo({required this.lng, required this.lat});

  factory Geo.fromJson(Map<dynamic, dynamic> json) =>
      Geo(lng: json["lng"], lat: json["lat"]);

  Map<dynamic, dynamic> toJson() => {"lng": lng, "lat": lat};
}

class Company {
  final String bs;
  final String catchPhrase;
  final String name;

  const Company({
    required this.bs,
    required this.catchPhrase,
    required this.name,
  });

  factory Company.fromJson(Map<dynamic, dynamic> json) => Company(
    bs: json["bs"],
    catchPhrase: json["catchPhrase"],
    name: json["name"],
  );

  Map<dynamic, dynamic> toJson() => {
    "bs": bs,
    "catchPhrase": catchPhrase,
    "name": name,
  };
}
