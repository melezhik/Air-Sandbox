zef "Air", %( :notest );
bash "zef update";
bash "zef install https://github.com/melezhik/Sparrow6.git --force-install --/test";
bash "zef info Sparrow6";
