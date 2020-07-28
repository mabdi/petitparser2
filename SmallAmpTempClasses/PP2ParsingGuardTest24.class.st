Class {
	#name : #PP2ParsingGuardTest24,
	#superclass : #PP2ParsingGuardTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2ParsingGuardTest24 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2ParsingGuardTest24 >> testParseOnFailure_amp [
	"I test correctness of: 

- `^ classification` in method: `PP2ParsingGuard >> #classification` when {#classification->#(true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true true)}

"

	<madeBySmallAmp>
	| parser context guard |
	parser := #letter asPParser.
	self
		guardOn: parser;
		assert: guard classification class equals: Array
]

{ #category : #'as yet unclassified' }
PP2ParsingGuardTest24 >> testParseOnUnicode_amp [
	"I test correctness of: 

- `^ retval` in method: `PP2ParsingGuard >> #retval`

"

	<madeBySmallAmp>
	| parser context guard |
	parser := #letter asPParser.
	self
		guardOn: parser;
		assert: guard retval class equals: PP2Failure
]
