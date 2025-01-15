// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:kitify/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:kitify/domain/models/itinerary_config/itinerary_config.dart';
import 'package:kitify/utils/result.dart';
import 'package:flutter/foundation.dart';

class FakeItineraryConfigRepository implements ItineraryConfigRepository {
  FakeItineraryConfigRepository({this.itineraryConfig});

  ItineraryConfig? itineraryConfig;

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() {
    return SynchronousFuture(
        Result.ok(itineraryConfig ?? const ItineraryConfig()));
  }

  @override
  Future<Result<void>> setItineraryConfig(ItineraryConfig itineraryConfig) {
    this.itineraryConfig = itineraryConfig;
    return SynchronousFuture(Result.ok(null));
  }
}
