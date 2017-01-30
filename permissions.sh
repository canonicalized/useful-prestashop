find ./ -type d -print -exec chmod 755 {} \;
find ./ -type f -print -exec chmod 644 {} \;
chmod a+w -R config/
chmod a+w -R cache/
chmod a+w -R log/
chmod a+w -R img/
chmod a+w -R mails/
chmod a+w -R modules/
chmod a+w -R themes/[default-bootstrap]/lang/
chmod a+w -R themes/[default-bootstrap]/pdf/lang/
chmod a+w -R themes/[default-bootstrap]/cache/
chmod a+w -R translations/
chmod a+w -R upload/
chmod a+w -R download/
chmod a+w [admin]/import/
chmod 775 ./