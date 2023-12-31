PGDMP     !    /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            '           1259    244836    requestpools    TABLE     	  CREATE TABLE public.requestpools (
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
    id integer NOT NULL,
    request_id bigint NOT NULL,
    order_code_of_provider character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    package_name character varying DEFAULT ''::character varying NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    rlength real DEFAULT '0'::real NOT NULL,
    rwidth real DEFAULT '0'::real NOT NULL,
    rheight real DEFAULT '0'::real NOT NULL,
    rweight real DEFAULT '0'::real NOT NULL,
    rvolume real DEFAULT '0'::real NOT NULL,
    handling_unit_id bigint DEFAULT '0'::bigint NOT NULL,
    cod real DEFAULT '0'::real NOT NULL,
    request_total_price real DEFAULT '0'::real NOT NULL,
    service_id bigint DEFAULT '0'::bigint NOT NULL,
    my_service_id bigint DEFAULT '0'::bigint NOT NULL,
    opt_payer smallint DEFAULT '0'::smallint NOT NULL,
    kind_of_request smallint DEFAULT '1'::smallint NOT NULL,
    baggage_weight smallint DEFAULT '0'::smallint NOT NULL,
    is_insurance boolean DEFAULT false NOT NULL,
    shop_id bigint DEFAULT '0'::bigint NOT NULL,
    shipping_fee real DEFAULT '0'::real NOT NULL,
    vat_fee real DEFAULT '0'::real NOT NULL,
    discount real DEFAULT '0'::real NOT NULL,
    kind_of_tariff smallint DEFAULT '0'::smallint NOT NULL,
    error smallint DEFAULT '0'::smallint NOT NULL,
    origin_service_provider bigint DEFAULT '0'::bigint NOT NULL,
    billno character varying DEFAULT ''::character varying,
    history_id character varying DEFAULT ''::character varying NOT NULL,
    choicesp smallint DEFAULT '0'::smallint NOT NULL,
    rp_name character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.requestpools;
       public         heap    postgres    false            \           1259    245646    requestpools_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requestpools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.requestpools_id_seq;
       public          postgres    false    295                       0    0    requestpools_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.requestpools_id_seq OWNED BY public.requestpools.id;
          public          postgres    false    348            {           2604    246414    requestpools id    DEFAULT     r   ALTER TABLE ONLY public.requestpools ALTER COLUMN id SET DEFAULT nextval('public.requestpools_id_seq'::regclass);
 >   ALTER TABLE public.requestpools ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    348    295            }           2606    246490 +   requestpools PK_068b3369e4f799fd9cadcaf56ca 
   CONSTRAINT     k   ALTER TABLE ONLY public.requestpools
    ADD CONSTRAINT "PK_068b3369e4f799fd9cadcaf56ca" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.requestpools DROP CONSTRAINT "PK_068b3369e4f799fd9cadcaf56ca";
       public            postgres    false    295                       2606    246820 +   requestpools UQ_7c4875c05660958b5aa1854ed97 
   CONSTRAINT     �   ALTER TABLE ONLY public.requestpools
    ADD CONSTRAINT "UQ_7c4875c05660958b5aa1854ed97" UNIQUE (request_id, order_code_of_provider);
 W   ALTER TABLE ONLY public.requestpools DROP CONSTRAINT "UQ_7c4875c05660958b5aa1854ed97";
       public            postgres    false    295    295           