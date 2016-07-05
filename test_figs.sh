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

assert_end figs

