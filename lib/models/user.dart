part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final List<String> selectedGenres;
  final String selectedLangueage;
  final int balance;

  User(this.id, this.email,
      {this.name,
      this.profilePicture,
      this.balance,
      this.selectedGenres,
      this.selectedLangueage});

// di tambah kurung kurawal di this.name sampe selected langunge biar opsional

  @override
  String toString() {
    return '[$id] - $name, $email ';
  }

// ini buat to string langsung ke generate

  @override
  List<Object> get props => [
        id,
        email,
        name,
        profilePicture,
        selectedGenres,
        selectedLangueage,
        balance
      ];
}
