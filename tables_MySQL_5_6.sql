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
insert into users (id, email, first_name, last_name) VALUES
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



/* Cart Item Table
 *  This table will list out all the items in the cart
 */
create table if not exists cart_item (
  id int(6) unsigned not null
  ,cart_id int(6) unsigned not null
  ,product varchar(50) not null
  ,revenue double not null
  ,primary key (id)
) default charset=utf8
;
