class Persons {
  const Persons({required this.id, required this.name, required this.email});

  final int id;
  final String name;
  final String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Persons &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode;

  @override
  String toString() {
    return 'Persons{id: $id,  name: $name,  email: $email}';
  }

  Persons copyWith({int? id, String? name, String? email}) {
    return Persons(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email};
  }

  factory Persons.fromMap(Map<String, dynamic> map) {
    return Persons(
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }
}
