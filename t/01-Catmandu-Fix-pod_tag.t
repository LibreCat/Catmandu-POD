#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use Test::Exception;
use File::Basename;
use File::Spec;

my $root_dir = File::Spec->rel2abs(dirname(dirname(__FILE__)));

require_ok "Catmandu::Fix::pod_tag";

ok
    Catmandu::Fix::pod_tag->new('module','NAME')->fix({ module => "Catmandu::Fix::pod_tag" })->{module} =~ /Catmandu::Fix::pod_tag/,
    "extract tag 'NAME' from Catmandu::Fix::pod_tag";

ok
    Catmandu::Fix::pod_tag->new('file','NAME')->fix({ file => File::Spec->catfile($root_dir,"lib/Catmandu/Fix/pod_tag.pm") })->{file} =~ /Catmandu::Fix::pod_tag/,
    "extract tag 'NAME' from file $root_dir/Catmandu/Fix/pod_tag.pm";

done_testing 3;
