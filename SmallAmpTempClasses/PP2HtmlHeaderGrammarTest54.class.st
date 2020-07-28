Class {
	#name : #PP2HtmlHeaderGrammarTest54,
	#superclass : #PP2HtmlHeaderGrammarTest,
	#category : #SmallAmpTempClasses
}

{ #category : #'as yet unclassified' }
PP2HtmlHeaderGrammarTest54 class >> allTestSelectors [
		| answer |
		answer := Set withAll: self testSelectors.
		answer addAll: self superclass allTestSelectors.
		^ answer asSortedCollection asOrderedCollection
]

{ #category : #'as yet unclassified' }
PP2HtmlHeaderGrammarTest54 >> testZincClientIntegration_amp_A0 [
	"I test correctness of: 

- `^ PP2HtmlHeaderGrammar new optimize parse: stream` in method: `PP2HtmlHeaderGrammar class >> #example`

"

	<madeBySmallAmp>
	| byteStream stream aZnClient aPP2HtmlHeaderGrammar aString |
	aZnClient := ZnClient new.
	byteStream := aZnClient
		url: 'http://pharo.org';
		streaming: true;
		get.
	stream := PP2CharacterStream
		on: byteStream
		encoder: ZnUTF8Encoder new.
	aPP2HtmlHeaderGrammar := PP2HtmlHeaderGrammar new.
	aString := PP2HtmlHeaderGrammar example.
	self
		assert: aString
		equals:
			'
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pharo - Welcome to Pharo!</title>
    <link rel="shortcut icon" href="/files/favicon.ico" />
    <link href=''//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'' rel=''stylesheet'' type=''text/css''>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/united/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="/web/files/style.css">
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="/web/files/ekko-lightbox.min.js"></script>
    <script src="/web/files/pharo.js"></script>
    <link rel="stylesheet" href="/web/files/ekko-lightbox.min.css">
'.
	result := aPP2HtmlHeaderGrammar parse: stream
]
