for (( c=1; c<=100; c++ ))
do
    echo "$var"
    curl http://localhost:10000 -H "X-Custom-Header: value"
done