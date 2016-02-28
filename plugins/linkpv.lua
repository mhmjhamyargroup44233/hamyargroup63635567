do

function run(msg, matches)
       if not is_momod(msg) then
        return "⛔️شما مدیر نیستید"
       end
	  local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "⛔️لطفا با تگ:newlink!  لینک گروه را ایجاد کنید"
       end
         local text = "🔑لینک گروه شما:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
end

return {
  patterns = {
    "^[/!]([Ll]inkpv)$"
  },
  run = run
}

end
--Copyright and edit; @Mhmafi
--Persian Translate; @Mhmafi
--ch : @HamyarGroupp
--همیار گروه
