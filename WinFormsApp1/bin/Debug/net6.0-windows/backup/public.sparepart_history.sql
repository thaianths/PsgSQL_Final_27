PGDMP     $    0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            f           1259    245853    sparepart_history    TABLE     K  CREATE TABLE public.sparepart_history (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    sparepart_history_id bigint NOT NULL,
    sparepart_id bigint DEFAULT '0'::bigint NOT NULL,
    from_date bigint DEFAULT '0'::bigint NOT NULL,
    current_location character varying DEFAULT ''::character varying NOT NULL,
    reason character varying DEFAULT ''::character varying NOT NULL
);
 %   DROP TABLE public.sparepart_history;
       public         heap    postgres    false            a           2606    246682 0   sparepart_history PK_f6d4ec396135d7e99f0fa7b10ef 
   CONSTRAINT     �   ALTER TABLE ONLY public.sparepart_history
    ADD CONSTRAINT "PK_f6d4ec396135d7e99f0fa7b10ef" PRIMARY KEY (sparepart_history_id);
 \   ALTER TABLE ONLY public.sparepart_history DROP CONSTRAINT "PK_f6d4ec396135d7e99f0fa7b10ef";
       public            postgres    false    358            c           2606    246890 0   sparepart_history UQ_f6d4ec396135d7e99f0fa7b10ef 
   CONSTRAINT     }   ALTER TABLE ONLY public.sparepart_history
    ADD CONSTRAINT "UQ_f6d4ec396135d7e99f0fa7b10ef" UNIQUE (sparepart_history_id);
 \   ALTER TABLE ONLY public.sparepart_history DROP CONSTRAINT "UQ_f6d4ec396135d7e99f0fa7b10ef";
       public            postgres    false    358           