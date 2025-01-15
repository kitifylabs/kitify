// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:kitify/data/repositories/destination/destination_repository.dart';
import 'package:kitify/domain/models/destination/destination.dart';
import 'package:kitify/utils/result.dart';
import 'package:flutter/foundation.dart';

import '../../models/destination.dart';

class FakeDestinationRepository implements DestinationRepository {
  @override
  Future<Result<List<Destination>>> getDestinations() {
    return SynchronousFuture(Result.ok([kDestination1, kDestination2]));
  }
}
