var Nightmare = require('nightmare');
var nightmare = Nightmare({ show: true });

nightmare
  .goto('http://baidu.com')
  .type('form[action*="/s"] [name=f]', '歼20')
  .click('form[action*="/"] [type=submit]')
  .wait('#content_left')
  .evaluate(function () {
    return document.querySelector('#content_left .result-op .t a').href
  })
  .end()
  .then(function (result) {
    console.log(result)
  })
  .catch(function (error) {
    console.error('Search failed:', error);
  });