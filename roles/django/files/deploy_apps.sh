MAIN_APP=$1
APP=$2
GIT_URL=$3
#git clone $GIT_URL -b $APP
cd $MAIN_APP
echo "PWD: $PWD, $(ls -lsa),  git clone $GIT_URL -b $APP" >> log_django 
#python manage.py makemigrations {{ apps }}
