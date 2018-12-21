status=0

function story {
  printf "$1\n"
}

function pass {
  printf "\033[0;32m  ✓ $1\n\033[0m"
}

function fail {
  printf "\033[0;31m  ✗ $1\n\033[0m"
  status=1
}

function when_I_run {
  output="$($@)"
}

function expect_to_see {
  if [[ $output =~ "$1" ]]; then
    pass "I see \"$1\""
    return
  fi
  fail "I did not see \"$1\""
}

shopt -s nocasematch

export -f story
export -f pass
export -f fail
export -f when_I_run
export -f expect_to_see
