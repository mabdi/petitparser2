predicates creation
blank
	| collection |
	collection := OrderedCollection with: Character space with: Character tab.
	^ self new 
		predicate: (PP2CharSetPredicate on: [ :char | collection includes: char ]);
		predicateMessage: 'blank expected';
		yourself