import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Bitcamp2023FirebaseUser {
  Bitcamp2023FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Bitcamp2023FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Bitcamp2023FirebaseUser> bitcamp2023FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Bitcamp2023FirebaseUser>(
      (user) {
        currentUser = Bitcamp2023FirebaseUser(user);
        return currentUser!;
      },
    );
