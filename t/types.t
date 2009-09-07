use strict;
use warnings;
use Test::More;

use FindBin qw/$Bin/;

use lib "$Bin/lib";
use TryCatch;

try {
  require NoType;
  pass("Types dont need to be pre-declared");
}
catch ($e) {
  fail("Types dont need to be pre-declared");
  diag($e);
}

done_testing;

