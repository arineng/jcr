# wget https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh

. assert.sh

assert_raises "jcr -r figs/first_example.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/first_example2.jcr figs/first_example.json" 0
assert_raises "jcr -r figs/second_example.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr figs/second_example.json" 0
assert_raises "jcr -r figs/second_example2.jcr -o figs/second_example_override.jcr figs/second_example2.json" 0
assert_raises "jcr -r figs/rfc4627_example.jcr figs/rfc4627_example.json" 0
assert_raises "jcr -r figs/rfc4627_example2.jcr figs/rfc4627_example.json" 0
assert_raises "jcr -r figs/assignment_example.jcr" 1
assert_raises "jcr -r figs/rule_name_ruleset_id.jcr" 1
assert_raises "jcr -r figs/primitives_overview.jcr" 1
assert_raises "jcr -r figs/primitives_boolean_and_null.jcr" 1
assert_raises "jcr -r figs/primitives_integer_and_float.jcr" 1
assert_raises "jcr -r figs/primitives_float_range.jcr" 1
assert_raises "jcr -r figs/primitives_bit_integers.jcr" 1
assert_raises "jcr -r figs/primitives_strings" 1
assert_raises "jcr -r figs/primitives_uris" 1
assert_raises "jcr -r figs/primitives_misc" 1
assert_raises "jcr -r figs/primitives_binary" 1

assert_end figs

