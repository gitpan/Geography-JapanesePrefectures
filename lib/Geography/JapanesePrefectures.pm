package Geography::JapanesePrefectures;

use strict;
use warnings;
use Carp;

use version; our $VERSION = qv('0.0.4');

use List::MoreUtils qw(uniq);

our $PREFECTURES = [
    { id => 1,  name => '北海道',    region => '北海道' },
    { id => 2,  name => '青森県',    region => '東北' },
    { id => 3,  name => '岩手県',    region => '東北' },
    { id => 4,  name => '宮城県',    region => '東北' },
    { id => 5,  name => '秋田県',    region => '東北' },
    { id => 6,  name => '山形県',    region => '東北' },
    { id => 7,  name => '福島県',    region => '東北' },
    { id => 8,  name => '茨城県',    region => '関東' },
    { id => 9,  name => '栃木県',    region => '関東' },
    { id => 10, name => '群馬県',    region => '関東' },
    { id => 11, name => '埼玉県',    region => '関東' },
    { id => 12, name => '千葉県',    region => '関東' },
    { id => 13, name => '東京都',    region => '関東' },
    { id => 14, name => '神奈川県', region => '関東' },
    { id => 15, name => '新潟県',    region => '信越' },
    { id => 16, name => '富山県',    region => '北陸' },
    { id => 17, name => '石川県',    region => '北陸' },
    { id => 18, name => '福井県',    region => '北陸' },
    { id => 19, name => '山梨県',    region => '関東' },
    { id => 20, name => '長野県',    region => '信越' },
    { id => 21, name => '岐阜県',    region => '東海' },
    { id => 22, name => '静岡県',    region => '東海' },
    { id => 23, name => '愛知県',    region => '東海' },
    { id => 24, name => '三重県',    region => '東海' },
    { id => 25, name => '滋賀県',    region => '近畿' },
    { id => 26, name => '京都府',    region => '近畿' },
    { id => 27, name => '大阪府',    region => '近畿' },
    { id => 28, name => '兵庫県',    region => '近畿' },
    { id => 29, name => '奈良県',    region => '近畿' },
    { id => 30, name => '和歌山県', region => '近畿' },
    { id => 31, name => '鳥取県',    region => '中国' },
    { id => 32, name => '島根県',    region => '中国' },
    { id => 33, name => '岡山県',    region => '中国' },
    { id => 34, name => '広島県',    region => '中国' },
    { id => 35, name => '山口県',    region => '中国' },
    { id => 36, name => '徳島県',    region => '四国' },
    { id => 37, name => '香川県',    region => '四国' },
    { id => 38, name => '愛媛県',    region => '四国' },
    { id => 39, name => '高知県',    region => '四国' },
    { id => 40, name => '福岡県',    region => '九州' },
    { id => 41, name => '佐賀県',    region => '九州' },
    { id => 42, name => '長崎県',    region => '九州' },
    { id => 43, name => '熊本県',    region => '九州' },
    { id => 44, name => '大分県',    region => '九州' },
    { id => 45, name => '宮崎県',    region => '九州' },
    { id => 46, name => '鹿児島県', region => '九州' },
    { id => 47, name => '沖縄県',    region => '沖縄' },
];

sub prefectures {
    my $self = shift;
    return map { $_->{name} } @$PREFECTURES;
}

sub regions {
    my $self = shift;
    return uniq map { $_->{region} } @$PREFECTURES;
}

sub prefectures_in {
    my ( $self, $region ) = @_;
    return map { $_->{name} } grep { $_->{region} eq $region } @$PREFECTURES;
}

sub prefectures_id {
    my ( $self, $prefecture ) = @_;

    for my $pref (@$PREFECTURES) {
        if ( $prefecture eq $pref->{name} ) {
            return $pref->{id};
        }
    }
}

1;    # Magic true value required at end of module
__END__

=encoding utf-8

=head1 NAME

Geography::JapanesePrefectures - Japanese Prefectures Data.

=head1 VERSION

This document describes Geography::JapanesePrefectures version 0.0.1


=head1 SYNOPSIS

    use Geography::JapanesePrefectures;
    
    Geography::JapanesePrefectures->prefectures_in('関東');
    # => qw(茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県 山梨県)
    
    Geography::JapanesePrefectures->prefectures_id('東京');
    # => 13

=head1 DESCRIPTION

This module allows you to get information on Japanese Prefectures names. and region.

=head1 Class Methods

=head2 prefectures

    my @prefectures = Geography::JapanesePrefectures->prefectures;

get the prefectures names.

=head2 regions

    my @regions = Geography::JapanesePrefectures->regions;

get the region names.

=head2 prefectures_in

    my @prefectures = Geography::JapanesePrefectures->prefectures_in('関東');
    # => qw(茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県 山梨県)

get prefectures in region.

=head2 prefectures_id

    Geography::JapanesePrefectures->prefectures_id('和歌山県');
    # => 30

get prefecture's ID.

=head1 THANKS TO

    Tatsuhiko Miyagawa
    Yappo(Acme::Oppai)
    nipotan
    Shot(for greeting)

=head1 TODO

    support ISO:3166-2:JP

=head1 SEE ALSO

L<http://ja.wikipedia.org/wiki/JIS_X_0401#.E9.83.BD.E9.81.93.E5.BA.9C.E7.9C.8C.E3.82.B3.E3.83.BC.E3.83.89>

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-geography-japaneseprefectures@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 AUTHOR

Tokuhiro Matsuno  C<< <tokuhiro __at__ mobilefactory.jp> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2006, Tokuhiro Matsuno C<< <tokuhiro __at__ mobilefactory.jp> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
