PGDMP         0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            V           1259    245475    province    TABLE     �  CREATE TABLE public.province (
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
    pid bigint NOT NULL,
    cid bigint DEFAULT '84'::bigint NOT NULL,
    pname character varying DEFAULT ''::character varying NOT NULL,
    pshort character varying DEFAULT ''::character varying NOT NULL,
    pkey text[] NOT NULL,
    dists jsonb DEFAULT '[]'::jsonb NOT NULL,
    aid smallint DEFAULT '0'::smallint NOT NULL,
    aname character varying DEFAULT ''::character varying NOT NULL,
    ashort character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.province;
       public         heap    postgres    false            d           2606    246696 '   province PK_fecb13474dba6654c8f7828abd8 
   CONSTRAINT     h   ALTER TABLE ONLY public.province
    ADD CONSTRAINT "PK_fecb13474dba6654c8f7828abd8" PRIMARY KEY (pid);
 S   ALTER TABLE ONLY public.province DROP CONSTRAINT "PK_fecb13474dba6654c8f7828abd8";
       public            postgres    false    342            f           2606    246898 '   province UQ_fecb13474dba6654c8f7828abd8 
   CONSTRAINT     c   ALTER TABLE ONLY public.province
    ADD CONSTRAINT "UQ_fecb13474dba6654c8f7828abd8" UNIQUE (pid);
 S   ALTER TABLE ONLY public.province DROP CONSTRAINT "UQ_fecb13474dba6654c8f7828abd8";
       public            postgres    false    342           