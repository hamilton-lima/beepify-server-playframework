# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table price (
  id                            bigint auto_increment not null,
  value                         double,
  currency                      varchar(255),
  store_id                      bigint,
  product_id                    bigint,
  constraint pk_price primary key (id)
);

create table product (
  id                            bigint auto_increment not null,
  name                          varchar(255),
  barcode                       varchar(255),
  description                   varchar(255),
  constraint pk_product primary key (id)
);

create table store (
  id                            bigint auto_increment not null,
  name                          varchar(255),
  latitude                      double,
  longitude                     double,
  constraint pk_store primary key (id)
);

alter table price add constraint fk_price_store_id foreign key (store_id) references store (id) on delete restrict on update restrict;
create index ix_price_store_id on price (store_id);

alter table price add constraint fk_price_product_id foreign key (product_id) references product (id) on delete restrict on update restrict;
create index ix_price_product_id on price (product_id);


# --- !Downs

alter table price drop foreign key fk_price_store_id;
drop index ix_price_store_id on price;

alter table price drop foreign key fk_price_product_id;
drop index ix_price_product_id on price;

drop table if exists price;

drop table if exists product;

drop table if exists store;

