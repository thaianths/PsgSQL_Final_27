PGDMP     &    0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            g           1259    245872    spx_address    TABLE     �  CREATE TABLE public.spx_address (
    id bigint NOT NULL,
    pname character varying DEFAULT ''::character varying,
    dname character varying DEFAULT ''::character varying,
    wname character varying DEFAULT ''::character varying,
    pid bigint DEFAULT '0'::bigint NOT NULL,
    did bigint DEFAULT '0'::bigint NOT NULL,
    wid bigint DEFAULT '0'::bigint NOT NULL,
    lat real DEFAULT '-91'::integer NOT NULL,
    lon real DEFAULT '-181'::integer NOT NULL
);
    DROP TABLE public.spx_address;
       public         heap    postgres    false            h           1259    245885    spx_address_id_seq    SEQUENCE     {   CREATE SEQUENCE public.spx_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.spx_address_id_seq;
       public          postgres    false    359            �           0    0    spx_address_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.spx_address_id_seq OWNED BY public.spx_address.id;
          public          postgres    false    360            R           2604    246416    spx_address id    DEFAULT     p   ALTER TABLE ONLY public.spx_address ALTER COLUMN id SET DEFAULT nextval('public.spx_address_id_seq'::regclass);
 =   ALTER TABLE public.spx_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    360    359            \           2606    246916    spx_address id 
   CONSTRAINT     L   ALTER TABLE ONLY public.spx_address
    ADD CONSTRAINT id PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.spx_address DROP CONSTRAINT id;
       public            postgres    false    359            ^           2606    246928 '   spx_address spx_address_pid_did_wid_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.spx_address
    ADD CONSTRAINT spx_address_pid_did_wid_key UNIQUE (pid, did, wid);
 Q   ALTER TABLE ONLY public.spx_address DROP CONSTRAINT spx_address_pid_did_wid_key;
       public            postgres    false    359    359    359           