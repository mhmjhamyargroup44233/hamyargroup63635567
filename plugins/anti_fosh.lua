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
        send_large_msg(chat, 'به دلیل فحاشی از گروه اخراج شدید')
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
	"xxx(.*)"
	"xnxx(.*)"
	"xvideo(.*)"
	"ایکس ویدیو(.*)"
	"اکس ویدیو(.*)"
	"ایکس ویدئو(.*)"
	"اکس ویدئو(.*)"
	"برزر(.*)"
	"brazzer(.*)"
	"xxlxx(.*)"
	"الکسیس(.*)"
	"alexis(.*)"
	"سوتین(.*)"
	"صوتین(.*)"
	"ثوتین.*)"
	"سووتین(.*)"
	"sootian(.*)"
	"sutian(.*)"
	"sotian(.*)"
	"suutian(.*)"
	"sootyan(.*)"
	"شرت(.*)"
	"short(.*)"
	"کرست(.*)"
	"korset(.*)"
	"corset(.*)"
	"نوار بهداشتی(.*)"
	"navar behdashti(.*)"
	"پریود(.*)"
	"periood(.*)"
	"periuud(.*)"
	"period(.*)"
	"periud(.*)"
	"بالدار(.*)"
	"baldar(.*)"
	"درز عقب(.*)"
	"darze aqab(.*)"
	"هرزه(.*)"
	"harze(.*)"
	"فاحشه(.*)"
	"faheshe(.*)"
	"پرن(.*)"
	"پرناستار(.*)"
	"پرنستار(.*)"
	"porn(.*)"
	"pornstar(.*)"
	"daf(.*)"
	"داف(.*)"
	"کس گشاد(.*)"
	"kos goshad(.*)"
	"کون گشاد(.*)"
	"koon goshad(.*)"
	"pare(.*)"
	"jeret(.*)"
	"جرت(.*)"
	"ساک ریز(.*)"
	"sak riz(.*)"
	"کس لیس(.*)"
	"کسلیس(.*)"
	"کص لیس(.*)"
	"کث لیس(.*)"
	"koslis(.*)"
	"کسباز(.*)"
	"کصباز(.*)"
	"کثباز(.*)"
	"kosbaz(.*)"
	"کس پرور(.*)"
	"kos parvar(.*)"
	"کیر دراز(.*)"
	"کیر کلفت(.*)"
	"kir deraz(.*)"
	"kir koloft(.*)"
	"بخورش(.*)"
	"bokhoresh(.*)"
	"mikonamet(.*)"
	"میکنمت(.*)"
	"حاملت(.*)"
	"hamelat(.*)"
	"مامانتو(.*)"
	"mamaneto(.*)"
	"خواهرتو(.*)"
	"khahareto(.*)"
	"خوارتو(.*)"
	"khareto(.*)"
	"ننتو(.*)"
	"nanato(.*)"
	"اجیتو(.*)"
	"ajito(.*)"
	"ولدزنا(.*)"
	"ولد زنا(.*)"
	"valadzena(.*)"
	"valade zena(.*)"
	"جنده زاده(.*)"
	"jende zade(.*)"
	"کسخل(.*)"
	"کصخل(.*)"
	"کثخل(.*)"
	"کسمیخ(.*)"
	"koskhol(.*)"
	"kos khol(.*)"
	"kosmikh(.*)"
	"kos mikh(.*)"
	"بلا كرامة(.*)"
	"بلا كرامه(.*)"
	"أختكه(.*)"
	"أمك(.*)"
	"(.*)"
	"(.*)"
	"(.*)"
	"(.*)"
  },
  run = run
}
--Copyright and edit; @mhmafi
--Persian Translate; @Ho3yyyn
--ch : @hamyargroupp
--کپی بدون ذکر منبع حرام است--
