PGDMP         0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            Q           1259    245444    portals    TABLE     �   CREATE TABLE public.portals (
    portal_id bigint NOT NULL,
    portal_name character varying DEFAULT ''::character varying NOT NULL,
    created_at bigint DEFAULT '0'::bigint
);
    DROP TABLE public.portals;
       public         heap    postgres    false            U           2606    246526 &   portals PK_266d55884220432da1b47b54a6b 
   CONSTRAINT     m   ALTER TABLE ONLY public.portals
    ADD CONSTRAINT "PK_266d55884220432da1b47b54a6b" PRIMARY KEY (portal_id);
 R   ALTER TABLE ONLY public.portals DROP CONSTRAINT "PK_266d55884220432da1b47b54a6b";
       public            postgres    false    337            W           2606    246736 &   portals UQ_266d55884220432da1b47b54a6b 
   CONSTRAINT     h   ALTER TABLE ONLY public.portals
    ADD CONSTRAINT "UQ_266d55884220432da1b47b54a6b" UNIQUE (portal_id);
 R   ALTER TABLE ONLY public.portals DROP CONSTRAINT "UQ_266d55884220432da1b47b54a6b";
       public            postgres    false    337           