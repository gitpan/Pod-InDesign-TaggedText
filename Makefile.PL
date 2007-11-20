# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Pod::InDesign::TaggedText',
	'ABSTRACT'     => 'Convert Pod to InDesign\'s Tagged Text format',
	'VERSION_FROM' => 'lib/TaggedText.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Pod::PseudoPod'      => '0',
		'Test::LongString'    => '0',
		'Tie::Cycle'          => '0',
		},

	'PM'           => {
		'lib/TaggedText.pm'         => '$(INST_LIBDIR)/TaggedText.pm',
		},

	'MAN3PODS'     => {
		'lib/TaggedText.pm' => '$(INST_MAN3DIR)/Pod::InDesign::TaggedText.3',
		},

	clean  => { FILES    => q|Pod-InDesign-TaggedText-*| },
	);
