GIT_URL=$1
APP=$2
#git clone $GIT_URL -b $APP
echo " git clone $GIT_URL -b $APP" >> log_django
#python manage.py makemigrations {{ apps }}
