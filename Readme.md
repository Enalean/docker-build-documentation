How to run
==========

This is meant to be used in continuous integration

    $> docker run --rm -e VERSION=$VERSION -e UID=$(id -u) -e GID=$(id -g) -v $PWD:/sources builddoc
