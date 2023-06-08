import 'package:design_patterns/factory_method/factory_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ButtonStorageSinglethon buttonStorageSinglethon =
      ButtonStorageSinglethon.instance;
  test('Windowns and android dialog should create different buttons', () async {
    Dialog dialog = Dialog(buttonStorageSinglethon: buttonStorageSinglethon);
    WindownsDialog windownsDialog =
        WindownsDialog(buttonStorageSinglethon: buttonStorageSinglethon);
    AndroidDialog androidDialog =
        AndroidDialog(buttonStorageSinglethon: buttonStorageSinglethon);
    // Act
    final windownsDialogResult = windownsDialog.createButton();
    final androidDialogResult = androidDialog.createButton();
    // Assert
    expect(windownsDialogResult == androidDialogResult, false);
  });
  test('Windowns and IOS dialog should create different buttons', () async {
    // Arrange
    Dialog dialog = Dialog(buttonStorageSinglethon: buttonStorageSinglethon);
    WindownsDialog windownsDialog =
        WindownsDialog(buttonStorageSinglethon: buttonStorageSinglethon);
    IOSDialog iosDialog =
        IOSDialog(buttonStorageSinglethon: buttonStorageSinglethon);
    // Act
    final windownsDialogResult = windownsDialog.createButton();
    final iosDialogResult = iosDialog.createButton();
    // Assert
    expect(windownsDialogResult == iosDialogResult, false);
  });
  test(
      'Sould return an Allready created button insted of creatting a new one, soo the hashcode should be the same',
      () async {
    // Arrange
    IOSDialog iosDialog =
        IOSDialog(buttonStorageSinglethon: buttonStorageSinglethon);
    // Act
    final firstIOSButton = iosDialog.createButton();
    final secondIOSButton = iosDialog.createButton();
    // Assert
    expect(firstIOSButton.hashCode == secondIOSButton.hashCode, true);
  });
}
