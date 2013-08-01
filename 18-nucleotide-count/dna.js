DNA = function(dna) {
	this.count = function(input) {
		var string = dna;

		if (string === "") {
			return 0;
		} else {
			var r = new RegExp(input, 'g');
			var count = string.match(r);
			var countLength = count.length;
			return countLength;
		}
	};

	this.nucleotideCounts = {
		'A' : 0, 'T' : 0, 'C' : 0, 'G' : 0
	}

	// total counts
	for (var i = 0; i < dna.length; i++) {
		var currentNucleotide = dna[i];
		this.nucleotideCounts[currentNucleotide]++;
	};

};
