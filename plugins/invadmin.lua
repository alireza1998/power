do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 163289250

  if matches[1] == "addadmin" then
    user = 'user#id'..user
  end

  — The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "Inviting admin😉"
  else 
    return 'This isnt a chat group!😒'
  end

end

return {
  description = "addadmin", 
  usage = {
    "!invite name [user_name]", 
    "!invite id [user_id]" },
  patterns = {
    "^[!/](addadmin)$"
  }, 
  run = run 
}

end
