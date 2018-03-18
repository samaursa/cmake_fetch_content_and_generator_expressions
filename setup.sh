./clean.sh

cd LibA
git init
git add .
git commit -m "LibA first commit"

# not necessary, but just to test and make sure LibA works independently
mkdir build
cd build
cmake ../

cd ..
cd ..

mkdir build
cd build
cmake ../
cd ..
