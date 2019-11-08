class UserModel {
  //Field
  String id, regisDate, name, user, password;

  //constructor
  UserModel(this.id,this.regisDate, this.name, this.user, this.password);

  UserModel.fromAPI(Map<String, dynamic> map){
    id = map['id'];
    regisDate = map['RegisDate'];
    name =map['Name'];
    user =map['User'];
    password = map['Password'];
  }
}
