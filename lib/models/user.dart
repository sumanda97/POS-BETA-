part of 'models.dart';

class User extends Equatable {
  final int id;
  final String storename;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.storename,
      this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    storename: "Manda Store",
    name: 'Sumanda',
    address: 'Jalan Lubuk Begalung',
    city: 'Padang',
    houseNumber: '1234',
    phoneNumber: '08123456789',
    email: 'mandamanda49@gmail.com',
    picturePath:
        'https://i.pinimg.com/originals/32/92/82/32928237ffd0f475f33dcbaeee82cddc.png');
