do

function run(msg, matches)
send_contact(get_receiver(msg), "+989218299684", "HamyarGroup", "BoT", ok_cb, false)
end

return {
patterns = {
"^!botnumber$"

},
run = run
}

end
