PGDMP         6                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            W           1259    245497    reconcile_order    TABLE     ~  CREATE TABLE public.reconcile_order (
    reconcile_order_id bigint NOT NULL,
    portal_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    client_name character varying DEFAULT ''::character varying NOT NULL,
    billno character varying DEFAULT ''::character varying NOT NULL,
    request_id bigint NOT NULL,
    transport_id character varying DEFAULT ''::character varying NOT NULL,
    tracking_number character varying DEFAULT ''::character varying NOT NULL,
    order_code_of_provider character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    request_provider_name character varying DEFAULT ''::character varying NOT NULL,
    service_id bigint DEFAULT '0'::bigint NOT NULL,
    extra_service character varying DEFAULT ''::character varying NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    package_name character varying DEFAULT ''::character varying NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    rlength real DEFAULT '0'::real NOT NULL,
    rwidth real DEFAULT '0'::real NOT NULL,
    rheight real DEFAULT '0'::real NOT NULL,
    rweight real DEFAULT '0'::real NOT NULL,
    request_total_price real DEFAULT '0'::real NOT NULL,
    external_code character varying DEFAULT ''::character varying NOT NULL,
    cod real DEFAULT '0'::real NOT NULL,
    dp_rweight real DEFAULT '0'::real NOT NULL,
    dp_total_price real DEFAULT '0'::real NOT NULL,
    dp_rlength real DEFAULT '0'::real NOT NULL,
    dp_rwidth real DEFAULT '0'::real NOT NULL,
    dp_rheight real DEFAULT '0'::real NOT NULL,
    dp_cod real DEFAULT '0'::real NOT NULL,
    shipping_fee real DEFAULT '0'::real NOT NULL,
    cod_fee real DEFAULT '0'::real NOT NULL,
    insurance_fee real DEFAULT '0'::real NOT NULL,
    warehouse_fee real DEFAULT '0'::real NOT NULL,
    packing_fee real DEFAULT '0'::real NOT NULL,
    fragile_fee real DEFAULT '0'::real NOT NULL,
    changed_addr_fee real DEFAULT '0'::real NOT NULL,
    return_fee real DEFAULT '0'::real NOT NULL,
    ar_fee real DEFAULT '0'::real NOT NULL,
    hand_delivery_fee real DEFAULT '0'::real NOT NULL,
    request_status smallint DEFAULT '0'::smallint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_code character varying DEFAULT ''::character varying NOT NULL,
    pickup_time bigint DEFAULT '0'::bigint NOT NULL,
    sender_phone character varying DEFAULT ''::character varying NOT NULL,
    sender_name character varying DEFAULT ''::character varying NOT NULL,
    pickup_address character varying DEFAULT ''::character varying NOT NULL,
    pickup_w3wcode character varying DEFAULT ''::character varying NOT NULL,
    pickup_lat real DEFAULT '0'::real NOT NULL,
    pickup_lon real DEFAULT '0'::real NOT NULL,
    pickup_did bigint DEFAULT '0'::bigint NOT NULL,
    pickup_wid bigint DEFAULT '0'::bigint NOT NULL,
    receiver_phone character varying DEFAULT ''::character varying NOT NULL,
    receiver_name character varying DEFAULT ''::character varying NOT NULL,
    drop_address character varying DEFAULT ''::character varying NOT NULL,
    drop_w3wcode character varying DEFAULT ''::character varying NOT NULL,
    drop_lat real DEFAULT '0'::real NOT NULL,
    drop_lon real DEFAULT '0'::real NOT NULL,
    promotion real DEFAULT '0'::real NOT NULL,
    drop_did bigint DEFAULT '0'::bigint NOT NULL,
    drop_wid bigint DEFAULT '0'::bigint NOT NULL,
    zone_group_id smallint DEFAULT '0'::smallint NOT NULL,
    zone_group_name character varying DEFAULT ''::character varying NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    finished_at bigint DEFAULT '0'::bigint NOT NULL,
    ordered_at bigint DEFAULT '0'::bigint,
    create_at bigint DEFAULT '0'::bigint,
    member_created bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint
);
 #   DROP TABLE public.reconcile_order;
       public         heap    postgres    false            *          0    245497    reconcile_order 
   TABLE DATA           �  COPY public.reconcile_order (reconcile_order_id, portal_id, client_id, client_name, billno, request_id, transport_id, tracking_number, order_code_of_provider, request_provider_id, request_provider_name, service_id, extra_service, distance, package_name, note, count_of_parcels, rlength, rwidth, rheight, rweight, request_total_price, external_code, cod, dp_rweight, dp_total_price, dp_rlength, dp_rwidth, dp_rheight, dp_cod, shipping_fee, cod_fee, insurance_fee, warehouse_fee, packing_fee, fragile_fee, changed_addr_fee, return_fee, ar_fee, hand_delivery_fee, request_status, service_provider_id, service_provider_code, pickup_time, sender_phone, sender_name, pickup_address, pickup_w3wcode, pickup_lat, pickup_lon, pickup_did, pickup_wid, receiver_phone, receiver_name, drop_address, drop_w3wcode, drop_lat, drop_lon, promotion, drop_did, drop_wid, zone_group_id, zone_group_name, status, finished_at, ordered_at, create_at, member_created, modified_at) FROM stdin;
    public          postgres    false    343          �           2606    246924 $   reconcile_order reconcile_order_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.reconcile_order
    ADD CONSTRAINT reconcile_order_pkey PRIMARY KEY (reconcile_order_id);
 N   ALTER TABLE ONLY public.reconcile_order DROP CONSTRAINT reconcile_order_pkey;
       public            postgres    false    343            �           2606    246926 ;   reconcile_order reconcile_order_request_id_transport_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.reconcile_order
    ADD CONSTRAINT reconcile_order_request_id_transport_id_key UNIQUE (request_id, transport_id);
 e   ALTER TABLE ONLY public.reconcile_order DROP CONSTRAINT reconcile_order_request_id_transport_id_key;
       public            postgres    false    343    343            *      x������ � �     