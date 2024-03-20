import 'dart:async';

import 'package:flutter_template/model/entity/position/position_entity.dart';
import 'package:flutter_template/provider/domain_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_template/util/constant/const.dart';
import 'package:uuid/uuid.dart';

part 'presentation_providers.g.dart';

final messageTextFieldController = Provider((_) => TextEditingController());

final tutorialTextFieldController = Provider((_) => TextEditingController());

final idTextFieldProvider = StateProvider<String>((ref) => '');

final uidProvider = StateProvider<String>((ref) =>
    ref.read(firebaseAuthProvider).currentUser?.uid ?? const Uuid().v4());

final errorTextProvider = StateProvider((ref) => '');

final answerAssignedIdProvider = StateProvider<int>((ref) => 404);

@Riverpod(keepAlive: true)
class ObjectPositionList extends _$ObjectPositionList {
  @override
  List<PositionEntity> build() {
    return [
      const PositionEntity(
          id: "hero",
          x: 0,
          y: 0,
          z: 0,
          isVisible: false,
          sender: "flutter",
          typeText: 'hero')
    ];
  }

  void add(PositionEntity position) {
    if (!state.map((e) => e.id).toList().contains(position.id)) {
      state = [...state, position];
    }
  }

  void update(PositionEntity position) {
    if (position.y != 0) {
      state = [
        for (final e in state)
          if (e.id == position.id)
            e.copyWith(
                x: position.x,
                y: position.y,
                z: position.z,
                isVisible: position.isVisible)
          else
            e,
      ];
    }
  }
}

@riverpod
class LimitTime extends _$LimitTime {
  @override
  int build() {
    const flavor = String.fromEnvironment('flavor');
    if (flavor == 'tes') {
      return 10;
    }
    return 100;
  }

  void reset() {
    state = 100;
    const flavor = String.fromEnvironment('flavor');
    if (flavor == 'tes') {
      state = 10;
    }
  }

  void startTimer(DateTime startTime) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      const flavor = String.fromEnvironment('flavor');
      final time = DateTime.now().difference(startTime);
      final value = 100 + ROLE_DIALOG_TIME + 3 - time.inSeconds;
      state = flavor == 'tes' ? state - 1 : (value > 100 ? 100 : value);
      if (state < 1) {
        timer.cancel();
      }
    });
  }
}
