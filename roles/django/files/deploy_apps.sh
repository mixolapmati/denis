MAIN_APP=$1
APP=$2
GIT_URL=$3

cd $MAIN_APP

if [ ! -d $APP ]
       then
         git clone $GIT_URL -b $APP $APP  && echo "$(date) catalog $APP cloned" >> log_django
       else
         echo "$DATE Catalog $APP exists" >> log_django
fi

#python manage.py makemigrations {{ apps }}
