PGDMP         5                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244551    depot_shelving_bin_manager    TABLE     |  CREATE TABLE public.depot_shelving_bin_manager (
    deposition_id bigint NOT NULL,
    shelving_bin_id bigint NOT NULL,
    basegood_id bigint NOT NULL,
    amount real DEFAULT '0'::real NOT NULL,
    deposition_datetime bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    depot_id bigint DEFAULT '0'::bigint NOT NULL,
    depot_input_id bigint DEFAULT '0'::bigint NOT NULL
);
 .   DROP TABLE public.depot_shelving_bin_manager;
       public         heap    postgres    false            �          0    244551    depot_shelving_bin_manager 
   TABLE DATA           �   COPY public.depot_shelving_bin_manager (deposition_id, shelving_bin_id, basegood_id, amount, deposition_datetime, status, member_created, member_updated, created_at, modified_at, depot_id, depot_input_id) FROM stdin;
    public          postgres    false    274   �       \           2606    246576 9   depot_shelving_bin_manager PK_64ef350f38f0a92cab497a93577 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_shelving_bin_manager
    ADD CONSTRAINT "PK_64ef350f38f0a92cab497a93577" PRIMARY KEY (deposition_id, shelving_bin_id, depot_id);
 e   ALTER TABLE ONLY public.depot_shelving_bin_manager DROP CONSTRAINT "PK_64ef350f38f0a92cab497a93577";
       public            postgres    false    274    274    274            ^           2606    246742 9   depot_shelving_bin_manager UQ_2f07391c8da1b0ecac9976ddd74 
   CONSTRAINT        ALTER TABLE ONLY public.depot_shelving_bin_manager
    ADD CONSTRAINT "UQ_2f07391c8da1b0ecac9976ddd74" UNIQUE (deposition_id);
 e   ALTER TABLE ONLY public.depot_shelving_bin_manager DROP CONSTRAINT "UQ_2f07391c8da1b0ecac9976ddd74";
       public            postgres    false    274            �      x������ � �     