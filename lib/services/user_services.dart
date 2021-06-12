part of 'services.dart';

class UserServices {
  static CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');
  // static Future<void> updateUser(User user) async {
  //   String genres = '';
  //   for (var genre in user.selectedGenres) {
  //     gentes += genre + ((genre != user.selectedGenres.last) ? ',' : '');
  //   }
    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguage': user.selectedLanguage,
      'profilPicture': user.profilePicture ?? ''
    });
  }
  static Future<User> getUser (String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User (id, snapshot.data['email'], balance: snapshot.data['balance'], profilPicture: snapshot.data['profilePicture'],selectedGenres: (snapshot.data['selectedGenres'] as List)
    .map((e) => e.toString())
    .toList(),
     selcetedLanguage: snapshot.data['selectedLanguage'], name: snapshot.data['name'],);
  }
}

//   gentes += genre + ((genre != user.selectedGenres.last) ? ',' : '');
//  arti kode di atas adala genre di tambah genre jika genre tida sama dengan gendres terakhir maka tambahkan , jika terakhir tidak tambah apa apa

//   _userCollection.document(user.id).setData({
      // 'email': user.email,
      // 'name': user.name,
      // 'balance': user.balance,
      // 'selectedGenres': user.selectedGenres,
      // 'selectedLanguage': user.selectedLanguage,
      // 'profilPicture': user.profilePicture ?? '' [jika profil picturenya null atau ga milih apa apa maka tampilkan kosng]
    // });

    // arti kode di atas itu untuk menyimpan ke firestore