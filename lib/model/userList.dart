class UserList {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String imageurl;

  UserList.fromJSON(Map<String, dynamic> jsonMap) :
    id = jsonMap['id'],
    name = jsonMap['name'],
    tagline = jsonMap['tagline'],
    description = jsonMap['description'],
    imageurl = jsonMap['image_url'];

//   final int id;
//   final String email;
//   final String firstname;
//   final String lastname;
//   final String avatar;

// UserList.fromJSON(Map<String, dynamic> jsonMap) :
//     id = jsonMap['id'],
//     email = jsonMap['email'],
//     firstname = jsonMap['first_name'],
//     lastname = jsonMap['last_name'],
//     avatar = jsonMap['avatar'];
  
}