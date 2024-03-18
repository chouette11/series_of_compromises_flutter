// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDocument _$$_MessageDocumentFromJson(Map<String, dynamic> json) =>
    _$_MessageDocument(
      content: json['content'] as String,
      uid: json['uid'] as String,
      isQuestion: json['isQuestion'] as bool?,
    );

Map<String, dynamic> _$$_MessageDocumentToJson(_$_MessageDocument instance) =>
    <String, dynamic>{
      'content': instance.content,
      'uid': instance.uid,
      'isQuestion': instance.isQuestion,
    };
