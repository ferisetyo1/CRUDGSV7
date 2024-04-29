import 'package:boonda_mitra/config/pages/guest_middleware.dart';
import 'package:get/get.dart';

import 'login/login_bindings.dart';
import 'login/login_page.dart';
import 'reset_password/create_new_password/create_new_password_bindings.dart';
import 'reset_password/create_new_password/create_new_password_page.dart';
import 'reset_password/send_email_reset/send_email_reset_bindings.dart';
import 'reset_password/send_email_reset/send_email_reset_page.dart';
import 'reset_password/verify_code/verify_code_bindings.dart';
import 'reset_password/verify_code/verify_code_page.dart';

class AuthPages {
  static const loginName = "/auth/login";
  static const registerName = "/auth/register";
  static const successRegisterName = "/auth/register/success";
  static const sendEmailResetName = "/reset-password/send-email-reset";
  static const createNewPasswordName = "/reset-password/create-new-email";
  static const verifyCodeName = "/reset-password/verify-code";

  static List<GetPage> get pages => [
        GetPage(
            name: loginName,
            page: () => const LoginPage(),
            binding: LoginBindings(),
            middlewares: [GuestMiddleware()]),
        GetPage(
            name: sendEmailResetName,
            page: () => const SendEmailResetPage(),
            binding: SendEmailResetBindings(),
            middlewares: [GuestMiddleware()]),
        GetPage(
            name: createNewPasswordName,
            page: () => const CreateNewPasswordPage(),
            binding: CreateNewPasswordBindings(),
            middlewares: [GuestMiddleware()]),
        GetPage(
            name: verifyCodeName,
            page: () => const VerifyCodePage(),
            binding: VerifyCodeBindings(),
            middlewares: [GuestMiddleware()]),
      ];
}
