versions
version02: spec
	<version: '0.2' imports: #('0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #development;
				author: 'ThierryGoubier';
				description: 'First configuration for AltBrowser'.
			spec package: 'Alt-Browser' with: 'Alt-Browser-ThierryGoubier.111' ]