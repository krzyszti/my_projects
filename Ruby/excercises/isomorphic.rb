''' Example from https://leetcode.com/problems/isomorphic-strings/

Given two strings s and t, determine if they are isomorphic.

Two strings are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

For example,
Given "egg", "add", return true.

Given "foo", "bar", return false.

Given "paper", "title", return true.

'''

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    are_isomorphic?(s,t)
end

def are_isomorphic?(f, s)
  return false if f.length != s.length
  h = {}
  f.length.times do |i|
    t = f[i].to_sym
    if h[t].nil? && !h.has_value?(s[i])
      h[t] = s[i]
    elsif h[t] != s[i]
      return false
    end
  end
  return true
end
