# **Gerenciador de VMs**

>> ### **Este Script é um código simples que tem como finalidade facilitar o manuseio de Máquinas Virtuais (VMs) através do terminal. Ele oferece a opção de INICIALIZAR as VMs COM ou SEM interface gráfica e ENCERRAR as VMs de forma conveniente.**

<hr><hr>

## **Pré-requisitos**

Antes de executar o **script**, verifique se você possui os seguintes pré-requisitos:

- **Oracle VM VirtualBox**: Certifique-se de ter o **Oracle VM VirtualBox** instalado em seu sistema.
- **Bash**: O **script** é projetado para ser executado no ambiente **Bash**.

## **Uso**

1. Faça o download do **script** `vmbox.sh` para o seu sistema.

2. Abra o terminal e navegue até o diretório onde o **script** foi salvo.

3. Execute o **script** usando o seguinte comando:

   ```
   ./vmbox.sh
   ```

4. O **script** exibirá um menu com as opções disponíveis:

   ```
   Deseja ABRIR ou ENCERRAR uma conexão VM?
   -> Escolha a opção:
     1 para ABRIR COM modo GRÁFICO
     2 para ABRIR SEM modo GRÁFICO
     3 para ENCERRAR
     4 para SAIR
   ```

5. Selecione a opção desejada digitando o número correspondente e pressionando `Enter`.

6. Dependendo da opção selecionada, o **script** exibirá a lista de VMs instaladas e solicitará que você escolha uma delas digitando o número correspondente.

7. Após selecionar uma VM, o **script** iniciará ou encerrará a VM de acordo com a opção escolhida.

8. Após a ação ser concluída, o **script** exibirá uma mensagem correspondente e retornará ao menu principal. Para encerrar o **script**, selecione a opção "4 para SAIR".

## **Observações**

- Certifique-se de ter as permissões necessárias para executar o **script**. Se necessário, conceda permissões de execução usando o comando `chmod +x vmbox.sh`.

- Verifique se o Oracle VM VirtualBox está configurado corretamente em seu sistema antes de executar o **script**.

- Certifique-se de que o **script** está localizado no mesmo diretório onde o comando `VBoxManage` está disponível. Caso contrário, você pode precisar ajustar o caminho do comando no **script**.

- Se você encontrar problemas ou erros ao executar o **script**, verifique as mensagens de erro exibidas pelo **script** e certifique-se de que tudo esteja configurado corretamente.

- Este **script** foi projetado como uma solução simples para facilitar o **manuseio básico de VMs** via terminal. Ele pode ser personalizado e aprimorado para atender às suas necessidades específicas.

## **Limitações**

- O **script** pressupõe que o **Oracle VM VirtualBox** esteja instalado e configurado corretamente no sistema.

- O **script** depende do comando `VBoxManage` para interagir com as VMs. Certifique-se de que o comando esteja disponível no sistema e acessível pelo **script**.

- O **script** não lida com casos complexos de configuração de rede ou outras configurações avançadas de VM. Ele se concentra principalmente na inicialização e encerramento básicos das VMs.

- O **script** pode não funcionar corretamente se houver problemas de compatibilidade ou versões incompatíveis entre o **script**, o **Oracle VM VirtualBox** e outros componentes relacionados.

- Use o **script** com cuidado e esteja ciente de que ele lida diretamente com as VMs e pode ter impactos nos sistemas e dados relacionados.

## **Contribuição**

Sinta-se à vontade para contribuir com melhorias, correções ou novos recursos para este **script**. Se você encontrar problemas ou tiver sugestões, abra uma nova "Issue" neste repositório.

## **Licença**

Este **script** é distribuído sob a licença MIT. Consulte o arquivo LICENSE para obter mais informações.

---