*PetitParser2-Experiments-Reparsing
testReparsable
	| debugStrategy |
	debugStrategy := strategy debug.
	
	self assert: debugStrategy reparsable == debugStrategy.
	self assert: debugStrategy strategy isKindOf: PP2Reparsable
	