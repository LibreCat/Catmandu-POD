#requirements
requires 'perl','5.10.1';
requires 'Catmandu::Sane','0';
requires 'Moo','0';
requires 'Catmandu::Fix::Has','0';
requires 'Pod::Tree','0';
requires 'File::Spec','0';

on 'test', sub {
    requires 'Test::Exception','0';
    requires 'Test::More','0';
    requires 'File::Basename','0';
    requires 'File::Spec','0';
};
