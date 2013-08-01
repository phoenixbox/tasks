require('./underscore');

global.Scrabble = function(){};

Scrabble = {
	score: function(word){
		word = word || ""
		var letters = word.split("")
		//var totalScores = _.map(letters, function(letter){ 
			//this.letterScores(letters[i]); 
		//});
		var currentScore = 0;
		for(i = 0; i <= word.length-1; i++) {
			currentScore += this.letterScores()[word[i]];
		}
		return currentScore;
	},
	letterScores: function() {
	 return { 
	  	a : 1, b : 3, c : 3, d : 2, e : 1,
			f : 4, g : 2, h : 4, i : 1, j : 8,
			k : 5, l : 1, m : 3, n : 1, o : 1,
			p : 3, q : 10, r : 1, s : 1, t : 1,
		  u : 1, v : 4, w : 4, x : 8, y : 4,
      z : 10 
    }
	}
}
// word.split("").map{|l|values[l]}.inject(:+)

// _.map([1, 2, 3], function(num){ return num * 3; });