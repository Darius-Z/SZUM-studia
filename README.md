# Sprawozdanie ROS turtlesim Matlab

Zawarty skrypt utworzony w środowisku **Matlab** pozwala na sterowanie obiektem w programie **turtlesim**
dzięki komunikacji poprzez serwer **ROS**.

Oczywiście musimy mieć zainstalowane całe wspomniane oprogramowanie.

Aby uruchomić serwer *ROS* należy w oknie komend wpisać: 

```sh
roscore
```

Aby uruchomić program *turtlesim* należy w oknie komend wpisać: 

```sh
rosrun turtlesim turtlesim_node
```

Aby uzyskać dostęp do *ROS* z poziomu środowiska *Matlab* 
uruchamiamy je i w nim w polu funkcyjnym wpisujemy:

```sh
rosinit
```

Jeśli wszystko przebiegło pomyślnie, możemy teraz przystąpić do właściwego sterowania przy użyciu skryptu z pliku *.m*.
W tym celu używamy jednej z czterech funkcji oznaczonych na początku *%%*. Jeśli używamy którejś, pozostałe należy "zakomentować",
zaznaczając je i używając np. skrótu klawiszowego `CTRL + R`. Aby "odkomentować", używamy skrótu klawiszowego `CTRL + T`.
Przeznaczenie każdej z funkcji jest odpowiednio opisane w skrypcie.

**Powodzenia!**