class User {
  final String username;
  final String userId;

  User({this.userId, this.username});


  User.fromDB(Map<String, dynamic> data)
    : userId = data['userId'],
      username = data['username'];

  Map<String, dynamic> toJson(){
    return{
      'userId': userId,
      'username': username,
    };
  }
}