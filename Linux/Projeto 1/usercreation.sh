#$!/bin/bash
# Create users and set the specific permissions of them

echo "'##::::'##::'######::'########:'########:::'######::'########:'########:'##::::'##:'########::
 ##:::: ##:'##... ##: ##.....:: ##.... ##:'##... ##: ##.....::... ##..:: ##:::: ##: ##.... ##:
 ##:::: ##: ##:::..:: ##::::::: ##:::: ##: ##:::..:: ##:::::::::: ##:::: ##:::: ##: ##:::: ##:
 ##:::: ##:. ######:: ######::: ########::. ######:: ######:::::: ##:::: ##:::: ##: ########::
 ##:::: ##::..... ##: ##...:::: ##.. ##::::..... ##: ##...::::::: ##:::: ##:::: ##: ##.....:::
 ##:::: ##:'##::: ##: ##::::::: ##::. ##::'##::: ##: ##:::::::::: ##:::: ##:::: ##: ##::::::::
. #######::. ######:: ########: ##:::. ##:. ######:: ########:::: ##::::. #######:: ##::::::::
:.......::::......:::........::..:::::..:::......:::........:::::..::::::.......:::..:::::::::"

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /specific

echo "Successfully"
echo "Creating user groups..."

groupd add GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Successfully"
echo "Creating users..."

useradd fariasys -m -s /bin/bash -p $(openssl passwd -crypt fsys123) -G GRP_ADM
useradd malucfi -m -s /bin/bash -p $(openssl passwd -crypt m4214) -G GRP_VEN
useradd joao-portela -m -s /bin/bash -p $(openssl passwd -crypt bahia) -G GRP_SEC

echo "Successfully, setting up the permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Everything done!"

