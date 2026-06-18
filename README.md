1. Clone the repo
2. Open `tests/testthat/test-foo.R` in Positron or RStudio (so that it is considered the "active file")
3. `devtools::test()`

```
ℹ Testing bug.testthat.coverage
✔ | F W  S  OK | Context
✔ |          1 | foo                                                                                      

══ Results ═══════════════════════════════════════════════════════════════════════════════════════════════
[ FAIL 0 | WARN 0 | SKIP 0 | PASS 1 ]
```


4. `devtools::test_coverage_active_file()`

```
── Failure: foo ──────────────────────────────────────────────────────────────────────────────────────────
Snapshot of code has changed:
    old                            | new                               
[1] Code                           | Code                           [1]
[2]   f(x = logical(0))            |   f(x = logical(0))            [2]
[3] Condition                      | Condition                      [3]
[4]   Error in `if (x) ...`:       -   Error in `if (...) NULL`:    [4]
[5]   ! argument is of length zero |   ! argument is of length zero [5]
* Run testthat::snapshot_accept("foo") to accept the change.
* Run testthat::snapshot_review("foo") to review the change.
Error:
! Test failed with 1 failure and 0 successes.

Show Traceback
```
