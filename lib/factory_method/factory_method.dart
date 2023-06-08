//! Buttons
/// para a classe Buttom é importante descrever diversas propriedades que teram em outros botões, como o on Tap, Cor,
/// Tamanho... etc para manter informações essenciais de um butão na classe pai.
abstract class Button {
  const Button();
}

class WindownsButton implements Button {}

class AndroidButton implements Button {}

class IOSButton implements Button {}

//! Dialogs
class Dialog {
  final ButtonStorageSinglethon buttonStorageSinglethon;
  void createButton() {}
  void render() {}

  Dialog({required this.buttonStorageSinglethon});
}

class WindownsDialog extends Dialog {
  WindownsDialog({required super.buttonStorageSinglethon});

  @override
  Button createButton() {
    return WindownsButton();
  }
}

class AndroidDialog extends Dialog {
  AndroidDialog({required super.buttonStorageSinglethon});

  @override
  Button createButton() {
    return AndroidButton();
  }
}

class IOSDialog extends Dialog {
  IOSDialog({required super.buttonStorageSinglethon});

  @override
  Button createButton() {
    final defaultButton = IOSButton();
    final existingButtonOrNull =
        buttonStorageSinglethon.getButtonByType(ButtonType.ios);
    if (existingButtonOrNull == null) {
      buttonStorageSinglethon.storageButton(defaultButton);
    }
    return existingButtonOrNull ?? defaultButton;
  }
}

/// This classe is resposable to storage all button instances created on app, this help
/// on not recreating new buttons everytime...insted use the first created..
class ButtonStorageSinglethon {
  WindownsButton? windownsButton;
  IOSButton? iosButton;
  AndroidButton? androidButton;

  ButtonStorageSinglethon._();

  static ButtonStorageSinglethon get instance => ButtonStorageSinglethon._();

  Button? getButtonByType(ButtonType buttonType) {
    switch (buttonType) {
      case ButtonType.windowns:
        return windownsButton;
      case ButtonType.android:
        return androidButton;
      case ButtonType.ios:
        return iosButton;
    }
  }

  void storageButton(Button button) {
    switch (button.runtimeType) {
      case WindownsButton:
        windownsButton = button as WindownsButton;
        break;
      case IOSButton:
        iosButton = button as IOSButton;
        break;
      case AndroidButton:
        androidButton = button as AndroidButton;
        break;
      default:
        break;
    }
  }
}

enum ButtonType { windowns, android, ios }
