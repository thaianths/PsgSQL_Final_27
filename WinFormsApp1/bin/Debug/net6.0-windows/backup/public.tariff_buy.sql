PGDMP     )    0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            j           1259    245918 
   tariff_buy    TABLE     y  CREATE TABLE public.tariff_buy (
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    zone_type smallint DEFAULT '0'::smallint NOT NULL,
    from_basic_unit real DEFAULT '0'::real NOT NULL,
    to_basic_unit real DEFAULT '0'::real NOT NULL,
    extra_net_per_added_service_unit real DEFAULT '0'::real NOT NULL,
    extra_net_per_added_basic_unit real DEFAULT '0'::real NOT NULL,
    vat_percent real DEFAULT '0'::real NOT NULL,
    unit_of_basic_tariff smallint DEFAULT '0'::smallint NOT NULL,
    incl_service_tariff real DEFAULT '0'::real NOT NULL,
    from_service_tariff real DEFAULT '0'::real NOT NULL,
    to_service_tariff real DEFAULT '0'::real NOT NULL,
    valid_from bigint DEFAULT '0'::bigint NOT NULL,
    valid_to bigint DEFAULT '0'::bigint NOT NULL,
    net_price bigint DEFAULT '0'::bigint NOT NULL,
    service_id smallint DEFAULT '0'::smallint NOT NULL,
    my_service_id smallint DEFAULT '0'::smallint NOT NULL,
    tariff_id bigint NOT NULL,
    zone_group_id smallint DEFAULT '0'::smallint NOT NULL,
    profit_margin smallint DEFAULT '0'::smallint NOT NULL,
    step_of_basic_unit real DEFAULT '1'::real NOT NULL,
    unit_of_service_tariff smallint DEFAULT '-1'::smallint NOT NULL
);
    DROP TABLE public.tariff_buy;
       public         heap    postgres    false            o           2606    246642 )   tariff_buy PK_b22e084b24974f741aad970113d 
   CONSTRAINT     p   ALTER TABLE ONLY public.tariff_buy
    ADD CONSTRAINT "PK_b22e084b24974f741aad970113d" PRIMARY KEY (tariff_id);
 U   ALTER TABLE ONLY public.tariff_buy DROP CONSTRAINT "PK_b22e084b24974f741aad970113d";
       public            postgres    false    362            q           2606    246854 )   tariff_buy UQ_b22e084b24974f741aad970113d 
   CONSTRAINT     k   ALTER TABLE ONLY public.tariff_buy
    ADD CONSTRAINT "UQ_b22e084b24974f741aad970113d" UNIQUE (tariff_id);
 U   ALTER TABLE ONLY public.tariff_buy DROP CONSTRAINT "UQ_b22e084b24974f741aad970113d";
       public            postgres    false    362           