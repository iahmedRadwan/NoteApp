import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';

class ToastManager {
  /// Error Toast
  static void customToastError({
    required BuildContext context,
    required String title,
    Color color = Colors.white,
    String? description,
  }) =>
      CherryToast.error(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: color),
        ),
        description: description != null
            ? Text(
                description,
                style: const TextStyle(fontSize: 12),
              )
            : null,
        animationDuration: const Duration(milliseconds: 1000),
        toastDuration: const Duration(milliseconds: 5000),
        displayCloseButton: false,
      ).show(context);

  /// Warning Toast
  static void customToastWarning({
    Color color = Colors.white,
    required BuildContext context,
    required String title,
    String? description,
  }) =>
      CherryToast.warning(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: color),
        ),
        description: description != null
            ? Text(
                description,
                style: const TextStyle(fontSize: 12),
              )
            : null,
        animationDuration: const Duration(milliseconds: 1000),
        toastDuration: const Duration(milliseconds: 5000),
        displayCloseButton: false,
      ).show(context);

  /// Success Toast
  static void customToastSuccess({
    Color color = Colors.white,
    required BuildContext context,
    required String title,
    String? description,
  }) =>
      CherryToast.success(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: color),
        ),
        description: description != null
            ? Text(
                description,
                style: const TextStyle(fontSize: 12),
              )
            : null,
        animationDuration: const Duration(milliseconds: 1000),
        toastDuration: const Duration(milliseconds: 5000),
        displayCloseButton: false,
      ).show(context);
}
