#!/bin/bash

echo "Criando usuarios do sistema.."

echo "..."
echo "Criando Adms..."

useradd carlos -c "Carlos Adm" -m -s /bin/bash -G GRP_ADM
passwd carlos Senha123
passwd carlos -e

useradd maria -c "Maria Adm" -m -s /bin/bash -G GRP_ADM
passwd maria Senha123
passwd maria -e

useradd joao -c "Joao Adm" -m -s /bin/bash -G GRP_ADM
passwd joao Senha123
passwd joao -e

echo "Adms criados."

echo "Criando Vendedores..."

useradd debora -c "Debora Vendas" -m -s /bin/bash -G GRP_VEN
passwd debora Senha123
passwd debora -e

useradd sebastiana -c "Sebastiana Vendas" -m -s /bin/bash -G GRP_VEN
passwd sebastiana Senha123
passwd sebastiana -e

useradd roberto -c "Roberto Vendas" -m -s /bin/bash -G GRP_VEN
passwd roberto Senha123
passwd roberto -e

echo "Vendedores criados."

echo "Criando Sec..."
useradd josefina -c "Josefina Sec" -m -s /bin/bash -G GRP_SEC
passwd josefina Senha123
passwd josefina -e

useradd amanda -c "Amanda Sec" -m -s /bin/bash -G GRP_SEC
passwd amanda Senha123
passwd amanda -e

useradd rogerio -c "Rogerio Sec" -m -s /bin/bash -G GRP_SEC
passwd rogerio Senha123
passwd rogerio -e

echo "Sec criados."

echo "Todos os usuarios criados foram criados!"

