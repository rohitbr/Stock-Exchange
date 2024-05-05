// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) {
  return _StockResponse.fromJson(json);
}

/// @nodoc
mixin _$StockResponse {
  @JsonKey(name: 'Time Series (5min)')
  Map<String, StockData>? get timeSeries => throw _privateConstructorUsedError;
  @JsonKey(name: 'Meta Data')
  StockMetaData? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockResponseCopyWith<StockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockResponseCopyWith<$Res> {
  factory $StockResponseCopyWith(
          StockResponse value, $Res Function(StockResponse) then) =
      _$StockResponseCopyWithImpl<$Res, StockResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Time Series (5min)') Map<String, StockData>? timeSeries,
      @JsonKey(name: 'Meta Data') StockMetaData? metaData});

  $StockMetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$StockResponseCopyWithImpl<$Res, $Val extends StockResponse>
    implements $StockResponseCopyWith<$Res> {
  _$StockResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSeries = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      timeSeries: freezed == timeSeries
          ? _value.timeSeries
          : timeSeries // ignore: cast_nullable_to_non_nullable
              as Map<String, StockData>?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as StockMetaData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockMetaDataCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $StockMetaDataCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockResponseImplCopyWith<$Res>
    implements $StockResponseCopyWith<$Res> {
  factory _$$StockResponseImplCopyWith(
          _$StockResponseImpl value, $Res Function(_$StockResponseImpl) then) =
      __$$StockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Time Series (5min)') Map<String, StockData>? timeSeries,
      @JsonKey(name: 'Meta Data') StockMetaData? metaData});

  @override
  $StockMetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$StockResponseImplCopyWithImpl<$Res>
    extends _$StockResponseCopyWithImpl<$Res, _$StockResponseImpl>
    implements _$$StockResponseImplCopyWith<$Res> {
  __$$StockResponseImplCopyWithImpl(
      _$StockResponseImpl _value, $Res Function(_$StockResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSeries = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$StockResponseImpl(
      timeSeries: freezed == timeSeries
          ? _value._timeSeries
          : timeSeries // ignore: cast_nullable_to_non_nullable
              as Map<String, StockData>?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as StockMetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockResponseImpl implements _StockResponse {
  _$StockResponseImpl(
      {@JsonKey(name: 'Time Series (5min)')
      final Map<String, StockData>? timeSeries,
      @JsonKey(name: 'Meta Data') this.metaData})
      : _timeSeries = timeSeries;

  factory _$StockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockResponseImplFromJson(json);

  final Map<String, StockData>? _timeSeries;
  @override
  @JsonKey(name: 'Time Series (5min)')
  Map<String, StockData>? get timeSeries {
    final value = _timeSeries;
    if (value == null) return null;
    if (_timeSeries is EqualUnmodifiableMapView) return _timeSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'Meta Data')
  final StockMetaData? metaData;

  @override
  String toString() {
    return 'StockResponse(timeSeries: $timeSeries, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._timeSeries, _timeSeries) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_timeSeries), metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockResponseImplCopyWith<_$StockResponseImpl> get copyWith =>
      __$$StockResponseImplCopyWithImpl<_$StockResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockResponseImplToJson(
      this,
    );
  }
}

abstract class _StockResponse implements StockResponse {
  factory _StockResponse(
          {@JsonKey(name: 'Time Series (5min)')
          final Map<String, StockData>? timeSeries,
          @JsonKey(name: 'Meta Data') final StockMetaData? metaData}) =
      _$StockResponseImpl;

  factory _StockResponse.fromJson(Map<String, dynamic> json) =
      _$StockResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Time Series (5min)')
  Map<String, StockData>? get timeSeries;
  @override
  @JsonKey(name: 'Meta Data')
  StockMetaData? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$StockResponseImplCopyWith<_$StockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
