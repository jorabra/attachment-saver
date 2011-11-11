#!/usr/bin/perl
use strict;
use warnings;
use Mail::Audit qw(Attach);

my $mail = Mail::Audit->new;

my $attachments = $mail->attachments;

umask 0133;
foreach my $file (@{$attachments}) {
	$file->save("/path/where/attachment/is/saved/");
}

exit 0;
