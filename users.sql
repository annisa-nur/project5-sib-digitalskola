DROP TABLE IF EXISTS public.users;

create sequence user_id_seq
	start with 1
	increment by 1
	no minvalue 
	no maxvalue 
	cache 1;

CREATE TABLE IF NOT EXISTS public.users
(
    user_id integer NOT NULL DEFAULT nextval('user_id_seq'::regclass),
    name character varying(100) COLLATE pg_catalog."default",
    city character varying(50) COLLATE pg_catalog."default",
    telp character varying(14) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
)

