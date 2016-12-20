require('mocha-generators').install();
var Nightmare = require('nightmare');
var expect = require('chai').expect; // jshint ignore:line

describe('test baidu search results', function() {
  it('should find the baidu baike link first', function(done) {
    this.timeout(30000)
    var nightmare = Nightmare()

    nightmare
      .goto('http://baidu.com')
      .type('form[action*="/s"] [name=f]', '歼20')
      .click('form[action*="/"] [type=submit]')
      .wait('#content_left')
      .evaluate(function () {
        var result = document.querySelector('#content_left .result-op .t a').text;
        console.log(result);
        return result;
      })
      .end()
      .then(function(text) {
        expect(text).to.match(/百度百科/);
        done();
      })
  });
});