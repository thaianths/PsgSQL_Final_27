PGDMP     $    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            *           1259    244937    ghn_district    TABLE       CREATE TABLE public.ghn_district (
    id bigint NOT NULL,
    "ProvinceID" bigint DEFAULT '0'::bigint NOT NULL,
    "DistrictID" bigint DEFAULT '0'::bigint NOT NULL,
    "DistrictName" character varying DEFAULT ''::character varying NOT NULL,
    "NameExtension" text[] NOT NULL
);
     DROP TABLE public.ghn_district;
       public         heap    postgres    false            +           1259    244945    ghn_district_id_seq    SEQUENCE     |   CREATE SEQUENCE public.ghn_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ghn_district_id_seq;
       public          postgres    false    298            �           0    0    ghn_district_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ghn_district_id_seq OWNED BY public.ghn_district.id;
          public          postgres    false    299            R           2604    246400    ghn_district id    DEFAULT     r   ALTER TABLE ONLY public.ghn_district ALTER COLUMN id SET DEFAULT nextval('public.ghn_district_id_seq'::regclass);
 >   ALTER TABLE public.ghn_district ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298            W           2606    246658 +   ghn_district PK_cd98eeb1170ed79d1900633bcf1 
   CONSTRAINT     k   ALTER TABLE ONLY public.ghn_district
    ADD CONSTRAINT "PK_cd98eeb1170ed79d1900633bcf1" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.ghn_district DROP CONSTRAINT "PK_cd98eeb1170ed79d1900633bcf1";
       public            postgres    false    298            Y           2606    246710 +   ghn_district UQ_120e550121a1b7a4094445b6ae9 
   CONSTRAINT     ~   ALTER TABLE ONLY public.ghn_district
    ADD CONSTRAINT "UQ_120e550121a1b7a4094445b6ae9" UNIQUE ("ProvinceID", "DistrictID");
 W   ALTER TABLE ONLY public.ghn_district DROP CONSTRAINT "UQ_120e550121a1b7a4094445b6ae9";
       public            postgres    false    298    298           