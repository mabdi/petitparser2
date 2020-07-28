Class {
	#name : #PP2BufferStreamValidatorTest67,
	#superclass : #PP2BufferStreamValidatorTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2BufferStreamValidatorTest67 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2BufferStreamValidatorTest67 >> testExpectedForSourceSingleNumber_amp_L0 [
	"I test correctness of: 

- `^ PP2Sources current
	inputs: #expressionOfSize:
	steps: 200
	amount: 1
	max: 200` in method: `PP2BufferStreamValidator >> #sources`

"

	<madeBySmallAmp>
	| result |
	result := validator expectedForSource: ''.
	self assert: validator sources class equals: OrderedCollection
]

{ #category : #'as yet unclassified' }
PP2BufferStreamValidatorTest67 >> testExpectedForSourceSingleNumber_amp_L1 [
	"I test correctness of: 

- `^ 'PP2BufferStream'` in method: `PP2BufferStreamValidator >> #name`

"

	<madeBySmallAmp>
	| result |
	result := validator expectedForSource: '5!'.
	self assert: validator name equals: 'PP2BufferStream'
]
