// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:kitify/data/repositories/user/user_repository.dart';
import 'package:kitify/domain/models/user/user.dart';
import 'package:kitify/utils/result.dart';

import '../../models/user.dart';

class FakeUserRepository implements UserRepository {
  @override
  Future<Result<User>> getUser() async {
    return Result.ok(user);
  }
}
