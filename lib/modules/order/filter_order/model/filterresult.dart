import 'package:freezed_annotation/freezed_annotation.dart';

part 'filterresult.freezed.dart';

@freezed
class FilterOrderResult with _$FilterOrderResult {
  factory FilterOrderResult(
      {int? parentId,
      int? childrenId,
      DateTime? start,
      DateTime? end}) = _FilterOrderResult;
}
