# Como verificar se uma **pasta compartilhada** do **HOST** no **VirtualBox** foi configurada corretamente

Se uma **pasta compartilhada** do **HOST** no **VirtualBox** que foi configurada em um ponto de montagem, como por exemplo `/home/user_server/www`, mas não está vendo o conteúdo da pasta compartilhada dentro desse diretório na VM, pode haver algumas causas possíveis:

Aqui está um mini tutorial para ajudar a solucionar o problema:

## 1. Verifique se o módulo de serviços de convidado está instalado

O módulo de serviços de convidado do VirtualBox deve estar instalado na VM para permitir o compartilhamento de pastas entre o host e o convidado. Verifique se o pacote `virtualbox-guest-utils` está instalado executando o seguinte comando:

```
dpkg -l virtualbox-guest-utils
```

Se não estiver instalado, você pode instalá-lo usando o comando:

```
sudo apt-get install virtualbox-guest-utils
```

Após a instalação, reinicie a máquina virtual para carregar os serviços de convidado.

## 2. Verifique se o usuário tem permissões adequadas

Verifique se o usuário `user_server` tem permissões adequadas para acessar a pasta compartilhada. Você pode executar o seguinte comando para verificar as permissões:

```
ls -l /home/user_server
```

Certifique-se de que o usuário `user_server` possui permissões de leitura e gravação no diretório `/home/user_server/www`.

## 3. Verifique se o ponto de montagem foi criado corretamente

Verifique se o ponto de montagem `/home/user_server/www` foi criado corretamente. Execute o seguinte comando para verificar se o ponto de montagem está listado corretamente:

```
df -h
```

Certifique-se de que a pasta compartilhada do host está sendo montada em `/home/user_server/www`.

## 4. Verifique as configurações de montagem automática no VirtualBox

Verifique as configurações de montagem automática no VirtualBox para garantir que a pasta compartilhada esteja configurada corretamente. Certifique-se de que as opções "Montar automaticamente" e "Tornar Permanente" estejam selecionadas para a pasta compartilhada.

Se você já verificou todas essas configurações e ainda não vê o conteúdo da pasta compartilhada em `/home/user_server/www`, pode ser necessário revisar as configurações do VirtualBox ou considerar outras soluções alternativas de compartilhamento de arquivos, como o Samba ou o NFS.

Espero que essas orientações ajudem a solucionar o problema da pasta compartilhada do VirtualBox. Se você tiver mais alguma dúvida, sinta-se à vontade para perguntar!

## 5. Se tudo estiver OK, mas não estiver montando sozinho use o comando

```
sudo mount -t vboxsf <Nome-da-Pasta-Compartilhada> /home/<nome_do_usuario>/<caminho>/<Nome-da-Pasta-Compartilhada>
```
Ex.: 
```
sudo mount -t vboxsf shared /home/user_server/www/shared
```

---

Tags: virtualbox, servidor, pasta compartilhada