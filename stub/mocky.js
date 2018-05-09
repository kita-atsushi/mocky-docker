var mocky = require('mocky');
var fs = require('fs');
var url = require('url');
var querystring = require('querystring');

var res_dir = "/node/response_data"

mocky.createServer([{
// Users
  url: /\/hoge/,
  method: 'get',
  res: function(req, res, callback) {
    var tt = fs.readFileSync(res_dir + '/a.json', 'utf8');
    console.log(tt);
      callback(null, {
        status: 200,
        body: tt
      });
  }
}
]).listen(10443);
