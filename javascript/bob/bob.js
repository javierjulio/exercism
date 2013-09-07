var Bob = function() {};

Bob.prototype = (function() {

  var isShouting = function(message) {
    return message.toUpperCase() == message;
  };

  var isSilence = function(message) {
    return message.replace(/\s+/g, '') == '';
  };

  var isQuestion = function(message) {
    return /\?$/.test(message)
  };

  return {
    constructor: Bob,
    hey: function(message) {
      message = String(message);

      if (isSilence(message))
        return 'Fine. Be that way!';

      if (isShouting(message))
        return 'Woah, chill out!';

      if (isQuestion(message))
        return 'Sure.';

      return 'Whatever.';
    }
  }
})();

module.exports = Bob;
