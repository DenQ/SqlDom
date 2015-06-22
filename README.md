# SqlDom

Концепция

Пример первый:

```
insert div.myClass into :element
where count(root>div) < 10
```
Найти div.myClass и вставить в него :element
если прямых потомков у div.myClass меньше 10

```
insert div.myClass into :element * 5
where count(root>div) < 10
```
Тоже что и выше, только вставить сразу 5 элементов

```
select 
    root:foo(), 
    root>div.childClass:bar() 
from div.myClass
where count(root>div) < 10
```
Найти div.myClass, и при условии, что прямых потомков будет менее 10,
произвести над каждым найденным div.myClass действия описанные в foo(),
а над каждым div.myClass>div.childClass - bar()

```
select :action(*) from div.one as one
    left join div.two as two on :r(one, two)
where one.length is two.length
order by [one, two: desc]
limit 10
offset 5
```
Найти все div.one дать им на каждой итерации обхода, алиас - one,
попутно найти все div.two дав алиас two,
сопоставить каждой one, two, в зависимоти от результата функции :r(one, two).
Выполнить :action на каждой итерации, если длины one и two совпадают.
Итератор должен двигаться для one вниз, а для two вверх.
Начать обход с 5 позиции, и пройти до 15ой

Зарезервированные слова:
root - алиас основной таблицы, если он не был указан явно