Class {
	#name : #PP2PEGParserParserTest216,
	#superclass : #PP2PEGParserParserTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2PEGParserParserTest216 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2PEGParserParserTest216 >> testEndOfLine_amp_L2 [
	<madeBySmallAmp>
	| prs cr lf crlf |
	prs := self parserInstance at: 'EndOfLin|e'
]

{ #category : #'as yet unclassified' }
PP2PEGParserParserTest216 >> testEndOfLine_amp_L4 [
	"I test correctness of: 

- `rest size + 1` in method: `PP2PEGParserParser >> #Identifier`

"

	<madeBySmallAmp>
	| prs cr lf crlf aPP2PEGParserParser |
	aPP2PEGParserParser := self parserInstance.
	self
		assert:
			aPP2PEGParserParser Identifier block sourceNode formattedCode
		equals:
			'[ :args | 
| first rest |
first := args first.
rest := args second.
(String new: rest size + 1) writeStream
	nextPut: first;
	nextPutAll: rest;
	contents ]'.
	prs := aPP2PEGParserParser at: 'z,0#Aa${^*51y8mD3W8W@s>(Ju88{ E.'
]
