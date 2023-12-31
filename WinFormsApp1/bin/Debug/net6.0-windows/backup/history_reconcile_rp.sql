PGDMP     '    5                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            3           1259    244989    history_reconcile_rp    TABLE     c  CREATE TABLE public.history_reconcile_rp (
    portal_id bigint DEFAULT '1001'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    id integer NOT NULL,
    transfer_fee real DEFAULT '0'::real NOT NULL,
    no_order bigint DEFAULT '0'::bigint NOT NULL,
    billno character varying,
    reconcile_date bigint DEFAULT '0'::bigint NOT NULL,
    actual_receive real DEFAULT '0'::real NOT NULL,
    refund_return_fee real DEFAULT '0'::real NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    vat_fee real DEFAULT '0'::real NOT NULL,
    total_cod real DEFAULT '0'::real NOT NULL,
    total_reconcile real DEFAULT '0'::real NOT NULL,
    note character varying DEFAULT ''::character varying,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    start_date bigint DEFAULT '0'::bigint NOT NULL,
    total_shipping_fee real DEFAULT '0'::real NOT NULL,
    total_extra_fee real DEFAULT '0'::real NOT NULL,
    outstanding_debt real DEFAULT '0'::real NOT NULL,
    outstanding_debt_debit real DEFAULT '0'::real NOT NULL,
    payment_of_rp real DEFAULT '0'::real NOT NULL,
    total_discount real DEFAULT '0'::real NOT NULL
);
 (   DROP TABLE public.history_reconcile_rp;
       public         heap    postgres    false            4           1259    245018    history_reconcile_rp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.history_reconcile_rp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.history_reconcile_rp_id_seq;
       public          postgres    false    307                       0    0    history_reconcile_rp_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.history_reconcile_rp_id_seq OWNED BY public.history_reconcile_rp.id;
          public          postgres    false    308            X           2604    246404    history_reconcile_rp id    DEFAULT     �   ALTER TABLE ONLY public.history_reconcile_rp ALTER COLUMN id SET DEFAULT nextval('public.history_reconcile_rp_id_seq'::regclass);
 F   ALTER TABLE public.history_reconcile_rp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    308    307                       0    244989    history_reconcile_rp 
   TABLE DATA           �  COPY public.history_reconcile_rp (portal_id, client_id, request_provider_id, member_created, created_at, status, id, transfer_fee, no_order, billno, reconcile_date, actual_receive, refund_return_fee, modified_at, vat_fee, total_cod, total_reconcile, note, member_updated, start_date, total_shipping_fee, total_extra_fee, outstanding_debt, outstanding_debt_debit, payment_of_rp, total_discount) FROM stdin;
    public          postgres    false    307   �       	           0    0    history_reconcile_rp_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.history_reconcile_rp_id_seq', 1, true);
          public          postgres    false    308            l           2606    246558 3   history_reconcile_rp PK_5119bec4fd7957769b5c2a7a556 
   CONSTRAINT     s   ALTER TABLE ONLY public.history_reconcile_rp
    ADD CONSTRAINT "PK_5119bec4fd7957769b5c2a7a556" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.history_reconcile_rp DROP CONSTRAINT "PK_5119bec4fd7957769b5c2a7a556";
       public            postgres    false    307            n           2606    246768 3   history_reconcile_rp UQ_4c9d4cecce44e0aa2e4e40b9e4f 
   CONSTRAINT     �   ALTER TABLE ONLY public.history_reconcile_rp
    ADD CONSTRAINT "UQ_4c9d4cecce44e0aa2e4e40b9e4f" UNIQUE (request_provider_id, reconcile_date);
 _   ALTER TABLE ONLY public.history_reconcile_rp DROP CONSTRAINT "UQ_4c9d4cecce44e0aa2e4e40b9e4f";
       public            postgres    false    307    307                7   x�3400�BCK#NC3Cc aihhhaaffal�i �3 �?0��\1z\\\ ���     