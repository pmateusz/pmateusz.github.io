#!\bin\sh

cd ~
if [ ! "dev" ]; then
    mkdir dev
fi

pushd dev

for $repo in git@github.com:pmateusz/pmateusz.github.io.git \
    git@github.com:space-art/smart-uq.git \
    git@github.com:space-art/smart-math.git \
    git@github.com:space-art/smart-astro.git \
    git@github.com:space-art/smart-o2cpp.git
do
    git clone $repo
done

popd