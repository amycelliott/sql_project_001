/* Use This file to run in SQL Fiddle to set up the Schema */
/* Table: user
 * This table has basic user information
 * Insert some basic records
 */
create table if not exists users (
  id int(6) unsigned not null
  ,email varchar(200) not null
  ,first_name varchar(50) not null
  ,last_name varchar(50) not null
  ,primary key (id)
) default charset=utf8
;
insert into users (id, email, first_name, last_name) 
values
  (1, 'email01@gmail.com', 'Esmay', 'Edmonds'),
  (2, 'email02@gmail.com', 'Jayden-James', 'Galvan'),
  (3, 'email03@gmail.com', 'Arfa', 'Andrews'),
  (4, 'email04@gmail.com', 'Yunus', 'Dennis'),
  (5, 'email05@gmail.com', 'Garrett', 'Southern'),
  (6, 'email06@gmail.com', 'Harpreet', 'Deacon'),
  (7, 'email07@gmail.com', 'Kacey', 'Cummings'),
  (8, 'email08@gmail.com', 'Tamia', 'Stott'),
  (9, 'email09@gmail.com', 'Izabela', 'Waters'),
  (10, 'email10@gmail.com', 'Jiya', 'Drew')
;

/* Cart Table
 *  The basic purpose is to hosue any cart, processed or not
 * Cart Status = created, processed, error
 */
create table if not exists cart (
  id int(6) unsigned not null
  ,user_id int(6) unsigned not null
  ,cart_status varchar(10) not null
  ,cart_created_time timestamp not null
  ,cart_processed_time timestamp
  ,utm_source varchar(25)
  ,utm_medium varchar(25)
  ,utm_campaign varchar(25)
  ,primary key (id)
) default charset=utf8
;
insert into cart (id, user_id, cart_status, cart_created_time, cart_processed_time, utm_source, utm_medium, utm_campaign) 
values 
  (1, 1, 'processed', '2020-02-07 16:48:10', '2020-02-07 16:52:19', 'website', 'organic', '2 for 1 deal')
  ,(2, 2, 'created', '2020-02-22 12:19:22', null, 'email', 'promoted', 'giveaway')
  ,(3, 3, 'processed', '2020-02-09 10:59:00', '2020-02-09 11:02:17', 'website', 'organic', '2 for 1 deal')
  ,(4, 4, 'processed', '2020-03-02 04:58:31', '2020-03-02 04:59:59', 'website', 'organic', '2 for 1 deal')
;


/* Cart Item Table
 *  This table will list out all the items in the cart
 */
create table if not exists cart_item (
  id int(6) unsigned not null
  ,cart_id int(6) unsigned not null
  ,product varchar(50) not null
  ,price double not null
  ,discount_applied double not null
  ,primary key (id)
) default charset=utf8
;
insert into cart_item (id, cart_id, product, price, discount_applied)
values
  (1,1,'hat',10.99,0)
  ,(2,1,'shirt',9.99,9.99)
;
