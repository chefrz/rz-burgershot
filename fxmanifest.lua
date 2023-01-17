fx_version 'cerulean'
game 'gta5'

client_script {
    'client/main.lua',
    'client/menu.lua'
}
server_script  'server/main.lua'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
}
