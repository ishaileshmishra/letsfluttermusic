import 'package:demo_app/src/enum/viewstate.dart';
import 'package:flutter/foundation.dart';

class BaseModel with ChangeNotifier {
  ViewState _state = ViewState.ideal;

  ViewState get state => _state;

  set state(ViewState viewState) {
    debugPrint('State:$viewState');
    _state = viewState;
    notifyListeners();
  }

  set stateWithoutUpdate(ViewState viewState) {
    debugPrint('State:$viewState');
    _state = viewState;
  }

  void updateUI() {
    notifyListeners();
  }
}
