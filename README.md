# boonda mitra

- flutter version : 3.19.5 or above

## Environtment

staging, beta, production

## Cleaning Problems

```
dart fix --dry-run && dart fix --apply
```

## Android Signing

```
cd android
keytool -genkey -v -keystore upload-keystore.jks -storetype JKS -alias 12345678 -keyalg RSA -keysize 2048 -validity 10000 -deststoretype pkcs12
```

create key.properties at /android with this :
```
storePassword=12345678
keyPassword=12345678
keyAlias=12345678
storeFile=/Users/ferisetyo/project/codeid/baf_opname_mobile/android/upload-keystore.jks
```

## Build APK Manual

```
# production
flutter build apk --flavor prod -t lib/launcher/main_prod.dart

# beta
flutter build apk --flavor dev -t lib/launcher/main_dev.dart

# staging
flutter build apk --flavor stag -t lib/launcher/main_stag.dart
```

## Push Release Codemagic
- env : stag, beta, prod

release in firebase distribution
```
# rules
git tag [build-number]-[env]-release-firebase
git push --tags

# example
git tag 1-stag-release-firebase
git push --tags

```

## Flutterfire Specific Configure
```
#prod
flutterfire configure

# staging
flutterfire configure --out=lib/firebase_options_staging.dart --ios-bundle-id=com.gti.boonda.daycare.stag --android-package-name=com.gti.boonda.daycare.stag

# dev
flutterfire configure --out=lib/firebase_options_dev.dart --ios-bundle-id=com.gti.boonda.daycare.dev --android-package-name=com.gti.boonda.daycare.dev
```