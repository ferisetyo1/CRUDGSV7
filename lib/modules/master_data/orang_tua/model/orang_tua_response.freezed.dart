// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orang_tua_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrangTuaResponse _$OrangTuaResponseFromJson(Map<String, dynamic> json) {
  return _OrangTuaResponse.fromJson(json);
}

/// @nodoc
mixin _$OrangTuaResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get phoneNumber => throw _privateConstructorUsedError;
  dynamic get photo => throw _privateConstructorUsedError;
  dynamic get nik => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  dynamic get birthdate => throw _privateConstructorUsedError;
  dynamic get identityPhoto => throw _privateConstructorUsedError;
  String? get verificationStatus => throw _privateConstructorUsedError;
  Daycare? get daycare => throw _privateConstructorUsedError;
  List<Children>? get childrens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrangTuaResponseCopyWith<OrangTuaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrangTuaResponseCopyWith<$Res> {
  factory $OrangTuaResponseCopyWith(
          OrangTuaResponse value, $Res Function(OrangTuaResponse) then) =
      _$OrangTuaResponseCopyWithImpl<$Res, OrangTuaResponse>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic gender,
      String? email,
      dynamic phoneNumber,
      dynamic photo,
      dynamic nik,
      dynamic address,
      dynamic birthdate,
      dynamic identityPhoto,
      String? verificationStatus,
      Daycare? daycare,
      List<Children>? childrens});

  $DaycareCopyWith<$Res>? get daycare;
}

