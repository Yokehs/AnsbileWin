FOR /F "usebackq tokens=*" %%i IN (`cd`) DO set CurrentDir=%%i

docker container run --cpus="2" --rm --name ansible -ti ^
-v %CurrentDir%\ssh:/root/.ssh ^
-v %CurrentDir%\known_hosts:/root/known_hosts ^
-v %CurrentDir%\.ansible.cfg:/root/.ansible.cfg ^
-v %CurrentDir%\.gitconfig:/root/.gitconfig ^
-v %CurrentDir%\script:/root/scripts ^
-v %CurrentDir%\bash_history:/root/.bash_history ^
5711d4322772bd88c70041f34e84dd42efdd36f8180ba962c275fce69cb4fb0d ^
/bin/bash

pause