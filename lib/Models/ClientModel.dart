class ClientModel{
  late int id;
  late String name;
  late String email;
  late String password;


  ClientModel(
      int id,
      String name,
      String email,
      String password
      ) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.password = password;
  }

}