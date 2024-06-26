import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/model/document/message/message_document.dart';

part 'message_entity.freezed.dart';
part 'message_entity.g.dart';


@freezed
class MessageEntity with _$MessageEntity {
    const MessageEntity._();

  const factory MessageEntity({
    required String content,
    required String uid,
    required DateTime createdAt,
    bool? isQuestion,
  }) = _MessageEntity;

   factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);

  static MessageEntity fromDoc(MessageDocument taskDoc) {
    return MessageEntity(
      content: taskDoc.content,
      uid: taskDoc.uid,
      createdAt: DateTime.now(),
    );
  }

  MessageDocument toMessageDocument() {
    return MessageDocument(
      content: content,
      uid: uid,
    );
  }
}
