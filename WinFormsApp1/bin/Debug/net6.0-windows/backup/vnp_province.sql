PGDMP     7    6                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            }           1259    246255    vnp_province    TABLE     �   CREATE TABLE public.vnp_province (
    id bigint NOT NULL,
    "provinceCode" character varying DEFAULT ''::character varying NOT NULL,
    "provinceName" character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.vnp_province;
       public         heap    postgres    false            ~           1259    246262    vnp_province_id_seq    SEQUENCE     |   CREATE SEQUENCE public.vnp_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vnp_province_id_seq;
       public          postgres    false    381            �           0    0    vnp_province_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vnp_province_id_seq OWNED BY public.vnp_province.id;
          public          postgres    false    382            R           2604    246425    vnp_province id    DEFAULT     r   ALTER TABLE ONLY public.vnp_province ALTER COLUMN id SET DEFAULT nextval('public.vnp_province_id_seq'::regclass);
 >   ALTER TABLE public.vnp_province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    382    381            �          0    246255    vnp_province 
   TABLE DATA           J   COPY public.vnp_province (id, "provinceCode", "provinceName") FROM stdin;
    public          postgres    false    381   �       �           0    0    vnp_province_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.vnp_province_id_seq', 63, true);
          public          postgres    false    382            V           2606    246508 +   vnp_province PK_1bd8ebf731d5ea86dc798b17897 
   CONSTRAINT     k   ALTER TABLE ONLY public.vnp_province
    ADD CONSTRAINT "PK_1bd8ebf731d5ea86dc798b17897" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.vnp_province DROP CONSTRAINT "PK_1bd8ebf731d5ea86dc798b17897";
       public            postgres    false    381            X           2606    246868 +   vnp_province UQ_cd4a3f75787080714fd84f77c04 
   CONSTRAINT     r   ALTER TABLE ONLY public.vnp_province
    ADD CONSTRAINT "UQ_cd4a3f75787080714fd84f77c04" UNIQUE ("provinceCode");
 W   ALTER TABLE ONLY public.vnp_province DROP CONSTRAINT "UQ_cd4a3f75787080714fd84f77c04";
       public            postgres    false    381            �   �  x�eTMk�@=��
���]��㘸P��6&P�E�b�b�|ȱ�J)r*��ɡ��I��됃R����������af�ͼ7oG��R��?f�ӍS�����	-�c�����`o�������"��ѣ�X8��k���I��ʆ�S\�쓧���r��*$m���g'g'�0���bꜤY�	]GO�ו,\¯��q�W�_S��ж���A�B�����N�l��#O�P��g��B�R�/��Ӛ|�`g�k�§��]�d�g,����Ԕ}�Ve��6�C0�+"r-P/�t�B��%�ЪHA*hj���Z<K<b��4a��`T���O�KM��qq?@���H�B+I��<[C���c^��ڜOb|��}�2"m�e�3�_%Y�<0�n�����ZL�7lX�H��m�i��f��G��F�*�1�d9c��]۠�+�M��de~a��94�<�"Kc�vPn�0u^B��9�wm�,��B�V��rq3��F$��D�\���\����l�t!˄� р��W����(��a�g�wmZ�K)
�g�[��!+8�a�dy[�����e���]�}[w����
ɷ�Pxq���/c�ndz�����&���c�i�s�֥��rw��E3a����|���f�V$� �&Y�R�p;l^������1kx�R[٧�O���|R�G����x�<�^�ջ��E�ՎE���;���ƾ$�u��QM�!�����K�j	��=f�(/N9     