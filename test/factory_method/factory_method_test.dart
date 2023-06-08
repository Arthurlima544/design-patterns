import 'package:design_patterns/factory_method/factory_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Windowns and android dialog should create different buttons', () async {
    Dialog dialog = Dialog();
    WindownsDialog windownsDialog = WindownsDialog();
    AndroidDialog androidDialog = AndroidDialog();
    // Act
    final windownsDialogResult = windownsDialog.createButton();
    final androidDialogResult = androidDialog.createButton();
    // Assert
    expect(windownsDialogResult == androidDialogResult, false);
  });
  test('Windowns and IOS dialog should create different buttons', () async {
    // Arrange
    Dialog dialog = Dialog();
    WindownsDialog windownsDialog = WindownsDialog();
    IOSDialog iosDialog = IOSDialog();
    // Act
    final windownsDialogResult = windownsDialog.createButton();
    final iosDialogResult = iosDialog.createButton();
    // Assert
    expect(windownsDialogResult == iosDialogResult, false);
  });
}
