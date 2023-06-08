//! Buttons
abstract class Button {
  const Button();
}

class WindownsButton implements Button {}

class AndroidButton implements Button {}

class IOSButton implements Button {}

//! Dialogs
class Dialog {
  void createButton() {}
  void render() {}
}

class WindownsDialog extends Dialog {
  @override
  Button createButton() {
    return WindownsButton();
  }
}

class AndroidDialog extends Dialog {
  @override
  Button createButton() {
    return AndroidButton();
  }
}

class IOSDialog extends Dialog {
  @override
  Button createButton() {
    return IOSButton();
  }
}
