#!/bin/perl
use Term::ANSIColor;
use MIME::Lite;
$file='C:\Users\gxv12\Desktop\perl_exercise\footer.txt';

open(DATA,"$file") or die "Could not open the file $.!";
while(<DATA>)
{
$_=~ s/\n\s*/\n/g;;
#print "$_\n";

}

my $str = '
Subject: Lennox: 357
Changed Fields:
Description and steps to reproduce, Modified On
Issue             : 357
Transaction       : 2039488
Status            : Open
Synopsis          : Testing Root Cause field operation
Type              : defect
Severity          : Medium
Priority          : No
Submitted By      : Srivallabh_Sampathkumar
Date Submitted    : 2016/04/12 07:33:06
Assigned To       : Gopi_Vadlapati
Description and steps to reproduce:
This is a test to see the alerts coming out.
Is this a new line?
OK.
Are you able to see this at 5:25 PM?
How about this at 5:30 PM?
Category          : Test
Code Review       : Planning
Modified By       : Srivallabh_Sampathkumar
Modified On       : 2016/05/11 07:01:00
Detail of changes:
Old Description and steps to reproduce:
This is a test to see the alerts coming out.
Is this a new line?
OK.
Are you able to see this at 5:25 PM?
New Description and steps to reproduce:
This is a test to see the alerts coming out.
Is this a new line?
OK.
Are you able to see this at 5:25 PM?
How about this at 5:30 PM?
Old Modified On       : 2016/05/11 06:55:30
New Modified On       : 2016/05/11 07:01:00
';

 
$bold_text = "test"; 
$bold_text =~ ~ s/(\d+)/_*\1*_/g;; 
print "This is a $bold_text.\n"; 
#$str =~ s/(^|\n)[\n\s]*/$1/g;
foreach (split(/\n/,$data)) {
  $_ =~ /: ([a-z0-9-]+)\s+\(([^)]+)\)\s*(\*)?/ || next;
  my ($id,$word,$star) = ($1,$2,$3);
  print "$id $word $star\n";
}

my $t = "ACGCGATAGCATTAGACCTGGCACAGT";


print "Error executing command: \n";
	MIME::Lite->send('smtp','mailrelay.lennoxintl.com',Debug=>0);
 
  $to = 'Gopi.Vadlapati@Lennoxintl.com';
$from = 'Gopi.Vadlapati@Lennoxintl.com';

$subject = 'Accurev Login';
$message = "$username is failed to login";

$msg = MIME::Lite->new(
                 From     => $from,
                 To       => $to,
                 Cc       => $cc,
                 Subject  => $subject,
                 Data     => $bold_text 
                 );
                 
$msg->send;
print "Email Sent Successfully\n";




