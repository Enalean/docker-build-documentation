How to run
==========

This is meant to be used in continuous integration

    $> build_cid="$(docker run ---detach -e VERSION=$VERSION -v "$(pwd)":/sources:ro builddoc)"
    $> docker logs -f "$build_cid"
    $> docker cp "$build_cid":/output/. $my_packages_directory
    $> docker rm -fv "$build_cid"
