function run(msg, matches)
  -- Third pattern
  if #matches == 1 then
    print("First")
    local text = matches[1]
    return translate(nil, nil, text)
  end

  -- Second pattern
  if #matches == 2 then
    print("Second")
    local target = matches[1]
    local text = matches[2]
    return translate(nil, target, text)
  end

  -- First pattern
  if #matches == 3 then
    print("Third")
    local source = matches[1]
    local target = matches[2]
    local text = matches[3]
    return translate(source, target, text)
  end

end

return {
  description = "Translate Text, Default Persian", 
  usage = {
    "dic (txt) : translate txt en to fa",
    "dic (lang) (txt) : translate en to other",
    "dic (lang1,lang2) (txt) : translate lang1 to lang2",
  },
  patterns = {
    "^dic ([%w]+),([%a]+) (.+)",
    "^dic ([%w]+) (.+)",
    "^dic (.+)",
  }, 
  run = run 
}

end
