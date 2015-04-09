# About This Project

This very simple Project is made for Demo Wego Exchange Rate Multi-Currency using Wego Currency API..

Initially this project made by mixing Rails with jQuery, But I change my mind and use AngularJS for several operations..
So Here's following technology that used in this Project :

* Database : Redis (to store the data, and REDISCLOUD addon for Heroku) and Postgresql (Just an accessories.. :D)

* Ruby 2.0.0, Rails 4.1.7

* FrontEnd : AngularJS

* Puma Server with 4 PUMA_WORKERS and 16 MAX_THREADS, DYNO Web 1X 1 (Heroku Free Plan)

* Using Heroku Scheduler on Heroku for fetching data hourly with Rake task pointing

* Apache Benchmark for Load Testing

* Not yet tested with Unit Testing


Here's following Apache Benchmark Testing results :
```
This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking wego-currency.herokuapp.com (be patient)
Finished 127 requests


Server Software:        Cowboy
Server Hostname:        wego-currency.herokuapp.com
Server Port:            80

Document Path:          /
Document Length:        1268 bytes

Concurrency Level:      1000
Time taken for tests:   10.020 seconds
Complete requests:      127
Failed requests:        0
Total transferred:      259054 bytes
HTML transferred:       162304 bytes
Requests per second:    12.67 [#/sec] (mean)
Time per request:       78901.496 [ms] (mean)
Time per request:       78.901 [ms] (mean, across all concurrent requests)
Transfer rate:          25.25 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:      434 2889 2391.9   2531    9121
Processing:   465 1569 1713.1    722    8781
Waiting:      436 1353 1512.3    692    6304
Total:        956 4458 2535.0   4343    9919

Percentage of the requests served within a certain time (ms)
  50%   4328
  66%   5551
  75%   6481
  80%   6736
  90%   8575
  95%   8770
  98%   9310
  99%   9349
 100%   9919 (longest request)
```
