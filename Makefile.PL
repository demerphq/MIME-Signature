use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'MIME::Signature',
    AUTHOR        => q{Martin H. Sluka <fany@cpan.org>},
    VERSION_FROM  => 'lib/MIME/Signature.pm',
    ABSTRACT_FROM => 'lib/MIME/Signature.pm',
    EXE_FILES     => [
        qw{
          bin/add-disclaimer
          bin/append-signature
          bin/dump_mail_struct
          bin/ezmlm-append-trailer
          bin/ignore_errors
          }
    ],
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => '5.014',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    PREREQ_PM => {
        'HTML::Entities'           => 0,
        'HTML::Parser'             => 0,
        'MIME::Parser'             => 0,
        'Path::Tiny'               => 0,
        'Class::Method::Modifiers' => 2.15,
    },
    TEST_REQUIRES => {
        'Test::More' => 0,
    },
    dist => {
        COMPRESS => 'gzip -9f',
        SUFFIX   => 'gz',
        TARFLAGS => '--portability -cvf',
    },
    clean    => { FILES => 'MIME-Signature-*' },
    PERM_DIR => '755',

    META_MERGE => {
        resources => {
            homepage   => 'https://github.com/fany/MIME-Signature',
            repository => 'https://github.com/fany/MIME-Signature.git',
        },
    },
);
