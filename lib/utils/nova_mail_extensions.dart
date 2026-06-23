import 'package:html_editor_enhanced/html_editor.dart';
import 'package:flutter/material.dart';

class LinkOverlayOptions {
  final LinkTooltipOverlayOptions? tooltipOptions;
  final LinkEditDialogOverlayOptions? editDialogOptions;

  const LinkOverlayOptions({this.tooltipOptions, this.editDialogOptions});
}

class LinkTooltipOverlayOptions {
  const LinkTooltipOverlayOptions();
}

class LinkEditDialogOverlayOptions {
  const LinkEditDialogOverlayOptions();
}

class LinkOverlayManager {
  static final LinkOverlayManager instance = LinkOverlayManager._();
  LinkOverlayManager._();

  bool hasActiveOverlays = false;
  void hideAll() => hasActiveOverlays = false;
}

class SignaturePosition {
  final double left;
  final double top;
  final double width;
  final double height;

  const SignaturePosition({this.left = 0, this.top = 0, this.width = 0, this.height = 0});
}

typedef OnPasteImageSuccessAction = void Function(FileUpload);
typedef OnPasteImageFailureAction = void Function(FileUpload?, String?, UploadError?);