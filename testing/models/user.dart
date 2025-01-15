// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:kitify/data/services/api/model/user/user_api_model.dart';
import 'package:kitify/domain/models/user/user.dart';

const userApiModel = UserApiModel(
  id: 'ID',
  name: 'NAME',
  email: 'EMAIL',
  picture: 'assets/user.jpg',
);

const user = User(
  name: 'NAME',
  picture: 'assets/user.jpg',
);
