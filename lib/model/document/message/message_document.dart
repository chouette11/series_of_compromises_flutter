import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_document.freezed.dart';

part 'message_document.g.dart';

@freezed
class MessageDocument with _$MessageDocument {
  const MessageDocument._();

  const factory MessageDocument({
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'isQuestion') bool? isQuestion,
  }) = _MessageDocument;

  factory MessageDocument.fromJson(Map<String, dynamic> json) =>
      _$MessageDocumentFromJson(json);
}
