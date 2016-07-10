# wget https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh

. assert.sh

assert_raises "jcr -r figs/first_example.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/first_example2.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/second_example.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr -o figs/second_example_override.jcr figs/second_example2.json" 0
assert_raises "jcr -r figs/rfc4627_example.jcr figs/rfc4627_example.json" 0
assert_raises "jcr -r figs/rfc4627_example2.jcr figs/rfc4627_example.json" 0
assert_raises "jcr --test-jcr -r figs/assignment_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/annotation_example.jcr" 0
assert_raises "jcr -r figs/rule_name_ruleset_id.jcr figs/first_example.json" 1
assert_raises "jcr --test-jcr -r figs/primitives_overview.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_boolean_and_null.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_integer_and_float.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_float_range.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_bit_integers.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_strings.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_uris.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_misc.jcr" 0
assert_raises "jcr --test-jcr -r figs/primitives_binary.jcr" 0
assert_raises "jcr --test-jcr -r figs/member_specifications.jcr" 0
assert_raises "jcr --test-jcr -r figs/object_example.jcr" 0
assert_raises "jcr -r figs/object_example.jcr figs/object_example1.json" 0
assert_raises "jcr -r figs/object_example.jcr figs/object_example2.json" 0
assert_raises "jcr -S "o1" -r figs/object_order_eval.jcr figs/object_order_eval.json" 1
assert_raises "jcr -S "o2" -r figs/object_order_eval.jcr figs/object_order_eval.json" 0
assert_raises "jcr --test-jcr -r figs/array_example.jcr" 0
assert_raises "jcr -S "a1" -r figs/array_order_eval.jcr figs/array_order_eval.json" 1
assert_raises "jcr -S "a2" -r figs/array_order_eval.jcr figs/array_order_eval.json" 0
assert_raises "jcr -S "a2" -r figs/array_order_eval.jcr figs/array_order_eval2.json" 1
assert_raises "jcr -S "a1" -r figs/array_unordered_eval.jcr figs/array_order_eval.json" 1
assert_raises "jcr -S "a2" -r figs/array_unordered_eval.jcr figs/array_order_eval.json" 0
assert_raises "jcr --test-jcr -r figs/group_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/and_or_example.jcr" 0
assert_raises "jcr --test-jcr -r figs/mixed_and_or_bad.jcr" 1
assert_raises "jcr --test-jcr -r figs/mixed_and_or_good.jcr" 0

assert_end figs

