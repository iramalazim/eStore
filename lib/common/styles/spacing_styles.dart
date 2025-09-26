import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EStoreSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight =
      EdgeInsetsGeometry.only(
        top: EStoreSizes.appBarHeight,
        left: EStoreSizes.defaultSpace,
        right: EStoreSizes.defaultSpace,
        bottom: EStoreSizes.defaultSpace,
      );
}
