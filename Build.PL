use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Geography::JapanesePrefectures',
    license             => 'perl',
    dist_author         => 'Tokuhiro Matsuno <tokuhiro __at__ mobilefactory.jp>',
    dist_version_from   => 'lib/Geography/JapanesePrefectures.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Geography-JapanesePrefectures-*' ],
);

$builder->create_build_script();
