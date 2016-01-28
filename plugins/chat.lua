local function run(msg)
if msg.text == "hi" then
	return "سلام دوست عزیزم.لطفا فارسی چت کن"
end
if msg.text == "Hi" then
	return "سلام دوست عزیزم.لطفا فارسی چت کن"
end
if msg.text == "Hello" then
	return "سلام دوست عزیزم.لطفا فارسی چت کن"
end
if msg.text == "hello" then
	return "سلام دوست عزیزم.لطفا فارسی چت کن"
end
if msg.text == "Salam" then
	return "سلام دوست عزیزم"
end
if msg.text == "salam" then
	return "سلام دوست عزیزم"
end
if msg.text == "alireza" then
	return "Developer and manufacturer of robots"
end
if msg.text == "Alireza" then
	return "Developer and manufacturer of robots"
end
if msg.text == "سازنده تو کیه؟" then
	return "@alireza_PT"
end
if msg.text == "Gfx" then
	return "انگار من رو صدا زدی"
end
if msg.text == "gfx" then
	return "انگار منو صدا زدی"
end
if msg.text == "bot" then
	return "بله؟"
end
if msg.text == "Bot" then
	return "با من کاری دارید؟"
end
if msg.text == "slm" then
	return "درست سلام بده خووو گشاد"
end
if msg.text == "اصل بده" then
	return "GFX BOT"
end
if msg.text == "خوبی؟" then
	return "تشکر دوست عزیزم"
end
if msg.text == "کصکش" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "عمه جنده" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "دیوث" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "کیر" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "kir" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "جاکش" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "ممنون از لطفت" then
	return "خواهش میکنم دوست عزیز"
end
if msg.text == "کص ننت" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "سلام" then
	return "سلام دوست عزیزم"
end
if msg.text == "کص عمت" then
	return "لطفا از کلمات بد استفاده نکن دوست عزیز"
end
if msg.text == "alireza" then
	return "Developer and manufacturer of robots 😎"
end
if msg.text == "بای" then
	return "خدانگهدار دوست عزیزم"
end
if msg.text == "Bye" then
	return "خدانگهدار دوست عزیزم"
end
if msg.text == "bye" then
	return "خدانگهدار دوست عزیزم"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Aa]ireza$",
		"^سازنده تو کیه؟$",
		"^[Bb]ot$",
		"^[Gg]fx$",
		"^[Bb]ye$",
		"^slm$",
		"^اصل بده$",
		"^خوبی؟$",
		"^کصکش",
		"^عمه جنده$",
		"^دیوث$",
		"^کیر$",
		"^kir$",
		"^جاکش$",
		"^ممنون از لطفت$",
		"^کص ننت$",
		"^سلام$",
		"^کص عمت$",
		"^alireza$",
		"^بای$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
