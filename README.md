# Тестовое задание Neolab


## Задача на Junior


задача решена не оптимально. для разового применения. по хорошему нужно переписывать - как минимум сократить два последних цикла awk и sed в одну команду sed с применением regexp.

применение:

cd junior

chmod +x solution.sh

sh ./solution.sh

## Задача на Middle

в решении не хватает некоторых моментов. первое: из задания не совсем понятно кто должен писать в журнал события падения службы app.service сам systemd, или это должен делать app.jar вызовом соответствующих системных функций.

применение:

Переходим в папку middle

cd middle

chmod +x solution.sh

sh ./solution.sh

'''
Указываем абсолютный путь до приложения

sed "s|\/home\/sysop|${HOME}|" app.service

Копируем app.service в папку /etc/systemd/system

sudo cp app.service /etc/systemd/system

Запускаем приложение

sudo systemctl start app.service
'''

Приложение запускается от рута, но не может найти путь для операции. Что я делаю не так? Хочу исходники. :-)