MAIN_APP=$1
APP=$2
GIT_URL=$3
LOG_FILE=$4
WORKDIR="/root/${MAIN_APP}"
cd ${MAIN_APP}

if [ ! -d ${APP} ]
       then
         echo "$(date) Catalog ${APP} not exists" >> ${LOG_FILE}
	 git clone ${GIT_URL} -b ${APP} ${APP} &>> ${LOG_FILE} && echo "$(date) catalog ${APP} was cloned" >> ${LOG_FILE}
       else
         echo "$(date) Catalog ${APP} exists" >> ${LOG_FILE}
         cd ${APP} && git pull &>> ${LOG_FILE}
         echo "DATE Command git pull was performed" >> ${LOG_FILE}
fi
#python manage.py makemigrations {{ apps }}
#cd WORKDIR && python manage.py migrate

