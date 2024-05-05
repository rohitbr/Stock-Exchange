// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_meta_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockMetaData _$StockMetaDataFromJson(Map<String, dynamic> json) {
  return _StockMetaData.fromJson(json);
}

/// @nodoc
mixin _$StockMetaData {
  @JsonKey(name: '1. Information')
  String? get information => throw _privateConstructorUsedError;
  @JsonKey(name: '2. Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: '3. Last Refreshed')
  String? get lastRefreshed => throw _privateConstructorUsedError;
  @JsonKey(name: '4. Interval')
  String? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: '5. Output Size')
  String? get outputSize => throw _privateConstructorUsedError;
  @JsonKey(name: '6. Time Zone')
  String? get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockMetaDataCopyWith<StockMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockMetaDataCopyWith<$Res> {
  factory $StockMetaDataCopyWith(
          StockMetaData value, $Res Function(StockMetaData) then) =
      _$StockMetaDataCopyWithImpl<$Res, StockMetaData>;
  @useResult
  $Res call(
      {@JsonKey(name: '1. Information') String? information,
      @JsonKey(name: '2. Symbol') String? symbol,
      @JsonKey(name: '3. Last Refreshed') String? lastRefreshed,
      @JsonKey(name: '4. Interval') String? interval,
      @JsonKey(name: '5. Output Size') String? outputSize,
      @JsonKey(name: '6. Time Zone') String? timeZone});
}

/// @nodoc
class _$StockMetaDataCopyWithImpl<$Res, $Val extends StockMetaData>
    implements $StockMetaDataCopyWith<$Res> {
  _$StockMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? information = freezed,
    Object? symbol = freezed,
    Object? lastRefreshed = freezed,
    Object? interval = freezed,
    Object? outputSize = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_value.copyWith(
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRefreshed: freezed == lastRefreshed
          ? _value.lastRefreshed
          : lastRefreshed // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      outputSize: freezed == outputSize
          ? _value.outputSize
          : outputSize // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockMetaDataImplCopyWith<$Res>
    implements $StockMetaDataCopyWith<$Res> {
  factory _$$StockMetaDataImplCopyWith(
          _$StockMetaDataImpl value, $Res Function(_$StockMetaDataImpl) then) =
      __$$StockMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1. Information') String? information,
      @JsonKey(name: '2. Symbol') String? symbol,
      @JsonKey(name: '3. Last Refreshed') String? lastRefreshed,
      @JsonKey(name: '4. Interval') String? interval,
      @JsonKey(name: '5. Output Size') String? outputSize,
      @JsonKey(name: '6. Time Zone') String? timeZone});
}

/// @nodoc
class __$$StockMetaDataImplCopyWithImpl<$Res>
    extends _$StockMetaDataCopyWithImpl<$Res, _$StockMetaDataImpl>
    implements _$$StockMetaDataImplCopyWith<$Res> {
  __$$StockMetaDataImplCopyWithImpl(
      _$StockMetaDataImpl _value, $Res Function(_$StockMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? information = freezed,
    Object? symbol = freezed,
    Object? lastRefreshed = freezed,
    Object? interval = freezed,
    Object? outputSize = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_$StockMetaDataImpl(
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      lastRefreshed: freezed == lastRefreshed
          ? _value.lastRefreshed
          : lastRefreshed // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      outputSize: freezed == outputSize
          ? _value.outputSize
          : outputSize // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockMetaDataImpl implements _StockMetaData {
  const _$StockMetaDataImpl(
      {@JsonKey(name: '1. Information') this.information,
      @JsonKey(name: '2. Symbol') this.symbol,
      @JsonKey(name: '3. Last Refreshed') this.lastRefreshed,
      @JsonKey(name: '4. Interval') this.interval,
      @JsonKey(name: '5. Output Size') this.outputSize,
      @JsonKey(name: '6. Time Zone') this.timeZone});

  factory _$StockMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockMetaDataImplFromJson(json);

  @override
  @JsonKey(name: '1. Information')
  final String? information;
  @override
  @JsonKey(name: '2. Symbol')
  final String? symbol;
  @override
  @JsonKey(name: '3. Last Refreshed')
  final String? lastRefreshed;
  @override
  @JsonKey(name: '4. Interval')
  final String? interval;
  @override
  @JsonKey(name: '5. Output Size')
  final String? outputSize;
  @override
  @JsonKey(name: '6. Time Zone')
  final String? timeZone;

  @override
  String toString() {
    return 'StockMetaData(information: $information, symbol: $symbol, lastRefreshed: $lastRefreshed, interval: $interval, outputSize: $outputSize, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockMetaDataImpl &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.lastRefreshed, lastRefreshed) ||
                other.lastRefreshed == lastRefreshed) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.outputSize, outputSize) ||
                other.outputSize == outputSize) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, information, symbol,
      lastRefreshed, interval, outputSize, timeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockMetaDataImplCopyWith<_$StockMetaDataImpl> get copyWith =>
      __$$StockMetaDataImplCopyWithImpl<_$StockMetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockMetaDataImplToJson(
      this,
    );
  }
}

abstract class _StockMetaData implements StockMetaData {
  const factory _StockMetaData(
          {@JsonKey(name: '1. Information') final String? information,
          @JsonKey(name: '2. Symbol') final String? symbol,
          @JsonKey(name: '3. Last Refreshed') final String? lastRefreshed,
          @JsonKey(name: '4. Interval') final String? interval,
          @JsonKey(name: '5. Output Size') final String? outputSize,
          @JsonKey(name: '6. Time Zone') final String? timeZone}) =
      _$StockMetaDataImpl;

  factory _StockMetaData.fromJson(Map<String, dynamic> json) =
      _$StockMetaDataImpl.fromJson;

  @override
  @JsonKey(name: '1. Information')
  String? get information;
  @override
  @JsonKey(name: '2. Symbol')
  String? get symbol;
  @override
  @JsonKey(name: '3. Last Refreshed')
  String? get lastRefreshed;
  @override
  @JsonKey(name: '4. Interval')
  String? get interval;
  @override
  @JsonKey(name: '5. Output Size')
  String? get outputSize;
  @override
  @JsonKey(name: '6. Time Zone')
  String? get timeZone;
  @override
  @JsonKey(ignore: true)
  _$$StockMetaDataImplCopyWith<_$StockMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
