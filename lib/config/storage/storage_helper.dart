import 'package:boonda_mitra/config/storage/key_storage.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:get_storage/get_storage.dart';

extension StorageHelper on GetStorage {
  String get locale => profilData.lang?.toLowerCase() ?? "id";

  void writeIsLogin(bool b) {
    write(KeyStorage.isLogin, b);
  }

  void removeIsLogin() {
    remove(KeyStorage.isLogin);
  }

  bool get isLogin => read(KeyStorage.isLogin) ?? false;

  void writeEmailRemember(String s) {
    write(KeyStorage.emailRemember, s);
  }

  void removeEmailRemember() {
    remove(KeyStorage.emailRemember);
  }

  String get emailRemember => read(KeyStorage.emailRemember) ?? "";

  Future<void> writeAccessToken(String s) async {
    await write(KeyStorage.token, s);
  }

  Future<void> removeAccessToken() async {
    await remove(KeyStorage.token);
  }

  String get accessToken => read(KeyStorage.token) ?? "";

  Future<void> writeRefreshToken(String s) async {
    await write(KeyStorage.refreshToken, s);
  }

  Future<void> removeRefreshToken() async {
    await remove(KeyStorage.refreshToken);
  }

  String get refreshToken => read(KeyStorage.refreshToken) ?? "";

  Future<void> writeClientId(String s) async {
    await write(KeyStorage.clientId, s);
  }

  Future<void> removeClientId(String s) async {
    await remove(KeyStorage.clientId);
  }

  String get clientId => read(KeyStorage.clientId) ?? "";

  Future<void> writefirstInstall(bool b) async {
    await write(KeyStorage.firstInstall, b);
  }

  bool get firstInstall => read(KeyStorage.firstInstall) ?? false;

  Future<void> writeProfilData(Map<String, dynamic> map) async {
    await write(KeyStorage.profilData, map);
  }

  Future<void> removeProfilData() async {
    await remove(KeyStorage.profilData);
  }

  Profile get profilData => Profile.fromJson(read(KeyStorage.profilData) ?? {});
}
