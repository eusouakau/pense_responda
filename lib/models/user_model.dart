class User {
  final String name;
  final String email;
  final String password;

  User({
    this.name,
    this.email,
    this.password,
  });
  

  Future<String> playerteam(String name) async {
    final url = new User(name: name);
    final response = await url.playerteam(name); 
    return response;
  }








}

  
