import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _flagtru = prefs.getString('ff_flagtru') ?? _flagtru;
    });
    _safeInit(() {
      _currentUserPhoto =
          prefs.getString('ff_currentUserPhoto') ?? _currentUserPhoto;
    });
    _safeInit(() {
      _cardStatus = prefs.getString('ff_cardStatus') ?? _cardStatus;
    });
    _safeInit(() {
      _emailVerified = prefs.getBool('ff_emailVerified') ?? _emailVerified;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _accesskey = '';
  String get accesskey => _accesskey;
  set accesskey(String value) {
    _accesskey = value;
  }

  int _status = 0;
  int get status => _status;
  set status(int value) {
    _status = value;
  }

  bool _flag = false;
  bool get flag => _flag;
  set flag(bool value) {
    _flag = value;
  }

  String _flagtru = '***';
  String get flagtru => _flagtru;
  set flagtru(String value) {
    _flagtru = value;
    prefs.setString('ff_flagtru', value);
  }

  // Current user photo URL (persisted)
  String _currentUserPhoto = '';
  String get currentUserPhoto => _currentUserPhoto;
  set currentUserPhoto(String value) {
    _currentUserPhoto = value;
    prefs.setString('ff_currentUserPhoto', value);
    notifyListeners();
  }

  Future<void> setCurrentUserPhoto(String url) async {
    _currentUserPhoto = url;
    prefs.setString('ff_currentUserPhoto', url);
    notifyListeners();
  }

  // Card status for current user (persisted)
  String _cardStatus = '';
  String get cardStatus => _cardStatus;
  set cardStatus(String value) {
    _cardStatus = value;
    prefs.setString('ff_cardStatus', value);
    notifyListeners();
  }

  // Email verification status (persisted)
  bool _emailVerified = false;
  bool get emailVerified => _emailVerified;
  set emailVerified(bool value) {
    _emailVerified = value;
    prefs.setBool('ff_emailVerified', value);
    notifyListeners();
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
