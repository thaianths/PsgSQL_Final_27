PGDMP     8    5                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            @           1259    245208    myserviceinfo    TABLE       CREATE TABLE public.myserviceinfo (
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
    my_service_id bigint NOT NULL,
    service_id integer NOT NULL,
    valid_from bigint DEFAULT '0'::bigint NOT NULL,
    valid_to bigint DEFAULT '0'::bigint NOT NULL,
    extra_service_id smallint[] DEFAULT '{}'::smallint[] NOT NULL
);
 !   DROP TABLE public.myserviceinfo;
       public         heap    postgres    false            �          0    245208    myserviceinfo 
   TABLE DATA           �   COPY public.myserviceinfo (portal_id, portal_code, customer_id, client_id, country_prefix, member_created, member_updated, status, created_at, modified_at, my_service_id, service_id, valid_from, valid_to, extra_service_id) FROM stdin;
    public          postgres    false    320   �       `           2606    246650 ,   myserviceinfo PK_c5c8910378415815bdf87781cff 
   CONSTRAINT     w   ALTER TABLE ONLY public.myserviceinfo
    ADD CONSTRAINT "PK_c5c8910378415815bdf87781cff" PRIMARY KEY (my_service_id);
 X   ALTER TABLE ONLY public.myserviceinfo DROP CONSTRAINT "PK_c5c8910378415815bdf87781cff";
       public            postgres    false    320            b           2606    246864 ,   myserviceinfo UQ_c5c8910378415815bdf87781cff 
   CONSTRAINT     r   ALTER TABLE ONLY public.myserviceinfo
    ADD CONSTRAINT "UQ_c5c8910378415815bdf87781cff" UNIQUE (my_service_id);
 X   ALTER TABLE ONLY public.myserviceinfo DROP CONSTRAINT "UQ_c5c8910378415815bdf87781cff";
       public            postgres    false    320            �   ?  x���kn�0���tU��.��j�^ö*�@A��e�Q�	�Ώ��N@�ɈƘ3$,=��8�A��O��B��\=�q�Wqz�%[�1,V�"LZb0�N��O��n�(�4���ؔgf�;�$R���2�i�
��g�Ʉ��8��:f�����kuiu��M��W͚{)�K�gfm}G�	�U��G�o��0����*�t�ln��j���nt+������T�O���\!�=8	U�?Q̹=�5�J�-��lVEo����F�l9E��,s9����^�u�S����ʙv����bu`�{F%x�?���,�.��L     