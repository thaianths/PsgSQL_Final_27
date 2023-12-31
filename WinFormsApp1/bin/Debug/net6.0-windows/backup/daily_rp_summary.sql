PGDMP         7                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244088    daily_rp_summary    VIEW     �  CREATE VIEW public.daily_rp_summary AS
 WITH kind_of_state AS (
         SELECT DISTINCT requestpools.status AS v_state,
            count(*) AS sum_kind_of_status
           FROM public.requestpools
          GROUP BY requestpools.status
        )
 SELECT c.name AS client_name,
    c.client_id,
    c.portal_id,
    r.name AS provider_name,
    r.request_provider_id,
    date(to_timestamp(((t.created_at / 1000))::double precision)) AS created_date,
    sum(rq.shipping_fee) AS total_fee,
    sum(rq.cod) AS total_cod,
    sum(rq.request_total_price) AS total_price,
    sum(rq.vat_fee) AS total_vat,
    k.v_state,
    count(rq.*) AS count
   FROM ((((public.requestpools rq
     JOIN kind_of_state k ON ((k.v_state = rq.status)))
     JOIN public.requestproviderinfo r ON ((r.request_provider_id = rq.request_provider_id)))
     JOIN public.clients c ON ((c.client_id = r.client_id)))
     JOIN public.transport_info t ON ((t.request_id = rq.request_id)))
  GROUP BY c.client_id, r.request_provider_id, rq.status, k.v_state, (date(to_timestamp(((t.created_at / 1000))::double precision)))
  ORDER BY c.client_id, r.request_provider_id, rq.status, k.v_state, (date(to_timestamp(((t.created_at / 1000))::double precision)));
 #   DROP VIEW public.daily_rp_summary;
       public          postgres    false           