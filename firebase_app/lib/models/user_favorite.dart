class UserActivity{
  final bool favorite;

  UserActivity({this.favorite});


  UserActivity.fave(Map<String, dynamic> data)
    : favorite = data['favorite'];


  Map<String, dynamic> toJson(){
    return{
      'favorite': favorite
    };
  }
}