user=TOREPLACE
filename="/opt/$user/ninja/bulk_ninja"

if [[ -f $filename ]]
then
    curl -XPOST 'localhost:9200/_bulk?pretty' -H 'Content-Type: application/json' --data-binary @$filename
    rm $filename
fi
