MAIN_APP=$1
APP=$2
GIT_URL=$3
LOG_FILE=$4

cd ${MAIN_APP}

if [ ! -d ${APP} ]
       then
         echo "$(date) Catalog ${APP} not exists AND WHOAMI IS $(whoami)" >> ${LOG_FILE}
         git clone ${GIT_URL} -b ${APP} ${APP}  && echo "$(date) catalog ${APP} cloned" >> ${LOG_FILE}
       else
         echo "$(date) Catalog ${APP} exists" >> ${LOG_FILE}
         cd ${APP} && git pull
         echo "DATE Command git pull performed" >> ${LOG_FILE}
fi

#python manage.py makemigrations {{ apps }}
#cd $1 && python manage.py migrate
