import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'court.freezed.dart';
part 'court.g.dart';

Court courtFromJson(String str) => Court.fromJson(json.decode(str));

String courtToJson(Court data) => json.encode(data.toJson());

@freezed
class Court with _$Court {
  const factory Court({
    @Default("") String id,
    @Default("") String name,
    @Default(0) int price,
    @Default("") String imageUrl,
  }) = _Court;

  factory Court.fromJson(Map<String, dynamic> json) => _$CourtFromJson(json);
}
