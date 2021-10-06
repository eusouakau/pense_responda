class User {
  final int id;
  final String name;
  final bool isOnline;

  User({
    this.id,
    this.name,
//  this.imageUrl,
    this.isOnline,
  });
}


final User currentUser = User(
  id: 0,
  name: 'eu',
//  imageUrl: '',
  isOnline: true,
);


final User partner = User(
  id: 1,
  name: 'Fulano de Tal',
//  imageUrl: '',
  isOnline: true,
);
final User partner2 = User(
  id: 2,
  name: 'Outro Fulano',
//  imageUrl: '',
  isOnline: false,
);
