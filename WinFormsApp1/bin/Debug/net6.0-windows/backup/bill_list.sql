PGDMP         4                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243946 	   bill_list    TABLE     �   CREATE TABLE public.bill_list (
    request_id bigint NOT NULL,
    transport_id bigint,
    bill_date date,
    service_id smallint,
    service character varying,
    cost real
);
    DROP TABLE public.bill_list;
       public         heap    postgres    false            �          0    243946 	   bill_list 
   TABLE DATA           c   COPY public.bill_list (request_id, transport_id, bill_date, service_id, service, cost) FROM stdin;
    public          postgres    false    234   �       �      x������ � �     