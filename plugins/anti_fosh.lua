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
        send_large_msg(chat, 'به دلیل عدم رعایت قوانین و استفاده از کلمات رکیک از گروه محروم شدید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس(.*)",
    "کص(.*)",
    "کث(.*)",
    "کسو(.*)",
    "kos(.*)",
    "Kos(.*)"
    "کس(.*)",
    "کون(.*)",
    "کـون(.*)",
    "کوون(.*)",
    "کووون(.*)",
    "ککون(.*)",
    "کیر(.*)",
    "ممه(.*)",
    "mame(.*)",
    "Mame(.*)",
    "پستون(.*)",
    "لاپا(.*)",
    "سکس(.*)",
    "لات(.*)",
    "منی(.*)",
    "اسپرم(.*)",
    "سیکتیر(.*)",
    "fuck(.*)",
    "Fuck(.*)",
    "قهبه(.*)",
    "بسیک(.*)",
    "بیناموس(.*)",
    "جنده(.*)",
    "اوبی(.*)",
    "obi(.*)",
    "Obi(.*)",
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
    "Sex(.*)",
    "کسکش(.*)",
    "سیک تیر(.*)",
    "گاییدم(.*)",
    "میگام(.*)",
    "تلمبه(.*)",
    "سینه(.*)",
    "کونده(.*)",
    "koonde(.*)",
    "Koonde(.*)",
    "ژووون(.*)",
    "زیر خواب(.*)",
    "میگامت(.*)",
    "migamet(.*)",
    "Migamet(.*)",
    "بسیک(.*)",
    "خواهرت(.*)",
    "مادر(.*)",
    "خارتو(.*)",
    "کونت(.*)",
    "koonet(.*)",
    "Koonet(.*)",
    "کوست(.*)",
    "Koset(.*)",
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
    "Nanat(.*)",
    "ابمو(.*)",
    "آبمو(.*)",
    "جق(.*)",
    "jaq(.*)",
  "www.porn.com(.*)",
  "www.pornhub.com(.*)",
  "www.youporn.com(.*)",
  "www.xvideos.com(.*)",
  "www.redtube.com(.*)",
  "www.tnaflix.com(.*)",
  "www.pornolaba.com(.*)",
  "www.ixxx.com(.*)",
  "www.xnxx.com(.*)",
  "theporndude.com(.*)",
  "www.pornktube.com(.*)",
  "mashable.com(.*)",
  "wanted-porn.com(.*)",
  "www.pornhub.com(.*)",
  "www.17sexvideo.com(.*)",
  "www.youx.xxx(.*)",
  "www.teenpornsex.info(.*)",
  "www.xnxx.com(.*)",
  "www.tnaflix.com(.*)",
  "www.usexvideos.com(.*)",
  "www.sexvid.xxx(.*)",
  "xmissy.nl(.*)",
  "www.redtube.com(.*)",
  "www.bangkokpost.com(.*)",
  "xnxx.com(.*)"
  },
  run = run
}