/// @nodoc
class _$OrangTuaResponseCopyWithImpl<$Res, $Val extends OrangTuaResponse>
    implements $OrangTuaResponseCopyWith<$Res> {
  _$OrangTuaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? photo = freezed,
    Object? nik = freezed,
    Object? address = freezed,
    Object? birthdate = freezed,
    Object? identityPhoto = freezed,
    Object? verificationStatus = freezed,
    Object? daycare = freezed,
    Object? childrens = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identityPhoto: freezed == identityPhoto
          ? _value.identityPhoto
          : identityPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      daycare: freezed == daycare
          ? _value.daycare
          : daycare // ignore: cast_nullable_to_non_nullable
              as Daycare?,
      childrens: freezed == childrens
          ? _value.childrens
          : childrens // ignore: cast_nullable_to_non_nullable
              as List<Children>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DaycareCopyWith<$Res>? get daycare {
    if (_value.daycare == null) {
      return null;
    }

    return $DaycareCopyWith<$Res>(_value.daycare!, (value) {
      return _then(_value.copyWith(daycare: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrangTuaResponseImplCopyWith<$Res>
    implements $OrangTuaResponseCopyWith<$Res> {
  factory _$$OrangTuaResponseImplCopyWith(_$OrangTuaResponseImpl value,
          $Res Function(_$OrangTuaResponseImpl) then) =
      __$$OrangTuaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic gender,
      String? email,
      dynamic phoneNumber,
      dynamic photo,
      dynamic nik,
      dynamic address,
      dynamic birthdate,
      dynamic identityPhoto,
      String? verificationStatus,
      Daycare? daycare,
      List<Children>? childrens});

  @override
  $DaycareCopyWith<$Res>? get daycare;
}

/// @nodoc
class __$$OrangTuaResponseImplCopyWithImpl<$Res>
    extends _$OrangTuaResponseCopyWithImpl<$Res, _$OrangTuaResponseImpl>
    implements _$$OrangTuaResponseImplCopyWith<$Res> {
  __$$OrangTuaResponseImplCopyWithImpl(_$OrangTuaResponseImpl _value,
      $Res Function(_$OrangTuaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? photo = freezed,
    Object? nik = freezed,
    Object? address = freezed,
    Object? birthdate = freezed,
    Object? identityPhoto = freezed,
    Object? verificationStatus = freezed,
    Object? daycare = freezed,
    Object? childrens = freezed,
  }) {
    return _then(_$OrangTuaResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      identityPhoto: freezed == identityPhoto
          ? _value.identityPhoto
          : identityPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verificationStatus: freezed == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      daycare: freezed == daycare
          ? _value.daycare
          : daycare // ignore: cast_nullable_to_non_nullable
              as Daycare?,
      childrens: freezed == childrens
          ? _value._childrens
          : childrens // ignore: cast_nullable_to_non_nullable
              as List<Children>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrangTuaResponseImpl implements _OrangTuaResponse {
  const _$OrangTuaResponseImpl(
      {this.id,
      this.name,
      this.gender,
      this.email,
      this.phoneNumber,
      this.photo,
      this.nik,
      this.address,
      this.birthdate,
      this.identityPhoto,
      this.verificationStatus,
      this.daycare,
      final List<Children>? childrens})
      : _childrens = childrens;

  factory _$OrangTuaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrangTuaResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic gender;
  @override
  final String? email;
  @override
  final dynamic phoneNumber;
  @override
  final dynamic photo;
  @override
  final dynamic nik;
  @override
  final dynamic address;
  @override
  final dynamic birthdate;
  @override
  final dynamic identityPhoto;
  @override
  final String? verificationStatus;
  @override
  final Daycare? daycare;
  final List<Children>? _childrens;
  @override
  List<Children>? get childrens {
    final value = _childrens;
    if (value == null) return null;
    if (_childrens is EqualUnmodifiableListView) return _childrens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrangTuaResponse(id: $id, name: $name, gender: $gender, email: $email, phoneNumber: $phoneNumber, photo: $photo, nik: $nik, address: $address, birthdate: $birthdate, identityPhoto: $identityPhoto, verificationStatus: $verificationStatus, daycare: $daycare, childrens: $childrens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrangTuaResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality()
                .equals(other.identityPhoto, identityPhoto) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.daycare, daycare) || other.daycare == daycare) &&
            const DeepCollectionEquality()
                .equals(other._childrens, _childrens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(gender),
      email,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(nik),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(birthdate),
      const DeepCollectionEquality().hash(identityPhoto),
      verificationStatus,
      daycare,
      const DeepCollectionEquality().hash(_childrens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrangTuaResponseImplCopyWith<_$OrangTuaResponseImpl> get copyWith =>
      __$$OrangTuaResponseImplCopyWithImpl<_$OrangTuaResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrangTuaResponseImplToJson(
      this,
    );
  }
}

abstract class _OrangTuaResponse implements OrangTuaResponse {
  const factory _OrangTuaResponse(
      {final int? id,
      final String? name,
      final dynamic gender,
      final String? email,
      final dynamic phoneNumber,
      final dynamic photo,
      final dynamic nik,
      final dynamic address,
      final dynamic birthdate,
      final dynamic identityPhoto,
      final String? verificationStatus,
      final Daycare? daycare,
      final List<Children>? childrens}) = _$OrangTuaResponseImpl;

  factory _OrangTuaResponse.fromJson(Map<String, dynamic> json) =
      _$OrangTuaResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get gender;
  @override
  String? get email;
  @override
  dynamic get phoneNumber;
  @override
  dynamic get photo;
  @override
  dynamic get nik;
  @override
  dynamic get address;
  @override
  dynamic get birthdate;
  @override
  dynamic get identityPhoto;
  @override
  String? get verificationStatus;
  @override
  Daycare? get daycare;
  @override
  List<Children>? get childrens;
  @override
  @JsonKey(ignore: true)
  _$$OrangTuaResponseImplCopyWith<_$OrangTuaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daycare _$DaycareFromJson(Map<String, dynamic> json) {
  return _Daycare.fromJson(json);
}

/// @nodoc
mixin _$Daycare {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaycareCopyWith<Daycare> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaycareCopyWith<$Res> {
  factory $DaycareCopyWith(Daycare value, $Res Function(Daycare) then) =
      _$DaycareCopyWithImpl<$Res, Daycare>;
  @useResult
  $Res call({int? id, String? name, String? address});
}

/// @nodoc
class _$DaycareCopyWithImpl<$Res, $Val extends Daycare>
    implements $DaycareCopyWith<$Res> {
  _$DaycareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaycareImplCopyWith<$Res> implements $DaycareCopyWith<$Res> {
  factory _$$DaycareImplCopyWith(
          _$DaycareImpl value, $Res Function(_$DaycareImpl) then) =
      __$$DaycareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? address});
}

/// @nodoc
class __$$DaycareImplCopyWithImpl<$Res>
    extends _$DaycareCopyWithImpl<$Res, _$DaycareImpl>
    implements _$$DaycareImplCopyWith<$Res> {
  __$$DaycareImplCopyWithImpl(
      _$DaycareImpl _value, $Res Function(_$DaycareImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_$DaycareImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DaycareImpl implements _Daycare {
  const _$DaycareImpl({this.id, this.name, this.address});

  factory _$DaycareImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaycareImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? address;

  @override
  String toString() {
    return 'Daycare(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaycareImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaycareImplCopyWith<_$DaycareImpl> get copyWith =>
      __$$DaycareImplCopyWithImpl<_$DaycareImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DaycareImplToJson(
      this,
    );
  }
}

abstract class _Daycare implements Daycare {
  const factory _Daycare(
      {final int? id,
      final String? name,
      final String? address}) = _$DaycareImpl;

  factory _Daycare.fromJson(Map<String, dynamic> json) = _$DaycareImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$DaycareImplCopyWith<_$DaycareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Children _$ChildrenFromJson(Map<String, dynamic> json) {
  return _Children.fromJson(json);
}

/// @nodoc
mixin _$Children {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nik => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildrenCopyWith<Children> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenCopyWith<$Res> {
  factory $ChildrenCopyWith(Children value, $Res Function(Children) then) =
      _$ChildrenCopyWithImpl<$Res, Children>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? nik,
      String? gender,
      DateTime? birthDate,
      String? parentId,
      String? photo});
}

/// @nodoc
class _$ChildrenCopyWithImpl<$Res, $Val extends Children>
    implements $ChildrenCopyWith<$Res> {
  _$ChildrenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nik = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? parentId = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenImplCopyWith<$Res>
    implements $ChildrenCopyWith<$Res> {
  factory _$$ChildrenImplCopyWith(
          _$ChildrenImpl value, $Res Function(_$ChildrenImpl) then) =
      __$$ChildrenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? nik,
      String? gender,
      DateTime? birthDate,
      String? parentId,
      String? photo});
}

/// @nodoc
class __$$ChildrenImplCopyWithImpl<$Res>
    extends _$ChildrenCopyWithImpl<$Res, _$ChildrenImpl>
    implements _$$ChildrenImplCopyWith<$Res> {
  __$$ChildrenImplCopyWithImpl(
      _$ChildrenImpl _value, $Res Function(_$ChildrenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nik = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? parentId = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$ChildrenImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildrenImpl implements _Children {
  const _$ChildrenImpl(
      {this.id,
      this.name,
      this.nik,
      this.gender,
      this.birthDate,
      this.parentId,
      this.photo});

  factory _$ChildrenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? nik;
  @override
  final String? gender;
  @override
  final DateTime? birthDate;
  @override
  final String? parentId;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Children(id: $id, name: $name, nik: $nik, gender: $gender, birthDate: $birthDate, parentId: $parentId, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nik, nik) || other.nik == nik) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, nik, gender, birthDate, parentId, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenImplCopyWith<_$ChildrenImpl> get copyWith =>
      __$$ChildrenImplCopyWithImpl<_$ChildrenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenImplToJson(
      this,
    );
  }
}

abstract class _Children implements Children {
  const factory _Children(
      {final int? id,
      final String? name,
      final String? nik,
      final String? gender,
      final DateTime? birthDate,
      final String? parentId,
      final String? photo}) = _$ChildrenImpl;

  factory _Children.fromJson(Map<String, dynamic> json) =
      _$ChildrenImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get nik;
  @override
  String? get gender;
  @override
  DateTime? get birthDate;
  @override
  String? get parentId;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenImplCopyWith<_$ChildrenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
