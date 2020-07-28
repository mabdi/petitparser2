Class {
	#name : #PP2DebuggingStrategyTest35,
	#superclass : #PP2DebuggingStrategyTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2DebuggingStrategyTest35 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2DebuggingStrategyTest35 >> testParsingGuard_amp [
	"I test correctness of: 

- `^ true` in method: `PP2DebuggingStrategy >> #isDebugging`

- `^ strategy withoutDebugStrategy` in method: `PP2DebuggingStrategy >> #withoutDebugStrategy`

"

	<madeBySmallAmp>
	| classification debugStrategy |
	debugStrategy := strategy debug.
	self
		assert: debugStrategy isDebugging;
		assert: debugStrategy withoutDebugStrategy class
			equals: PP2LiteralObject
]
