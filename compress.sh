#! /bin/bash

# update files on github
git status;
git add *
git commit;
git push;

# create work directory
echo "copying files to a tmp directory ...";
cp ../minetest-texturepack-nature-test-halloween/ /tmp/minetest-texturepack-nature-test-halloween -rf &&
echo "finished [ok]";

# optimizing images
echo "compressing with optipng, output as zip";
cd /tmp;
optipng minetest-texturepack-nature-test-halloween/* &&
zip -r ~/minetest/nature-test-halloween.zip  minetest-texturepack-nature-test-halloween/*;
sync;
rm rf /tmp/minetest-texturepack-nature-test-halloween
echo "now your pack is compressed! What about uploading it to the minetest forums?"
