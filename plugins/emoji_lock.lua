local function run(msg)
    if msg.to.type == 'chat' and not is_momod(msg) then
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return '⛔️ فرستادن استیکر های فیلتر شده ممنوع میباشد'
    end
end

return {
    patterns = {
     "🖕"
     "💏"
     "👩‍❤️‍💋‍👩"
     "👨‍❤️‍💋‍👨"
     "👙"
     "👘" 
     "💨" 
     "🌬"
     "🍆"
     "🍍"
     "👅"
     "🚻"
    }, 

run = run
}
