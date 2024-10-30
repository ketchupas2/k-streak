author 'Kodukas'
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_scripts {
    'client/*.lua'
}
server_scripts {
    'server/*.lua'
}

ui_page 'html/index.html'


files {
    'html/index.html',
    'html/style.css',
    'html/ui.js'
}

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}

