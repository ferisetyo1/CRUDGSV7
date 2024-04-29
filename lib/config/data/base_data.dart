import 'dart:convert';

class BaseData {
  final bool? status;
  final String? code;
  final String? message;
  final int? nextPage;
  final DateTime? timestamps;
  final int? totalData;
  final int? totalPage;
  final dynamic data;

  BaseData({
    this.status,
    this.code,
    this.message,
    this.nextPage,
    this.timestamps,
    this.totalData,
    this.totalPage,
    this.data,
  });

  BaseData copyWith({
    bool? status,
    String? code,
    String? message,
    int? nextPage,
    DateTime? timestamps,
    int? totalData,
    int? totalPage,
    dynamic data,
  }) =>
      BaseData(
        status: status ?? this.status,
        code: code ?? this.code,
        message: message ?? this.message,
        nextPage: nextPage ?? this.nextPage,
        timestamps: timestamps ?? this.timestamps,
        totalData: totalData ?? this.totalData,
        totalPage: totalPage ?? this.totalPage,
        data: data ?? this.data,
      );

  factory BaseData.fromRawJson(String str) =>
      BaseData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseData.fromJson(Map<String, dynamic> json) => BaseData(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        nextPage: json["next_page"],
        timestamps: json["timestamps"] == null
            ? null
            : DateTime.parse(json["timestamps"]),
        totalData: json["total_data"],
        totalPage: json["total_page"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "next_page": nextPage,
        "timestamps": timestamps?.toIso8601String(),
        "total_data": totalData,
        "total_page": totalPage,
        "data": data,
      };
}
