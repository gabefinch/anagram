require('rspec')
require('anagram')

describe('String#anagram') do
  it('Produces an empty array if no anagrams are present') do
    expect(("cat").anagram(["doge", "epicodus"])).to(eq([]))
  end

  it('returns an array containing only words of matching length') do
    expect(("cat").anagram(["tac","parrot","laddy"])).to(eq(["tac"]))
  end

  it('returns only words that contain all the same letters as object word') do
    expect(("cat").anagram(["tac", "toc", "xyz"])).to(eq(["tac"]))
  end

  it('return only anagrams') do
    expect(("cat").anagram(["tac", "cat", "act", "ttt", "caa"])).to(eq(["tac", "cat", "act"]))
  end

end
