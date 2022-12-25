import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SwiftFirebaseUser {
  SwiftFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SwiftFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SwiftFirebaseUser> swiftFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SwiftFirebaseUser>(
      (user) {
        currentUser = SwiftFirebaseUser(user);
        return currentUser!;
      },
    );
