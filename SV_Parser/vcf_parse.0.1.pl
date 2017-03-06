#!/urs/bin/perl

use VCF_1_0;
use strict;
use warnings;

use feature qw/ say /;
use Data::Dumper;

use Getopt::Long qw/ GetOptions /;

my $vcf_file; 
my $help;
my $id;
my $dump;

# Should add score threshold option
GetOptions( 'vcf=s'	        	=>		\$vcf_file,
			'id=s'				=>		\$id,
			# 'dump'				=>		\$dump,
			'help'              =>      \$help
	  ) or die usage();

if ($help) { exit usage() } 

if (not $vcf_file) {
	 exit usage();
} 

# Retun SV and info hashes 
my ($SVs, $info) = VCF_1_0::typer($vcf_file);

VCF_1_0::summarise_variants($SVs) unless $id;

# print Dumper $SVs if $dump;

# Print all infor for specified id
VCF_1_0::get_variant($id, $SVs, $info) if $id;


sub usage {
	say "********** VCF_parser ***********";
    say "Usage: $0 [options]";
	say "  --vcf = VCF file for parsing";
	say "  --id = extract information for a given variant";
	say "  --dump = dump contents of VCF file";
	say "  --help\n";
	say "Nick Riddiford 2017";
}