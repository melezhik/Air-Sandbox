zef "Air", %( :notest );
bash "zef update";
bash "zef install https://github.com/melezhik/Sparrow6 --force-install --/test";
bash "zef info Sparrow6";
