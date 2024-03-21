# Приложение для расчёта геометрической задачи для варианта №12

Приложение должно позволять вычислять координаты центра и радиус окружности, вписанный в треугольник, одна вершина
которого расположена в точке $(x_1, y_1)$, а две другие вершины являются точками касания касательных прямых, проведённых
через точку $(x_1, y_1)$ к окружности с центром в точке $(x_0, y_0)$ и радиусом $R$.

## Функциональные требования

### FR-1
**Регистрация пользователей**

Приложение должно поддерживать регистрацию пользователей. При регистрации пользователь должен указывать свои:
фамилию, имя, отчество, дату рождения, логин и пароль.

Фамилия, имя и отчество - строки, которые могут содержать только русские буквы и один дефис в середине (необязательно).
Первая буква в строке и первая буква после дефиса должна быть большой. Длина каждой из них не должна превышать 100
символов. Фамилия и имя - обязательные поля. Отчество может отсутствовать.

Дата рождения должна задаваться строкой в формате `dd.MM.yyyy` (`dd` - две цифры с номером дня месяца, `MM` - две цифры
с номером месяца, `yyyy` - четыре цифры с номером года). И на момент регистрации пользователю должно исполниться
полных 18 лет.

Логин должен быть строкой, содержащей лишь латинские большие или маленькие буквы, цифры, символы точки, подчёркивания,
дефиса. Длина строки должна быть от 4 до 20 символов. Логин должен быть уникален.

Пароль должен быть строкой, содержащей лишь латинские большие или маленькие буквы, русские большие или маленькие буквы,
цифры, знаки пунктуации (точка, запятая, восклицательный знак, вопросительный знак, двоеточие, точка с запятой),
знаки арифметических операций (`'+'`, `'-'`, `'*'`, `'/'`, `'='`, `'<'`, `'>'`) или специальные символы (`'#'`, `'$'`,
`'%'`, `'@'`, `'&'`, `'^'`, `'_'`, `'\'`, `'|'`, `'~'`). Длина пароля должна быть не менее 6 символов и не более 200
символов. Пароль не может быть пустым.

