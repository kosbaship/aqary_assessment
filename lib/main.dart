import 'package:flutter/material.dart';

import '1_builder_pattern/real_estate_property_view.dart';
// import '2_bloc_generator_with_transformers/view/generator_with_transformars_example.dart';
import '3_render_objects_with_custom_paints/smiley_face_view.dart';
import '4_bouncing_sticky_header_with_infinite_list/list_with_sticky_header_view.dart';
import '5_retry_policy/retry_policy_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: RetryPolicyView(),
    ),
  );
}
