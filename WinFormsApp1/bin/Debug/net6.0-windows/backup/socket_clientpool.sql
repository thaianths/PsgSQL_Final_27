PGDMP         6                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            b           1259    245800    socket_clientpool    TABLE       CREATE TABLE public.socket_clientpool (
    socket_client_id text NOT NULL,
    portal_id bigint DEFAULT '1001'::bigint NOT NULL,
    client_id bigint DEFAULT '1'::bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL
);
 %   DROP TABLE public.socket_clientpool;
       public         heap    postgres    false            �          0    245800    socket_clientpool 
   TABLE DATA           j   COPY public.socket_clientpool (socket_client_id, portal_id, client_id, member_id, created_at) FROM stdin;
    public          postgres    false    354   E	       W           2606    246628 0   socket_clientpool PK_9a77a8b43087cd9b2cb83ab3a7f 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socket_clientpool
    ADD CONSTRAINT "PK_9a77a8b43087cd9b2cb83ab3a7f" PRIMARY KEY (socket_client_id);
 \   ALTER TABLE ONLY public.socket_clientpool DROP CONSTRAINT "PK_9a77a8b43087cd9b2cb83ab3a7f";
       public            postgres    false    354            Y           2606    246838 0   socket_clientpool UQ_9a77a8b43087cd9b2cb83ab3a7f 
   CONSTRAINT     y   ALTER TABLE ONLY public.socket_clientpool
    ADD CONSTRAINT "UQ_9a77a8b43087cd9b2cb83ab3a7f" UNIQUE (socket_client_id);
 \   ALTER TABLE ONLY public.socket_clientpool DROP CONSTRAINT "UQ_9a77a8b43087cd9b2cb83ab3a7f";
       public            postgres    false    354            �   z   x�u��
B!@��.��36.Eiw�E�A m��E�}F�8pV_[��1�1���BH
�F�sh�ę�uF��/�%��z�t\�8!�5j+������y������I�W���'+�`7���"t     