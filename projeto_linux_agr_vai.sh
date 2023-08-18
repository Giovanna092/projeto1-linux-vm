
#!/bin/bash

echo "Criando diretóros..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
addgroup GRP_ADM --force-badname
addgroup GRP_VEN --force-badname
addgroup GRP_SEC --force-badname

echo "Criando usuarios..."

echo "..."
echo "Criando Adms..."

useradd carlos -c "Carlos Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao Adm" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

echo "Adms criados."

echo "Criando Vendedores..."

useradd debora -c "Debora Vendas" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Vendas" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Vendas" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

echo "Vendedores criados."

echo "Criando Sec..."
useradd josefina -c "Josefina Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Sec" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Sec criados."

echo "Todos os usuarios criados foram criados!"

echo "Especificando os donos de cada diretório"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root /publico

echo "Definindo as permissões de cada diretório"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento finalizado"

