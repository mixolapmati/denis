MAIN_APP=$1
APP=$2
GIT_URL=$3
LOG_FILE=$4

cd ${MAIN_APP}

if [ ! -d ${APP} ]
       then
         echo "$(date) Catalog ${APP} not exists" >> ${LOG_FILE}
	 ansible-playbook site.yml --tags git_clone --extra-vars app=${APP} git_url=${GIT_URL} && echo "$(date) catalog ${APP} was cloned" >> ${LOG_FILE}
       else
         echo "$(date) Catalog ${APP} exists" >> ${LOG_FILE}
         cd ${APP} && git pull
         echo "DATE Command git pull was performed" >> ${LOG_FILE}
fi
#python manage.py makemigrations {{ apps }}
#cd $1 && python manage.py migrate

