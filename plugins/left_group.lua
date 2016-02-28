do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = 182195776 -- your bot id
   -- like local bot_id = 1234567
    if matches[1] == 'leavehamyargroup' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("chat#id"..msg.to.id, '⛔️گروه به سرور (همیار گروه) تعلق ندارد برای جلوگیری از تکرار دوباره اضافه کردن شما به گروه های مشابه شما از ربات بلاک میشوید برای پیگیری به آیدی پیام دهید  @mhmafi', ok_cb, false)
      chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.id,ok_cb,false)
    end
end
 
return {
  patterns = {
    "^[!/](leavehamyargroup)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
--Copyright and edit; @Mhmafi
--Persian Translate; @Mhmafi
--ch : @HamyarGroupp
--همیار گروه
