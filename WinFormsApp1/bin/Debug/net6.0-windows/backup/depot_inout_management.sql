PGDMP     3    4                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244250    depot_inout_management    TABLE     �  CREATE TABLE public.depot_inout_management (
    movement_id bigint NOT NULL,
    depot_id bigint DEFAULT '0'::bigint NOT NULL,
    request_provider_id bigint NOT NULL,
    collection_item_id bigint NOT NULL,
    basegood_id bigint NOT NULL,
    amount real DEFAULT '0'::real NOT NULL,
    movement_datetime bigint DEFAULT '0'::bigint NOT NULL,
    kindofmovement integer DEFAULT 0 NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 *   DROP TABLE public.depot_inout_management;
       public         heap    postgres    false            �          0    244250    depot_inout_management 
   TABLE DATA           �   COPY public.depot_inout_management (movement_id, depot_id, request_provider_id, collection_item_id, basegood_id, amount, movement_datetime, kindofmovement, status, member_created, member_updated, created_at, modified_at) FROM stdin;
    public          postgres    false    260   -       �      x������ � �     