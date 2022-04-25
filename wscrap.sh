#!/bin/bash


curl https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops > tmp_file

cat tmp_file | grep "class=\"description\""| cut -d '>' -f2 | cut -d'<' -f1 |  sed 's/,//g'  |  sed 's/&quot/"/' |  sed 's/;//' > descriptionfull
 
cat tmp_file | grep "class=\"pull-right price\""| cut -d '>' -f2 | cut -d'<' -f1 > price

paste -d '|' descriptionfull price 

rm descriptionfull price

