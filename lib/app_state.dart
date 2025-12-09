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
