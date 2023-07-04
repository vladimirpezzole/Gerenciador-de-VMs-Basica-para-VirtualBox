#!/bin/bash

# Função Inicializa ou Encerra a VM
vmStartStop() {
  if [[ $option == 1 ]]; then
    echo
    echo "Inicializando a VM $nomeVM ..."
    VBoxManage startvm "$nomeVM" 2>/dev/null
    if [[ $? -eq 0 ]]; then
      echo
      echo "VM $nomeVM iniciada!!!"
      echo
      echo "Para acessar a VM via SSH digite:"
      echo
      echo "ssh <nome_do_usuario>@<ip do usuario>"
      echo
      echo ">> ex.: ssh user_server@192.168.0.10"
      echo
    else
      echo
      echo "Nome da VM inexistente ou já iniciada!!!"
      echo
    fi
  elif [[ $option == 2 ]]; then
    echo
    echo "Inicializando a VM $nomeVM ..."
    VBoxManage startvm "$nomeVM" --type headless 2>/dev/null
    if [[ $? -eq 0 ]]; then
      echo
      echo "VM $nomeVM iniciada!!!"
      echo
      echo "Para acessar a VM via SSH digite:"
      echo
      echo "   ssh <nome_do_usuario>@<ip do usuario>"
      echo
      echo ">> (ex.: ssh user_server@192.168.0.10")
      echo
    else
      echo
      echo "Nome da VM inexistente ou já iniciada!!!"
      echo
    fi
  elif [[ $option == 3 ]]; then
    echo
    echo "Encerrando a VM $nomeVM ..."
    VBoxManage controlvm "$nomeVM" poweroff 2>/dev/null
    if [[ $? -eq 0 ]]; then
      echo
      echo "VM $nomeVM encerrada!!!"
      echo
    else
      echo
      echo "Nome da VM inexistente ou já encerrada!!!"
      echo
    fi
  fi
}

# Função lista as VM instaladas
vmList() {
  # Lista as VMs instaladas e armazena na variável $vms
  vms=$(VBoxManage list vms | awk -F '"' '{print $2}')

  # Ordena a lista de VMs
  vms_sorted=$(echo "$vms" | sort)

  echo
  echo ">>> Escolha uma das VMs instaladas: <<<"
  echo "-----------------------"
  # Itera sobre a lista ordenada e exibe os números e nomes das VMs
  i=1
  while IFS= read -r vm; do
    echo "$i. $vm"
    ((i++))
  done <<< "$vms_sorted"
  echo
  echo "*******************"
  echo "Total de VMs $((i-1))"
}

# Exibe a opção que Inicializa com ou sem modo gráfico, Encerra ou fecha o Script
while true; do
  echo "Deseja ABRIR ou ENCERRAR uma conexão VM?"
  echo "-> Escolha a opção: "
  echo "  1 para ABRIR COM modo GRÁFICO"
  echo "  2 para ABRIR SEM modo GRÁFICO"
  echo "  3 para ENCERRAR"
  echo "  4 para SAIR"
  echo
  read -p ">> Digite o número da opção desejada: " option
  if [[ $option == 1 || $option == 2 || $option == 3 || $option == 4 ]]; then
    if [[ $option == 4 ]]; then
      break
    else
      vmList
      echo
      while true; do
        read -p ">> Digite o Número da VM escolhida: " vm_number
        if [[ $vm_number -ge 1 && $vm_number -le $((i-1)) ]]; then
          nomeVM=$(echo "$vms_sorted" | sed -n "${vm_number}p")
          vmStartStop
          echo Fim!!!!
          echo
          exit 0  # Encerra o script
        else
          echo
          echo "Número de VM inválido. Tente novamente."
          echo
        fi
      done

    fi
  else
    echo
    echo "Opção inválida!!!"
    echo
  fi
done
