Class {
	#name : #PP2NoopVisitorTest59,
	#superclass : #PP2NoopVisitorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2NoopVisitorTest59 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2NoopVisitorTest59 >> testVisitCharacter_amp [
	"I test correctness of: 

- `^ openStack size = 2` in method: `PP2NoopVisitor >> #isRoot`

- `^ openStack top` in method: `PP2NoopVisitor >> #currentContext`

"

	<madeBySmallAmp>
	parser := $a asPParser.
	result := visitor visit: parser.
	self
		deny: visitor isRoot;
		assert: visitor currentContext class equals: PP2NoopContext
]
