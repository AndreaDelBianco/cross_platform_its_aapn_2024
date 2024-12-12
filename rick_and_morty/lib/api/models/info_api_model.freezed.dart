// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfoApiModel _$InfoApiModelFromJson(Map<String, dynamic> json) {
  return _InfoApiModel.fromJson(json);
}

/// @nodoc
mixin _$InfoApiModel {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Serializes this InfoApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoApiModelCopyWith<InfoApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoApiModelCopyWith<$Res> {
  factory $InfoApiModelCopyWith(
          InfoApiModel value, $Res Function(InfoApiModel) then) =
      _$InfoApiModelCopyWithImpl<$Res, InfoApiModel>;
  @useResult
  $Res call({int count, int pages, String next, String? prev});
}

/// @nodoc
class _$InfoApiModelCopyWithImpl<$Res, $Val extends InfoApiModel>
    implements $InfoApiModelCopyWith<$Res> {
  _$InfoApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoApiModelImplCopyWith<$Res>
    implements $InfoApiModelCopyWith<$Res> {
  factory _$$InfoApiModelImplCopyWith(
          _$InfoApiModelImpl value, $Res Function(_$InfoApiModelImpl) then) =
      __$$InfoApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String next, String? prev});
}

/// @nodoc
class __$$InfoApiModelImplCopyWithImpl<$Res>
    extends _$InfoApiModelCopyWithImpl<$Res, _$InfoApiModelImpl>
    implements _$$InfoApiModelImplCopyWith<$Res> {
  __$$InfoApiModelImplCopyWithImpl(
      _$InfoApiModelImpl _value, $Res Function(_$InfoApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(_$InfoApiModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoApiModelImpl with DiagnosticableTreeMixin implements _InfoApiModel {
  const _$InfoApiModelImpl(
      {required this.count,
      required this.pages,
      required this.next,
      this.prev});

  factory _$InfoApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoApiModelImplFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String next;
  @override
  final String? prev;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoApiModel(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoApiModel'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('pages', pages))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('prev', prev));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoApiModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of InfoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoApiModelImplCopyWith<_$InfoApiModelImpl> get copyWith =>
      __$$InfoApiModelImplCopyWithImpl<_$InfoApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoApiModelImplToJson(
      this,
    );
  }
}

abstract class _InfoApiModel implements InfoApiModel {
  const factory _InfoApiModel(
      {required final int count,
      required final int pages,
      required final String next,
      final String? prev}) = _$InfoApiModelImpl;

  factory _InfoApiModel.fromJson(Map<String, dynamic> json) =
      _$InfoApiModelImpl.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String get next;
  @override
  String? get prev;

  /// Create a copy of InfoApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoApiModelImplCopyWith<_$InfoApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
