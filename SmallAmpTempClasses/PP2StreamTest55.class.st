Class {
	#name : #PP2StreamTest55,
	#superclass : #PP2StreamTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2StreamTest55 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2StreamTest55 >> testNewTokenFromTo_amp [
	"I test correctness of: 

- `^ collection` in method: `PP2Stream >> #collection` when {#collection->'foo'}

- `^ false` in method: `PP2Stream >> #isBuffered`

"

	<madeBySmallAmp>
	| stream |
	self
		streamOn: 'foo';
		assert: stream collection equals: 'foo';
		deny: stream isBuffered
]
