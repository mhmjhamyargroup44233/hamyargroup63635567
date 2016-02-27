local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['antifosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['antifosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
        send_large_msg(chat, 'بدلیل فحاشی از گروه سیکتیر شدید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس(.*)",
    "کسس(.*)",
    "کسسس(.*)",
    "کسسسس(.*)",
    "کسسسسس(.*)",
    "کسسسسسس(.*)",
    "کص(.*)",
    "کصص(.*)",
    "کصصص(.*)",
    "کصصصص(.*)",
    "کصصصصص(.*)",
    "کصصصصصص(.*)",
    "کصصصصصصص(.*)",
    "کث(.*)",
    "کسو(.*)",
    "kos(.*)",
    "koos(.*)",
    "kooos(.*)",
    "koooos(.*)",
    "kooooos(.*)",
    "koooooos(.*)",
    "kooooooos(.*)",
    "koss(.*)",
    "kosss(.*)",
    "kossss(.*)",
    "kosssss(.*)",
    "kossssss(.*)",
    "kosssssss(.*)",
    "kkos(.*)",
    "kkkos(.*)",
    "kkkkos(.*)",
    "kkkkkos(.*)",
    "kkkkkkos(.*)",
    "کس(.*)",
    "کون(.*)",
    "کـون(.*)",
    "کوون(.*)",
    "کووون(.*)",
    "ککون(.*)",
    "کوننن(.*)",
    "کوووووووون(.*)",
    "کیر(.*)",
    "کییر(.*)",
    "کیییر(.*)",
    "کییییر(.*)",
    "کیییییر(.*)",
    "کییررر(.*)",
    "کییرررر(.*)",
    "ککییر(.*)",
    "ممه(.*)",
    "mame(.*)",
    "پستون(.*)",
    "لاپا(.*)",
    "سکس(.*)",
    "لات(.*)",
    "منی(.*)",
    "اسپرم(.*)",
    "سیکتیر(.*)",
    "fuck(.*)",
    "قهبه(.*)",
    "بسیک(.*)",
    "بیناموس(.*)",
    "جنده(.*)",
    "اوبی(.*)",
    "obi(.*)",
    "کونی(.*)",
    "بیشرف(.*)",
    "کس ننه(.*)",
    "ساک(.*)",
    "کیری(.*)",
    "خار کوسه(.*)",
    "ننه(.*)",
    "خواهرتو(.*)",
    "سکسی(.*)",
    "sex(.*)",
    "کسکش(.*)",
    "سیک تیر(.*)",
    "گاییدم(.*)",
    "میگام(.*)",
    "تلمبه(.*)",
    "سینه(.*)",
    "کونده(.*)",
    "koonde(.*)",
    "ژووون(.*)",
    "زیر خواب(.*)",
    "میگامت(.*)",
    "migamet(.*)",
    "بسیک(.*)",
    "خواهرت(.*)",
    "مادر(.*)",
    "خارتو(.*)",
    "کونت(.*)",
    "koonet(.*)",
    "کوست(.*)",
    "koset(.*)",
    "شورت(.*)",
    "سگی(.*)",
    "پدرسگ(.*)",
    "مادر جنده(.*)",
    "کیری(.*)",
    "kiri(.*)",
    "دول(.*)",
    "ننت(.*)",
    "nanat(.*)",
    "ابمو(.*)",
    "آبمو(.*)",
    "جق(.*)"
    "jaq(.*)"
    "jagh(.*)"
    "jaghi(.*)"
    "shut up(.*)"
    "Motherfucker(.*)"
    "sisterfucker(.*)"
    "Trollop(.*)"
    "whore(.*)"
  },
  run = run
}
--Copyright and edit; @mhmafi
--Persian Translate; @Ho3yyyn
--ch : @hamyargroupp
--کپی بدون ذکر منبع حرام است--
