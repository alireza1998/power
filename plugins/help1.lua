1	do
2	
3	-- Returns true if is not empty
4	local function has_usage_data(dict)
5	  if (dict.usage == nil or dict.usage == '') then
6	    return false
7	  end
8	  return true
9	end
10	
11	-- Get commands for that plugin
12	local function plugin_help(name)
13	  local plugin = plugins[name]
14	  if not plugin then return nil end
15	
16	  local text = ""
17	  if (type(plugin.usage) == "table") then
18	    for ku,usage in pairs(plugin.usage) do
19	      text = text..usage..'\n'
20	    end
21	    text = text..'\n'
22	  elseif has_usage_data(plugin) then -- Is not empty
23	    text = text..plugin.usage..'\n\n'
24	  end
25	  return text
26	end
27	
28	-- !help command
29	local function telegram_help()
30	  local text = "Plugin list: \n\n"
31	  -- Plugins names
32	  for name in pairs(plugins) do
33	    text = text..name..'\n'
34	  end
35	  text = text..'\n'..'Write "!help [plugin name]" for more info.'
36	  text = text..'\n'..'Or "!help all" to show all info.'
37	  return text
38	end
39	
40	-- !help all command
41	local function help_all()
42	  local ret = ""
43	  for name in pairs(plugins) do
44	    ret = ret .. plugin_help(name)
45	  end
46	  return ret
47	end
48	
49	local function run(msg, matches)
50	  if matches[1] == "!help" then
51	    return telegram_help()
52	  elseif matches[1] == "!help all" then
53	    return help_all()
54	  else 
55	    local text = plugin_help(matches[1])
56	    if not text then
57	      text = telegram_help()
58	    end
59	    return text
60	  end
61	end
62	
63	return {
64	  description = "Help plugin. Get info from other plugins.  ", 
65	  usage = {
66	    "help: Show list of plugins.",
67	    "help all: Show all commands for every plugin.",
68	    "help [plugin name]: Commands for that plugin."
69	  },
70	  patterns = {
71	    "^help$",
72	    "^help all",
73	    "^help (.+)"
74	  }, 
75	  run = run 
76	}
77	
78	end
