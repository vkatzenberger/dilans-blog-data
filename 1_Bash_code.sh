# Make directory

mkdir dilans-blog
cd dilans-blog

# Download the data
wget 46.101.230.157/testtask/dilans_raw.csv

# Explore the data
cat dilans_data.csv | head -100

cat dilans_data.csv | tail -100

grep "read" dilans_data.csv

# Cleaning and preparing the data

# Split Time Column

mcedit time_to_date.sh
chmod 777 time_to_date.sh
./time_to_date.sh

# Change Topic Field

mcedit topic_mod.sh
chmod 777 topic_mod.sh
./topic_mod.sh

rm dilans_data.csv
cp tmp.csv dilans_data.csv
rm tmp.csv

mkdir data

grep "read" dilans_data.csv > /home/katz/dilans-blog/data/all_read.csv
grep "subscribe" dilans_data.csv > /home/katz/dilans-blog/data/all_subscribe.csv
grep "buy" dilans_data.csv > /home/katz/dilans-blog/data/all_buy.csv