import 'package:flutter_template/model/entity/user/user_entity.dart';
import 'package:flutter_template/provider/domain_providers.dart';
import 'package:flutter_template/provider/presentation_providers.dart';
import 'package:flutter_template/repository/user_repository.dart';
import 'package:flutter_template/util/constant/color_constant.dart';
import 'package:flutter_template/util/constant/text_style_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final authProvider =
    Provider<FirebaseAuthDataSource>((ref) => FirebaseAuthDataSource(ref: ref));

class FirebaseAuthDataSource {
  FirebaseAuthDataSource({required this.ref});

  final Ref ref;

  /// 自動ログイン
  Future<void> autoLogin() async {
    final auth = ref.read(firebaseAuthProvider);
    final userRepo = ref.read(userRepositoryProvider);
    final user = auth.currentUser;
    if (user == null || user.email == null) {
      await auth.signInAnonymously();
      final uid = ref.read(uidProvider);
    }
  }

}
