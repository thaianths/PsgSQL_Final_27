PGDMP          1                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    246263    vnp_ward    TABLE       CREATE TABLE public.vnp_ward (
    id bigint NOT NULL,
    "districtCode" character varying DEFAULT ''::character varying NOT NULL,
    "communeCode" character varying DEFAULT ''::character varying NOT NULL,
    "communeName" character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.vnp_ward;
       public         heap    postgres    false            �           1259    246271    vnp_ward_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vnp_ward_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vnp_ward_id_seq;
       public          postgres    false    383            �           0    0    vnp_ward_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vnp_ward_id_seq OWNED BY public.vnp_ward.id;
          public          postgres    false    384            R           2604    246426    vnp_ward id    DEFAULT     j   ALTER TABLE ONLY public.vnp_ward ALTER COLUMN id SET DEFAULT nextval('public.vnp_ward_id_seq'::regclass);
 :   ALTER TABLE public.vnp_ward ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    384    383            W           2606    246560 '   vnp_ward PK_51a6f9906e0d4128ebbe041e469 
   CONSTRAINT     g   ALTER TABLE ONLY public.vnp_ward
    ADD CONSTRAINT "PK_51a6f9906e0d4128ebbe041e469" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.vnp_ward DROP CONSTRAINT "PK_51a6f9906e0d4128ebbe041e469";
       public            postgres    false    383            Y           2606    246752 '   vnp_ward UQ_3e5ef71f67c8eda60ded8f88dea 
   CONSTRAINT     m   ALTER TABLE ONLY public.vnp_ward
    ADD CONSTRAINT "UQ_3e5ef71f67c8eda60ded8f88dea" UNIQUE ("communeCode");
 S   ALTER TABLE ONLY public.vnp_ward DROP CONSTRAINT "UQ_3e5ef71f67c8eda60ded8f88dea";
       public            postgres    false    383           