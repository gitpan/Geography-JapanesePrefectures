use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Geography::JapanesePrefectures',
    AUTHOR        => 'Tokuhiro Matsuno <tokuhiro __at__ mobilefactory.jp>',
    VERSION_FROM  => 'lib/Geography/JapanesePrefectures.pm',
    ABSTRACT_FROM => 'lib/Geography/JapanesePrefectures.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More'  => 0,
        'Test::Class' => 0,
        'version'     => 0,
    },
    dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Geography-JapanesePrefectures-*' },
);
