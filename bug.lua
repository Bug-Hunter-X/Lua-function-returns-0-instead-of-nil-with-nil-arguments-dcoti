local function foo(a, b)
  if a == nil then return b end
  if b == nil then return a end
  return a + b
end

print(foo(10, 20)) -- Output: 30
print(foo(nil, 20)) -- Output: 20
print(foo(10, nil)) -- Output: 10
print(foo(nil, nil)) -- Output: 0 -- Unexpected! Should be nil