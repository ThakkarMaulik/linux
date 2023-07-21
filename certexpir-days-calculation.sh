expirydate=`openssl x509 -inform der -noout -dates -in 'Prod-AD-public-key.cer' | grep -v notBefore | sed 's/notAfter=//'`
expirydatevalue=`date --date="$expirydate" +%s`
currentdate=`date +%s`
diff=`expr      $expirydatevalue - $currentdate`
daysleft=`expr $diff / 86400`
echo $daysleft
