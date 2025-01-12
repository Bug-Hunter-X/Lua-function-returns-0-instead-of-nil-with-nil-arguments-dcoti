# Lua Nil Argument Handling Bug

This repository demonstrates a subtle bug in a Lua function that handles nil arguments incorrectly. The function `foo` is intended to return either `a`, `b`, or their sum depending on whether one or both are nil. However, when both `a` and `b` are `nil`, it unexpectedly returns 0 instead of `nil`.

The `bug.lua` file contains the problematic code. The `bugSolution.lua` file provides a corrected version.

## Bug
The issue stems from Lua's implicit type conversion. When `a` and `b` are both `nil`, the addition `a + b` results in 0 rather than a `nil` value.  This is not always intuitive for developers expecting strict `nil` behavior. 

## Solution
The solution involves explicitly checking for both `nil` arguments using an `and` condition. The improved function correctly returns `nil` when both arguments are absent.