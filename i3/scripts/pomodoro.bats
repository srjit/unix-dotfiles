#!/usr/bin/env bats
load test_helper

teardown() {
  rm -f ${STATUS_FILE} >&2
}
# NOTHING="NOTHING / 0 of 0"
# WORK0="WORK 1 / 0 of 25"
# WORKIN="WORK 1 / 5 of 25"
# WORKEND="WORK 1 / 26 of 25"
# SHORTBREAK0=""
# SHORTBREAKIN=""
# SHORTBREAKEND=""
# LONGBREAK0=""
# LONGBREAKIN=""
# LONGBREAKEND=""

@test "with no status file" {
  run ./pomodoro
  assert_exit_status 33
  assert_match "NOTHING / 0 of 0" "${output}"
}

@test "status WORK" {
  mkstatus WORK 0 $(now) yes
  run ./pomodoro
  assert_exit_status 0
  assert_match "WORK 0 / 0 of 25" "${output}"
}

@test "status WORK since 5 minutes ago" {
  mkstatus WORK 0 $(now -5) yes
  run ./pomodoro
  assert_exit_status 0
  assert_match "WORK 0 / 5 of 25" "${output}"
}

@test "status WORK since 26 minutes ago" {
  mkstatus WORK 0 $(now -26) yes
  run ./pomodoro
  assert_exit_status 33
  assert_match "WORK 0 / 26 of 25" "${output}"
}

@test "status SHORTBREAK" {
  mkstatus SHORTBREAK 0 $(now) yes
  run ./pomodoro
  assert_exit_status 0
  assert_match "SHORTBREAK / 0 of 5" "${output}"
}

@test "status SHORTBREAK since 6 minutes ago" {
  mkstatus SHORTBREAK 0 $(now -6) yes
  run ./pomodoro
  assert_exit_status 33
  assert_match "SHORTBREAK / 6 of 5" "${output}"
}

@test "status LONGBREAK" {
  mkstatus LONGBREAK 0 $(now) yes
  run ./pomodoro
  assert_exit_status 0
  assert_match "LONGBREAK / 0 of 15" "${output}"
}

@test "status LONGBREAK since 16 minutes ago" {
  mkstatus LONGBREAK 0 $(now -16) yes
  run ./pomodoro
  assert_exit_status 33
  assert_match "LONGBREAK / 16 of 15" "${output}"
}

@test "middle mouse button resets" {
  mkstatus WORK 1 $(now) yes
  BLOCK_BUTTON=2 run ./pomodoro
  assert_match "NOTHING / 0 of 0" "${output}"
}

@test "right mouse button from NOTHING" {
  run ./pomodoro
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "WORK 1 / 0 of 25" "${output}"
}

@test "right mouse button from NOTHING after some time" {
  mkstatus NOTHING 1 $(now -1) yes
  run ./pomodoro
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "WORK 1 / 0 of 25" "${output}"
}

@test "right mouse button from WORK in sprint" {
  mkstatus WORK 1 $(now) yes
  run ./pomodoro
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "WORK 1 / 0 of 25" "${output}"
}

@test "right mouse button from WORK at the end of the sprint" {
  mkstatus WORK 0 $(now -26) yes
  run ./pomodoro
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "SHORTBREAK / 0 of 5" "${output}"
}

@test "right mouse button from WORK at the end of the 4th sprint" {
  mkstatus WORK 4 $(now -26) yes
  run ./pomodoro
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "LONGBREAK / 0 of 15" "${output}"
}

@test "mousewheel up cheats the time positively" {
  mkstatus WORK 1 $(now -5) yes
  BLOCK_BUTTON=4 run ./pomodoro
  assert_match "WORK 1 / 6 of 25" "${output}"
}

@test "mousewheel down cheats the time negatively" {
  mkstatus WORK 1 $(now -5) yes
  BLOCK_BUTTON=5 run ./pomodoro
  assert_match "WORK 1 / 4 of 25" "${output}"
}

@test "must wait for a right click to start the next period" {
  mkstatus WORK 1 $(now -26) yes
  run ./pomodoro
  run ./pomodoro
  assert_match "WORK 1 / 26 of 25" "${output}"
  BLOCK_BUTTON=3 run ./pomodoro
  run ./pomodoro
  run ./pomodoro
  assert_match "SHORTBREAK / 0 of 5" "${output}"
}

@test "the big acceptance" {
  run ./pomodoro
  assert_exit_status 33
  assert_match "NOTHING / 0 of 0" "${output}"
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "WORK 1 / 0 of 25" "${output}"
  for i in 2 3 4
  do
    sed -i -e "s/STARTED=.*/STARTED=$(now -26)/g" ${STATUS_FILE}
    BLOCK_BUTTON=3 run ./pomodoro
    assert_match "SHORTBREAK / 0 of 5" "${output}"
    sed -i -e "s/STARTED=.*/STARTED=$(now -26)/g" ${STATUS_FILE}
    BLOCK_BUTTON=3 run ./pomodoro
    assert_match "WORK ${i} / 0 of 25" "${output}"
  done
  sed -i -e "s/STARTED=.*/STARTED=$(now -26)/g" ${STATUS_FILE}
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "LONGBREAK / 0 of 15" "${output}"
  sed -i -e "s/STARTED=.*/STARTED=$(now -26)/g" ${STATUS_FILE}
  BLOCK_BUTTON=3 run ./pomodoro
  assert_match "WORK 1 / 0 of 25" "${output}"
}


