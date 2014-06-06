#!/usr/bin/env bats

@test "has build tools installed" {
  which make
}

@test "creates a 'martinisoft' user from the data bag" {
  getent passwd martinisoft
}
