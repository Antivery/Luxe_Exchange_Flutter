import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LuxeExchangeFirebaseUser {
  LuxeExchangeFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LuxeExchangeFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LuxeExchangeFirebaseUser> luxeExchangeFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LuxeExchangeFirebaseUser>(
            (user) => currentUser = LuxeExchangeFirebaseUser(user));
