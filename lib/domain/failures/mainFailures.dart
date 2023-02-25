import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainFailures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.ServerFailure() = _ServerFailure;

  const factory MainFailure.ClientFailure() = _ClientFailure;
}
