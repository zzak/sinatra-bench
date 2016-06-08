echo "Benchmarking Sinatra 1.4.7 first route"
ab -kc 15 -n 5000 http://127.0.0.1:4567/1 | grep "Requests per second"
echo "Benchmarking Sinatra 1.4.7 hundreth route"
ab -kc 15 -n 5000 http://127.0.0.1:4567/100 | grep "Requests per second"

echo "#########################################"

echo "Benchmarking Sinatra Edge first route"
ab -kc 15 -n 5000 http://127.0.0.1:4568/1 | grep "Requests per second"
echo "Benchmarking Sinatra Edge hundreth route"
ab -kc 15 -n 5000 http://127.0.0.1:4568/100 | grep "Requests per second"
