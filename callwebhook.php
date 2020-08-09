<?php 

//Este arquivo chama o script do webhook que se encarrega de atualizar o ambiete, este aqui é apenas um gatilho.

shell_exec("sudo -u www-data bash /home/ubuntu/webhook.sh");

?>
