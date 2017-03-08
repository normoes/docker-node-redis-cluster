var express = require('express'),
  redis = require('redis'),
  client = redis.createClient(
    process.env.REDIS_PORT || 6379,
    process.env.REDIS_HOST || 'redis_primary'
  ),
  app = express();

client.on('error', function (err) {
  console.log(err);
});

app.use(express.static(__dirname + '/static'));

app.get('/', function (req, res) {
  client.incr('page.views', function (err, reply) {
    if (err) {
      res.status(500).send({error: String(err)});
    } else {
      res.json({'pageviews': reply});
    }
  });
});

app.listen(3000);
0

