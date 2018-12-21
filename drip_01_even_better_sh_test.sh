#!/bin/bash

source "$(dirname "$0")/test_helper.sh"

story "As a user, when I run drip, I see the product name"
when_I_run ./drip_01
expect_to_see "drip"

story "As user, when I run drip, I see the ratio for light strength coffee"
when_I_run ./drip_01
expect_to_see "light"
expect_to_see "1:18"

story "As user, when I run drip, I see the ratio for medium strength coffee"
when_I_run ./drip_01
expect_to_see "light"
expect_to_see "medium"
expect_to_see "1:16"

story "As user, when I run drip, I see the ratio for bold strength coffee"
when_I_run ./drip_01
expect_to_see "bold"
expect_to_see "1:14"

story "As a user, when I run echo, I see the arguments I passed in"
when_I_run echo foo baz
expect_to_see "foo"
expect_to_see "baz"

exit $status
