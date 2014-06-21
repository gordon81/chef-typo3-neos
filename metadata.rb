name             'typo3-neos'
maintainer       'Ingo Renner'
maintainer_email 'ingo@typo3.org'
license          'Apache 2.0'
description      'Installs/Configures TYPO3'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.6.0'


%w{
  apache2
  mysql
  database
  php
  cron
}.each do |cookbook|
  depends cookbook
end
