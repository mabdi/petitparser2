Class {
	#name : #PP2SeaOptimizationVisitorTest96,
	#superclass : #PP2SeaOptimizationVisitorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2SeaOptimizationVisitorTest96 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2SeaOptimizationVisitorTest96 >> testMemoizedSea_amp_L7 [
	<madeBySmallAmp>
	sea := $a asPParser sea.
	parser := sea , ($ñ asPParser / sea).
	self
		visit: parser;
		assert: sea strategy isKindOf: PP2MemoizedSea;
		assert: sea afterWater allNodes anySatisfy: [ :n | n isSea ]
]
