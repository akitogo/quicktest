# quick issue

Fails Error building: BelongsTo@quick -> java.lang.StackOverflowError .

run:
 - box migrate up
 - box migrate seed run

call handler test
  - runs

call handler test/fails
 - fails with Error building: BelongsTo@quick -> java.lang.StackOverflowError .

# quicktest
