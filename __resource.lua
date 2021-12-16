resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Gang Chains usable as an item'

author "Louie"

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

client_scripts {
	'client.lua'
}
