PGDMP         5                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244496    depot_packing_sequence_details    TABLE     	  CREATE TABLE public.depot_packing_sequence_details (
    stack_id bigint NOT NULL,
    route_id bigint NOT NULL,
    product_code character varying,
    expired_datetime bigint,
    deposition_datetime bigint,
    request_id bigint,
    bin_id character varying
);
 2   DROP TABLE public.depot_packing_sequence_details;
       public         heap    postgres    false            �          0    244496    depot_packing_sequence_details 
   TABLE DATA           �   COPY public.depot_packing_sequence_details (stack_id, route_id, product_code, expired_datetime, deposition_datetime, request_id, bin_id) FROM stdin;
    public          postgres    false    271   c       �      x������ � �     