В случае неверного заполнения формы должно отображаться сообщение об ошибке в соответствии с требованием [FR-5](#FR-5).

В случае успешной регистрации пользователь должен попадать на свою стартовую страницу со списком задач (см. требование
[FR-3](#FR-3)).

### FR-2
**Аутентификация пользователей**

Если пользователь не авторизован, то приложение должно отображать ему форму аутентификации, на которой должны
присутствовать поля для ввода логина и пароля, кнопка "Войти" и ссылка "Зарегистрироваться".

Ссылка "Зарегистрироваться" должна вести на страницу с формой регистрации нового пользователя (см. требование
[FR-1](#FR-1)).

При успешной аутентификации после нажатия на кнопку "Войти" должна открываться стартовая страница пользователя со
списком своих задач (см. требование [FR-3](#FR-3)).

В случае ошибки аутентификации (если пользователя с указанными логином и паролем не существует), форма должна очищаться
и вверху формы должно отображаться сообщение об ошибке "Имя пользователя или пароль не опознаны".

### FR-3
**Список задач**

На странице со списком задач должен отображаться маркированный список задач, отсортированный по дате создания задачи.
В списке для каждой задачи указывается её название и дата создания в формате `d MMMM yyyy г.` (`d` - число без нуля
впереди с номером дня месяца, `MMMM` - название месяца, `yyyy` - четыре цифры с номером года).

Сверху списка должны отображаться кнопки для пагинации списка по 10 пунктов на странице.

Строка с названием задачи и датой её создания должна быть гиперссылкой на страницу редактирования задачи (см.
требование [FR-4](#FR-4)).

После списка задач должна отображаться кнопка "Добавить", которая должна открывать страницу добавления новой задачи (см.
требование [FR-4](#FR-4)).

На странице задач должны отображаться только задачи текущего пользователя. Если пользователь не авторизован, ему должно
отобразиться соответствующее сообщение об ошибке (см. требование [FR-6](#FR-6)). Если у текущего пользователя нет ни
одной сохранённой задачи, на странице вместо списка должно выводится сообщение "У Вас пока не добавлено ни одной
задачи".

### FR-4
**Добавление/редактирование задачи**

На странице добавления/редактирования задачи (в зависимости от того, как пользователь попал на эту страницу: через
переход по ссылке с названием и датой создания задачи или через нажатие на кнопку "Добавить") должна отображаться
соответствующая форма со следующими полями:

* Название задачи (строковое поле, которое может содержать любой текст, но его длина не должна превышать 200 символов;
  символы-разделители, такие, как пробелы и табуляции, в начале и конце строки при сохранении должны обрезаться; строка
  не может быть пустой).
* Дата создания задачи (отображается только на форме редактирования; при добавлении новой задачи автоматически должна
  сохраняться текущая дата; формат отображения даты такой же что и на странице со списком задач, см. требование
  [FR-3](#FR-3)). Дата создания задачи должно быть не редактируемым полем. Приложение не должно никаким образом изменять
  дату создания задачи.
* Описание (необязательное многострочное текстовое поле, которое может содержать любой текст, но его длина не должна
  превышать 1000 символов; символы-разделители, такие, как пробелы и табуляции, в начале и конце строки при сохранении
  должны обрезаться; строка может быть пустой).
* Четыре поля для ввода координат $x_1$, $y_1$, $x_0$, $y_0$ и поле для ввода радиуса $R$. Поля обязательны для
  заполнения и должны содержать вещественные числа. При этом точки радиус должен быть положительным, а точка
  $(x_1, y_1)$ должна лежать снаружи окружности.

На форме должны присутствовать следующие кнопки:
* "Сохранить" - основная кнопка, при нажатии на которую текущая задача сохраняется и отображается форма редактирования
  сохранённой задачи, при этом отображается также сообщение об успешном сохранении задачи. Если форма заполнена неверно,
  то должно отображаться сообщение об ошибке (см. требование [FR-5](#FR-5)).
* "Вернуться" - кнопка для перехода на страницу со списком задач (см. требование [FR-3](#FR-3)).
* "Удалить" - кнопка для удаления текущей задачи (отображается только на форме редактирования). При нажатии на кнопку
  должно отображаться сообщение с запросом подтверждения удаления и кнопками "Удалить" и "Отменить". При нажатии на кнопку
  "Удалить" в запросе подтверждения удаления должно происходить удаление текущей задачи и возврат на страницу со списком
  задач с отображением сообщения о том, что задача было успешно удалена. При нажатии на кнопку "Отменить" в запросе
  подтверждения удаления пользователь остаётся на странице редактирования текущей задачи.

Под формой редактирования должно отображаться решение задачи:
* координаты всех трёх вершин треугольника;
* координаты центра и радиус вписанной в треугольник окружности.

Страница добавления должна быть доступна только авторизованному пользователю. Страница редактирования должна быть
доступна только авторизованному пользователю, который создал эту задачу. В случае невозможности авторизовать
пользователя, ему должно отображаться соответствующее сообщение об ошибке (см. требование [FR-6](#FR-6)).

### FR-5
**Сообщения об ошибках при заполнении форм**

Если пользователь неверно заполняет одно или несколько полей формы, каждое неверно заполненное поле должно выделяться
красной рамкой. Справа от поля должно отображаться сообщение об ошибке. При нажатии на кнопку отправки формы на сервер,
если форма содержала ошибочно заполненные поля, значения всех полей формы не должны теряться.

### FR-6
**Сообщение об ошибке просмотра страницы неавторизованным пользователем**

При попытке открытия страницы пользователем, который не прошёл авторизацию, пользователь должен перенаправляться на
страницу аутентификации (см. требование [FR-2](#FR-2)). На этой странице вверху формы должно отображаться сообщение об
ошибке "Доступ к запрошенной странице запрещён".

## Нефункциональные требования

### NFR-1
**Логирование событий**

В файл журнала должны быть записаны следующие события:

| Событие                                                                           | Уровень логирования |
|-----------------------------------------------------------------------------------|:-------------------:|
| Ошибка подключения к базе данных                                                  |        FATAL        |
| Доступ пользователя к странице редактирования не своей задачи                     |        ERROR        |
| Доступ не аутентифицированного пользователя к страницам, требующим аутентификации |       WARNING       |
| Превышение числа зарегистрированных пользователей отметки 20 пользователей        |       WARNING       |
| Регистрация нового пользователя в системе                                         |        INFO         |
| Вход и выход пользователя                                                         |        INFO         |
| Добавление/редактирование/удаление задачи                                         |        INFO         |

### NFR-2
**Развёртывание приложения**

Приложение должно разворачиваться на веб-сервере Tomcat. Для хранения данных должна использоваться СУБД PostgreSQL.
Процесс развёртывания должен быть пошагово описан в отдельном текстовом документе "deployment.txt".