###user_roles
- id
- name

###users - *таблица пользователей*
- id - *внутренний идентификатор*
- login : string - *имя для входа в аккаунт*
- pass : string - *пароль для входа в аккаунт*
- user_roles : array of references - *все роли пользователя*
- surname : string - *фамилия пользователя*
- name : string - *имя пользователя*
- middle_name : string - *отчётство пользователя*
- phone : string - *контактный телефон*
- call_time : ? - *удобное время для связи по телефону*
- email : string - *адрес электронной почты*
- address : string - *адрес пользователя по умолчанию*
- comment : string - *комментарий к заказам по умолчанию*
- discount : integer - *личная скидка пользователя*


###units - *таблица единиц измерения для товаров*
- id - *внутренний идентификатор*
- name : string - *наименование единицы измерения*
- **_имеет ли смысл добавить поле value?_**

###goods - *таблица товаров*
- id - *внутренний идентификатор*
- name : string - *наименование товара*
- code : integer - *код/артикул товара*
- description : text - *описание товара*
- params : hash ? - *перечень параметров со значениями*
- unit : references - *единица измерения*
- count : float - *количество товара*
- price : float - *цена товара*

###goods_in_cart_order
- id - *внутренний идентификатор*
- carts_orders : references - *ссылка на корзину или заказ **(возможны ли составные типы?)***
- goods : references - *товар в корзине или заказе*
- count : float - *количество товара*
- price : float - *цена товара*
- sum : float - *сумма*

###cart - *корзина*
- id - *внутренний идентификатор*
- goods : references goods_in_cart_order - *таблица товаров*
- user : references - *владелец корзины*
- count : integer - *количество позиций в корзине*

###status
- id - *внутренний идентификатор*
- name - *наименование статуса*
- value - *значение статуса*

###orders - *таблица заказов*
- id - *внутренний идентификатор*
- goods : references goods_in_cart_order - *таблица заказов*
- user : references - *заказчик*
- count : integer - *количество позиций в заказе*
- sum : float - *сумма заказа*
- discount : float - *скидка по заказу (**суммой или процентом**?)*
- status : references - *статус заказа*

###discounts - *таблица скидок*
- id - *внутренний идентификатор*
- name - *наименование*
- sum_from : float - *нижняя сумма для скидки*
- sum_to : float - *верхняя сумма для скидки*
- value : float - *размер скидки*