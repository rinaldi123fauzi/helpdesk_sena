toc.dat                                                                                             0000600 0004000 0002000 00000151737 14447262501 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       !                    {            helpdesk_sena    14.8 (Debian 14.8-1.pgdg110+1)    14.8 (Debian 14.8-1.pgdg110+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17392    helpdesk_sena    DATABASE     a   CREATE DATABASE helpdesk_sena WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE helpdesk_sena;
                postgres    false         �            1259    17393    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    postgres    false         �            1259    17398 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          postgres    false    209         �           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          postgres    false    210         �            1259    17399    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         heap    postgres    false         �            1259    17404    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          postgres    false    211         �           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          postgres    false    212         �            1259    17405 	   approvals    TABLE     I  CREATE TABLE public.approvals (
    id bigint NOT NULL,
    issued_by character varying,
    approve_level character varying,
    date timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ticket_id bigint,
    description character varying
);
    DROP TABLE public.approvals;
       public         heap    postgres    false         �            1259    17410    approvals_id_seq    SEQUENCE     y   CREATE SEQUENCE public.approvals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.approvals_id_seq;
       public          postgres    false    213         �           0    0    approvals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.approvals_id_seq OWNED BY public.approvals.id;
          public          postgres    false    214         �            1259    17411    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false         �            1259    17416    areas    TABLE     �   CREATE TABLE public.areas (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.areas;
       public         heap    postgres    false         �            1259    17421    areas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.areas_id_seq;
       public          postgres    false    216         �           0    0    areas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;
          public          postgres    false    217         �            1259    17422 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    nama_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false         �            1259    17427    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    218         �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    219         �            1259    17428 	   employees    TABLE     �  CREATE TABLE public.employees (
    id bigint NOT NULL,
    id_pegawai character varying,
    nama character varying,
    tempat_lahir character varying,
    tanggal_lahir date,
    alamat character varying,
    id_identitas character varying,
    nomor_telepon character varying,
    email character varying,
    jabatan character varying,
    work_unit_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false         �            1259    17433    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    220         �           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    221         �            1259    17434    inventories    TABLE     �  CREATE TABLE public.inventories (
    id bigint NOT NULL,
    kode character varying,
    item_id bigint,
    merek character varying,
    tahun_perolehan date,
    harga_perolehan integer,
    nilai_residu integer,
    masa_guna date,
    lama_pakai character varying,
    kondisi character varying,
    lokasi character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.inventories;
       public         heap    postgres    false         �            1259    17439    inventories_id_seq    SEQUENCE     {   CREATE SEQUENCE public.inventories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.inventories_id_seq;
       public          postgres    false    222         �           0    0    inventories_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.inventories_id_seq OWNED BY public.inventories.id;
          public          postgres    false    223         �            1259    17440    items    TABLE     �   CREATE TABLE public.items (
    id bigint NOT NULL,
    nama_item character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.items;
       public         heap    postgres    false         �            1259    17445    items_id_seq    SEQUENCE     u   CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false    224         �           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          postgres    false    225         �            1259    17446    loans    TABLE     d  CREATE TABLE public.loans (
    id bigint NOT NULL,
    user_id bigint,
    deskripsi character varying,
    jumlah integer,
    from_date date,
    to_date date,
    penanggung_jawab character varying,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    inventory_id bigint
);
    DROP TABLE public.loans;
       public         heap    postgres    false         �            1259    17451    loans_id_seq    SEQUENCE     u   CREATE SEQUENCE public.loans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.loans_id_seq;
       public          postgres    false    226         �           0    0    loans_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.loans_id_seq OWNED BY public.loans.id;
          public          postgres    false    227         �            1259    25886 	   positions    TABLE     �   CREATE TABLE public.positions (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    work_unit_id bigint,
    punya_pm boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.positions;
       public         heap    postgres    false         �            1259    25885    positions_id_seq    SEQUENCE     y   CREATE SEQUENCE public.positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.positions_id_seq;
       public          postgres    false    246         �           0    0    positions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.positions_id_seq OWNED BY public.positions.id;
          public          postgres    false    245         �            1259    17456    role_assignments    TABLE     �   CREATE TABLE public.role_assignments (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.role_assignments;
       public         heap    postgres    false         �            1259    17459    role_assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.role_assignments_id_seq;
       public          postgres    false    228         �           0    0    role_assignments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.role_assignments_id_seq OWNED BY public.role_assignments.id;
          public          postgres    false    229         �            1259    17460    roles    TABLE        CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying NOT NULL,
    permissions text,
    type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false         �            1259    17465    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    230         �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    231         �            1259    17466    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false         �            1259    17471    slas    TABLE     �   CREATE TABLE public.slas (
    id bigint NOT NULL,
    category_id bigint,
    period integer,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.slas;
       public         heap    postgres    false         �            1259    17474    slas_id_seq    SEQUENCE     t   CREATE SEQUENCE public.slas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.slas_id_seq;
       public          postgres    false    233         �           0    0    slas_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.slas_id_seq OWNED BY public.slas.id;
          public          postgres    false    234         �            1259    17475    sub_categories    TABLE       CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    category_id bigint,
    nama_sub_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approval_berjenjang character varying
);
 "   DROP TABLE public.sub_categories;
       public         heap    postgres    false         �            1259    17480    sub_categories_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sub_categories_id_seq;
       public          postgres    false    235         �           0    0    sub_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;
          public          postgres    false    236         �            1259    17485    ticket_chats    TABLE       CREATE TABLE public.ticket_chats (
    id bigint NOT NULL,
    sender character varying,
    receiver character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.ticket_chats;
       public         heap    postgres    false         �            1259    17490    ticket_chats_id_seq    SEQUENCE     |   CREATE SEQUENCE public.ticket_chats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ticket_chats_id_seq;
       public          postgres    false    237         �           0    0    ticket_chats_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ticket_chats_id_seq OWNED BY public.ticket_chats.id;
          public          postgres    false    238         �            1259    17491    tickets    TABLE     y  CREATE TABLE public.tickets (
    id bigint NOT NULL,
    category_id bigint,
    sub_category_id bigint,
    work_unit_id bigint,
    issued_by character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    area_id bigint,
    status character varying,
    assigned_by character varying,
    no_ticket character varying,
    approval_by character varying,
    created_respon timestamp without time zone,
    inprogress_respon timestamp without time zone,
    closed_respon timestamp without time zone,
    pause_respon boolean DEFAULT false
);
    DROP TABLE public.tickets;
       public         heap    postgres    false         �            1259    17496    tickets_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public          postgres    false    239         �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
          public          postgres    false    240         �            1259    17497    users    TABLE     K  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    username character varying,
    state boolean DEFAULT true,
    user_type character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    17505    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    241         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    242         �            1259    17506 
   work_units    TABLE     �   CREATE TABLE public.work_units (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.work_units;
       public         heap    postgres    false         �            1259    17511    work_units_id_seq    SEQUENCE     z   CREATE SEQUENCE public.work_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.work_units_id_seq;
       public          postgres    false    243         �           0    0    work_units_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.work_units_id_seq OWNED BY public.work_units.id;
          public          postgres    false    244         �           2604    17512    active_storage_attachments id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209         �           2604    17513    active_storage_blobs id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211         �           2604    17514    approvals id    DEFAULT     l   ALTER TABLE ONLY public.approvals ALTER COLUMN id SET DEFAULT nextval('public.approvals_id_seq'::regclass);
 ;   ALTER TABLE public.approvals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213         �           2604    17515    areas id    DEFAULT     d   ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);
 7   ALTER TABLE public.areas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216         �           2604    17516    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218         �           2604    17517    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220         �           2604    17518    inventories id    DEFAULT     p   ALTER TABLE ONLY public.inventories ALTER COLUMN id SET DEFAULT nextval('public.inventories_id_seq'::regclass);
 =   ALTER TABLE public.inventories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222         �           2604    17519    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224         �           2604    17520    loans id    DEFAULT     d   ALTER TABLE ONLY public.loans ALTER COLUMN id SET DEFAULT nextval('public.loans_id_seq'::regclass);
 7   ALTER TABLE public.loans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226         �           2604    25889    positions id    DEFAULT     l   ALTER TABLE ONLY public.positions ALTER COLUMN id SET DEFAULT nextval('public.positions_id_seq'::regclass);
 ;   ALTER TABLE public.positions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246         �           2604    17522    role_assignments id    DEFAULT     z   ALTER TABLE ONLY public.role_assignments ALTER COLUMN id SET DEFAULT nextval('public.role_assignments_id_seq'::regclass);
 B   ALTER TABLE public.role_assignments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228         �           2604    17523    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230         �           2604    17524    slas id    DEFAULT     b   ALTER TABLE ONLY public.slas ALTER COLUMN id SET DEFAULT nextval('public.slas_id_seq'::regclass);
 6   ALTER TABLE public.slas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233         �           2604    17525    sub_categories id    DEFAULT     v   ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);
 @   ALTER TABLE public.sub_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235         �           2604    17527    ticket_chats id    DEFAULT     r   ALTER TABLE ONLY public.ticket_chats ALTER COLUMN id SET DEFAULT nextval('public.ticket_chats_id_seq'::regclass);
 >   ALTER TABLE public.ticket_chats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237         �           2604    17528 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239         �           2604    17529    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241         �           2604    17530    work_units id    DEFAULT     n   ALTER TABLE ONLY public.work_units ALTER COLUMN id SET DEFAULT nextval('public.work_units_id_seq'::regclass);
 <   ALTER TABLE public.work_units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243         �          0    17393    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          postgres    false    209       3501.dat �          0    17399    active_storage_blobs 
   TABLE DATA           z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public          postgres    false    211       3503.dat �          0    17405 	   approvals 
   TABLE DATA           w   COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM stdin;
    public          postgres    false    213       3505.dat �          0    17411    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    215       3507.dat �          0    17416    areas 
   TABLE DATA           A   COPY public.areas (id, nama, created_at, updated_at) FROM stdin;
    public          postgres    false    216       3508.dat �          0    17422 
   categories 
   TABLE DATA           O   COPY public.categories (id, nama_kategori, created_at, updated_at) FROM stdin;
    public          postgres    false    218       3510.dat �          0    17428 	   employees 
   TABLE DATA           �   COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220       3512.dat �          0    17434    inventories 
   TABLE DATA           �   COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222       3514.dat �          0    17440    items 
   TABLE DATA           F   COPY public.items (id, nama_item, created_at, updated_at) FROM stdin;
    public          postgres    false    224       3516.dat �          0    17446    loans 
   TABLE DATA           �   COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM stdin;
    public          postgres    false    226       3518.dat �          0    25886 	   positions 
   TABLE DATA           i   COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM stdin;
    public          postgres    false    246       3538.dat �          0    17456    role_assignments 
   TABLE DATA           X   COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM stdin;
    public          postgres    false    228       3520.dat �          0    17460    roles 
   TABLE DATA           T   COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM stdin;
    public          postgres    false    230       3522.dat �          0    17466    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    232       3524.dat �          0    17471    slas 
   TABLE DATA           W   COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM stdin;
    public          postgres    false    233       3525.dat �          0    17475    sub_categories 
   TABLE DATA           y   COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang) FROM stdin;
    public          postgres    false    235       3527.dat �          0    17485    ticket_chats 
   TABLE DATA           a   COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM stdin;
    public          postgres    false    237       3529.dat �          0    17491    tickets 
   TABLE DATA           �   COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon) FROM stdin;
    public          postgres    false    239       3531.dat �          0    17497    users 
   TABLE DATA           �   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type) FROM stdin;
    public          postgres    false    241       3533.dat �          0    17506 
   work_units 
   TABLE DATA           F   COPY public.work_units (id, nama, created_at, updated_at) FROM stdin;
    public          postgres    false    243       3535.dat �           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 17, true);
          public          postgres    false    210         �           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 18, true);
          public          postgres    false    212         �           0    0    approvals_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.approvals_id_seq', 78, true);
          public          postgres    false    214         �           0    0    areas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.areas_id_seq', 29, true);
          public          postgres    false    217         �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 11, true);
          public          postgres    false    219         �           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    221         �           0    0    inventories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventories_id_seq', 2, true);
          public          postgres    false    223         �           0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 2, true);
          public          postgres    false    225         �           0    0    loans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.loans_id_seq', 1, false);
          public          postgres    false    227         �           0    0    positions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.positions_id_seq', 6, true);
          public          postgres    false    245         �           0    0    role_assignments_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.role_assignments_id_seq', 16, true);
          public          postgres    false    229         �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
          public          postgres    false    231         �           0    0    slas_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.slas_id_seq', 6, true);
          public          postgres    false    234         �           0    0    sub_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_categories_id_seq', 22, true);
          public          postgres    false    236         �           0    0    ticket_chats_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);
          public          postgres    false    238         �           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);
          public          postgres    false    240         �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
          public          postgres    false    242         �           0    0    work_units_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.work_units_id_seq', 4, true);
          public          postgres    false    244         �           2606    17532 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            postgres    false    209         �           2606    17534 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            postgres    false    211         �           2606    17536    approvals approvals_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT approvals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.approvals DROP CONSTRAINT approvals_pkey;
       public            postgres    false    213         �           2606    17538 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    215         �           2606    17540    areas areas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.areas DROP CONSTRAINT areas_pkey;
       public            postgres    false    216         �           2606    17542    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    218         �           2606    17544    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    220         �           2606    17546    inventories inventories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.inventories DROP CONSTRAINT inventories_pkey;
       public            postgres    false    222         �           2606    17548    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    224         �           2606    17550    loans loans_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.loans DROP CONSTRAINT loans_pkey;
       public            postgres    false    226                    2606    25891    positions positions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_pkey;
       public            postgres    false    246         �           2606    17554 &   role_assignments role_assignments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT role_assignments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT role_assignments_pkey;
       public            postgres    false    228         �           2606    17556    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    230         �           2606    17558 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    232         �           2606    17560    slas slas_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.slas
    ADD CONSTRAINT slas_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.slas DROP CONSTRAINT slas_pkey;
       public            postgres    false    233         �           2606    17562 "   sub_categories sub_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_pkey;
       public            postgres    false    235         �           2606    17566    ticket_chats ticket_chats_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ticket_chats
    ADD CONSTRAINT ticket_chats_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ticket_chats DROP CONSTRAINT ticket_chats_pkey;
       public            postgres    false    237                    2606    17568    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public            postgres    false    239                    2606    17570    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    241         
           2606    17572    work_units work_units_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.work_units
    ADD CONSTRAINT work_units_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.work_units DROP CONSTRAINT work_units_pkey;
       public            postgres    false    243         �           1259    17573 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            postgres    false    209         �           1259    17574 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            postgres    false    209    209    209    209         �           1259    17575 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            postgres    false    211         �           1259    17576    index_approvals_on_ticket_id    INDEX     W   CREATE INDEX index_approvals_on_ticket_id ON public.approvals USING btree (ticket_id);
 0   DROP INDEX public.index_approvals_on_ticket_id;
       public            postgres    false    213         �           1259    17577    index_employees_on_work_unit_id    INDEX     ]   CREATE INDEX index_employees_on_work_unit_id ON public.employees USING btree (work_unit_id);
 3   DROP INDEX public.index_employees_on_work_unit_id;
       public            postgres    false    220         �           1259    17578    index_inventories_on_item_id    INDEX     W   CREATE INDEX index_inventories_on_item_id ON public.inventories USING btree (item_id);
 0   DROP INDEX public.index_inventories_on_item_id;
       public            postgres    false    222         �           1259    17579    index_inventories_on_user_id    INDEX     W   CREATE INDEX index_inventories_on_user_id ON public.inventories USING btree (user_id);
 0   DROP INDEX public.index_inventories_on_user_id;
       public            postgres    false    222         �           1259    17580    index_loans_on_inventory_id    INDEX     U   CREATE INDEX index_loans_on_inventory_id ON public.loans USING btree (inventory_id);
 /   DROP INDEX public.index_loans_on_inventory_id;
       public            postgres    false    226         �           1259    17581    index_loans_on_user_id    INDEX     K   CREATE INDEX index_loans_on_user_id ON public.loans USING btree (user_id);
 *   DROP INDEX public.index_loans_on_user_id;
       public            postgres    false    226                    1259    25908    index_positions_on_role_id    INDEX     S   CREATE INDEX index_positions_on_role_id ON public.positions USING btree (role_id);
 .   DROP INDEX public.index_positions_on_role_id;
       public            postgres    false    246                    1259    25907    index_positions_on_user_id    INDEX     S   CREATE INDEX index_positions_on_user_id ON public.positions USING btree (user_id);
 .   DROP INDEX public.index_positions_on_user_id;
       public            postgres    false    246                    1259    25909    index_positions_on_work_unit_id    INDEX     ]   CREATE INDEX index_positions_on_work_unit_id ON public.positions USING btree (work_unit_id);
 3   DROP INDEX public.index_positions_on_work_unit_id;
       public            postgres    false    246         �           1259    17585 !   index_role_assignments_on_role_id    INDEX     a   CREATE INDEX index_role_assignments_on_role_id ON public.role_assignments USING btree (role_id);
 5   DROP INDEX public.index_role_assignments_on_role_id;
       public            postgres    false    228         �           1259    17586 !   index_role_assignments_on_user_id    INDEX     a   CREATE INDEX index_role_assignments_on_user_id ON public.role_assignments USING btree (user_id);
 5   DROP INDEX public.index_role_assignments_on_user_id;
       public            postgres    false    228         �           1259    17587    index_slas_on_category_id    INDEX     Q   CREATE INDEX index_slas_on_category_id ON public.slas USING btree (category_id);
 -   DROP INDEX public.index_slas_on_category_id;
       public            postgres    false    233         �           1259    17588 #   index_sub_categories_on_category_id    INDEX     e   CREATE INDEX index_sub_categories_on_category_id ON public.sub_categories USING btree (category_id);
 7   DROP INDEX public.index_sub_categories_on_category_id;
       public            postgres    false    235         �           1259    17590    index_tickets_on_area_id    INDEX     O   CREATE INDEX index_tickets_on_area_id ON public.tickets USING btree (area_id);
 ,   DROP INDEX public.index_tickets_on_area_id;
       public            postgres    false    239                     1259    17591    index_tickets_on_category_id    INDEX     W   CREATE INDEX index_tickets_on_category_id ON public.tickets USING btree (category_id);
 0   DROP INDEX public.index_tickets_on_category_id;
       public            postgres    false    239                    1259    17592     index_tickets_on_sub_category_id    INDEX     _   CREATE INDEX index_tickets_on_sub_category_id ON public.tickets USING btree (sub_category_id);
 4   DROP INDEX public.index_tickets_on_sub_category_id;
       public            postgres    false    239                    1259    17593    index_tickets_on_work_unit_id    INDEX     Y   CREATE INDEX index_tickets_on_work_unit_id ON public.tickets USING btree (work_unit_id);
 1   DROP INDEX public.index_tickets_on_work_unit_id;
       public            postgres    false    239                    1259    17594    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    241                    1259    17595 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    241                    2606    17596    tickets fk_rails_0478bbb7f9    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0478bbb7f9 FOREIGN KEY (sub_category_id) REFERENCES public.sub_categories(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_0478bbb7f9;
       public          postgres    false    3324    239    235                    2606    17601    tickets fk_rails_0ae0f75f5a    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0ae0f75f5a FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_0ae0f75f5a;
       public          postgres    false    239    3338    243                    2606    17606    tickets fk_rails_1f6d1af6fa    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_1f6d1af6fa FOREIGN KEY (category_id) REFERENCES public.categories(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_1f6d1af6fa;
       public          postgres    false    3297    218    239         !           2606    25902    positions fk_rails_22abea576e    FK CONSTRAINT     �   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_22abea576e FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_22abea576e;
       public          postgres    false    246    243    3338                    2606    17616    loans fk_rails_35e3b20ad5    FK CONSTRAINT     �   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_35e3b20ad5 FOREIGN KEY (inventory_id) REFERENCES public.inventories(id);
 C   ALTER TABLE ONLY public.loans DROP CONSTRAINT fk_rails_35e3b20ad5;
       public          postgres    false    226    3304    222                    2606    17621    approvals fk_rails_4480bd2f47    FK CONSTRAINT     �   ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT fk_rails_4480bd2f47 FOREIGN KEY (ticket_id) REFERENCES public.tickets(id);
 G   ALTER TABLE ONLY public.approvals DROP CONSTRAINT fk_rails_4480bd2f47;
       public          postgres    false    213    3332    239                    2606    25892    positions fk_rails_4e4581e38b    FK CONSTRAINT     |   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_4e4581e38b FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_4e4581e38b;
       public          postgres    false    241    246    3336                     2606    25897    positions fk_rails_60d189a78f    FK CONSTRAINT     |   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_60d189a78f FOREIGN KEY (role_id) REFERENCES public.roles(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_60d189a78f;
       public          postgres    false    230    3316    246                    2606    17636    inventories fk_rails_6642cbdd87    FK CONSTRAINT     ~   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_6642cbdd87 FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.inventories DROP CONSTRAINT fk_rails_6642cbdd87;
       public          postgres    false    241    222    3336                    2606    17641    employees fk_rails_886248bb6d    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_886248bb6d FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 G   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_rails_886248bb6d;
       public          postgres    false    243    3338    220                    2606    17646 $   role_assignments fk_rails_8ddd873ee0    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_8ddd873ee0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT fk_rails_8ddd873ee0;
       public          postgres    false    241    228    3336                    2606    17651 "   sub_categories fk_rails_8e75c2ee78    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT fk_rails_8e75c2ee78 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 L   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT fk_rails_8e75c2ee78;
       public          postgres    false    235    3297    218                    2606    17656    tickets fk_rails_98bb66241d    FK CONSTRAINT     z   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_98bb66241d FOREIGN KEY (area_id) REFERENCES public.areas(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_98bb66241d;
       public          postgres    false    239    216    3295                    2606    17666    slas fk_rails_a6ccf586eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.slas
    ADD CONSTRAINT fk_rails_a6ccf586eb FOREIGN KEY (category_id) REFERENCES public.categories(id);
 B   ALTER TABLE ONLY public.slas DROP CONSTRAINT fk_rails_a6ccf586eb;
       public          postgres    false    3297    218    233                    2606    17671    loans fk_rails_c15c911198    FK CONSTRAINT     x   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_c15c911198 FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.loans DROP CONSTRAINT fk_rails_c15c911198;
       public          postgres    false    241    3336    226                    2606    17676 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          postgres    false    3287    211    209                    2606    17681 $   role_assignments fk_rails_e4bfc1cd2c    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_e4bfc1cd2c FOREIGN KEY (role_id) REFERENCES public.roles(id);
 N   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT fk_rails_e4bfc1cd2c;
       public          postgres    false    228    230    3316                    2606    17686    inventories fk_rails_fcf6633a1e    FK CONSTRAINT     ~   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_fcf6633a1e FOREIGN KEY (item_id) REFERENCES public.items(id);
 I   ALTER TABLE ONLY public.inventories DROP CONSTRAINT fk_rails_fcf6633a1e;
       public          postgres    false    222    3306    224                                         3501.dat                                                                                            0000600 0004000 0002000 00000000171 14447262501 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	foto_inventory	Inventory	1	2	2023-06-13 04:55:36.156805
3	foto_inventory	Inventory	2	3	2023-06-13 05:47:40.292969
\.


                                                                                                                                                                                                                                                                                                                                                                                                       3503.dat                                                                                            0000600 0004000 0002000 00000000535 14447262501 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	h4p13nxjWnBzT12EjzZZPdRv	Screenshot from 2023-06-09 14-27-01.png	image/png	{"identified":true,"analyzed":true}	563273	oFsTh+3jTcIuyYVWu8bdcw==	2023-06-13 04:55:36.155016
3	BtqFThMB78sW9KrHGQQ2gNM7	Screenshot from 2023-06-09 14-24-13.png	image/png	{"identified":true,"analyzed":true}	556991	fXtMRnasSPgYO7luya5AoA==	2023-06-13 05:47:40.287932
\.


                                                                                                                                                                   3505.dat                                                                                            0000600 0004000 0002000 00000000150 14447262501 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        78	user.komersial	created	\N	2023-06-29 10:58:56.360587	2023-06-29 10:58:56.360587	1	create ticket
\.


                                                                                                                                                                                                                                                                                                                                                                                                                        3507.dat                                                                                            0000600 0004000 0002000 00000000123 14447262501 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        environment	development	2023-06-12 03:47:38.838361	2023-06-12 03:47:38.838361
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3508.dat                                                                                            0000600 0004000 0002000 00000000311 14447262501 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Medan	2023-06-12 04:27:53.196575	2023-06-15 03:24:33.437799
2	Surabaya	2023-06-12 04:27:20.988036	2023-06-15 03:24:40.289321
5	Kantor Pusat	2023-06-15 10:47:24.595396	2023-06-15 10:47:24.595396
\.


                                                                                                                                                                                                                                                                                                                       3510.dat                                                                                            0000600 0004000 0002000 00000000503 14447262501 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	Layanan Aplikasi	2023-06-15 03:14:07.145211	2023-06-15 03:14:07.145211
9	Layanan Infrastruktur	2023-06-15 03:15:37.703227	2023-06-15 03:15:37.703227
10	Layanan Peminjaman Barang	2023-06-15 03:15:55.072237	2023-06-15 03:15:55.072237
11	Layanan Pengaturan Hak Akses	2023-06-15 03:16:06.72204	2023-06-15 03:16:06.72204
\.


                                                                                                                                                                                             3512.dat                                                                                            0000600 0004000 0002000 00000000005 14447262501 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3514.dat                                                                                            0000600 0004000 0002000 00000000421 14447262501 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1111	1	Lenovo	2023-06-13	13000000	10000000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 03:53:22.087578	2023-06-13 04:55:22.537742
2	1111	2	Universal HDMI	2023-06-13	200000	150000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 05:47:40.291028	2023-06-13 05:50:08.7636
\.


                                                                                                                                                                                                                                               3516.dat                                                                                            0000600 0004000 0002000 00000000202 14447262501 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Laptop	2023-06-13 03:52:25.600138	2023-06-13 03:52:25.600138
2	Kabel	2023-06-13 05:46:56.030759	2023-06-13 05:46:56.030759
\.


                                                                                                                                                                                                                                                                                                                                                                                              3518.dat                                                                                            0000600 0004000 0002000 00000000005 14447262501 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3538.dat                                                                                            0000600 0004000 0002000 00000000405 14447262501 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	8	3	3	t	2023-06-24 13:58:02.078294	2023-06-24 13:58:02.078294
2	4	3	2	f	2023-06-24 13:58:58.98847	2023-06-24 13:58:58.98847
3	10	3	1	t	2023-06-24 13:59:14.941185	2023-06-24 13:59:14.941185
4	11	3	4	f	2023-06-24 13:59:26.405844	2023-06-24 13:59:26.405844
\.


                                                                                                                                                                                                                                                           3520.dat                                                                                            0000600 0004000 0002000 00000001524 14447262501 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-06-12 03:56:24.579679	2023-06-12 03:56:24.579679
2	2	4	2023-06-14 08:54:38.008763	2023-06-14 08:54:38.008763
3	3	5	2023-06-15 02:45:38.081107	2023-06-15 02:45:38.081107
5	5	6	2023-06-15 05:01:36.488875	2023-06-15 05:01:36.488875
6	6	4	2023-06-15 06:31:48.07708	2023-06-15 06:31:48.07708
7	7	5	2023-06-15 07:15:38.364006	2023-06-15 07:15:38.364006
8	8	3	2023-06-16 14:42:21.118433	2023-06-16 14:42:21.118433
9	9	7	2023-06-17 00:27:54.939237	2023-06-17 00:27:54.939237
11	10	3	2023-06-24 13:23:31.107547	2023-06-24 13:23:31.107547
12	11	3	2023-06-24 13:23:55.537853	2023-06-24 13:23:55.537853
13	4	3	2023-06-24 13:24:27.385906	2023-06-24 13:24:27.385906
14	12	4	2023-06-24 16:38:19.22566	2023-06-24 16:38:19.22566
15	13	4	2023-06-26 01:30:03.945423	2023-06-26 01:30:03.945423
16	14	4	2023-06-26 01:35:30.283647	2023-06-26 01:35:30.283647
\.


                                                                                                                                                                            3522.dat                                                                                            0000600 0004000 0002000 00000005126 14447262501 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	projek manajer	---\n:role:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:user:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:47:51.842016	2023-06-29 01:43:12.529951
4	user	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:50:21.335092	2023-06-29 01:41:57.516477
7	manajer it	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-17 00:27:15.049665	2023-06-29 01:42:42.790931
3	kepala divisi	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:49:11.793967	2023-06-29 01:42:55.773734
5	teknisi	---\n:role:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:user:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: false\n	Role	2023-06-15 02:44:53.585416	2023-06-29 01:51:38.157089
6	admin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 05:00:53.672825	2023-06-29 01:52:02.822691
1	superadmin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: false\n:admin:\n  :manage: false\n	Role	2023-06-12 03:56:11.291227	2023-06-29 08:44:41.070004
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                          3524.dat                                                                                            0000600 0004000 0002000 00000001440 14447262501 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20201108145313
20201114124546
20201114132153
20201114132755
20201208030353
20201208035432
20230321164317
20230321164523
20230321164749
20230321164823
20230321165158
20230321165238
20230321165514
20230321165805
20230323225654
20230325074155
20230326024813
20230326031248
20230326032107
20230326032759
20230326032929
20230326033113
20230612040725
20230612043732
20230612043836
20230612043900
20230614032619
20230614032750
20230614032941
20230614033228
20230614034614
20230614040348
20230615010051
20230615020953
20230615034612
20230615055355
20230616111548
20230616111921
20230616150926
20230616152622
20230616152704
20230617004756
20230617164748
20230619044157
20230619070713
20230619070744
20230619072334
20230619075339
20230619150155
20230621041144
20230622021512
20230622103438
20230624132718
\.


                                                                                                                                                                                                                                3525.dat                                                                                            0000600 0004000 0002000 00000000300 14447262501 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	8	24	t	2023-06-15 03:20:09.939512	2023-06-15 03:20:09.939512
5	9	24	t	2023-06-15 03:21:26.71204	2023-06-15 03:21:26.71204
6	11	24	t	2023-06-15 03:21:42.73797	2023-06-16 10:43:13.811795
\.


                                                                                                                                                                                                                                                                                                                                3527.dat                                                                                            0000600 0004000 0002000 00000001574 14447262501 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22	8	Konfigurasi Printer	2023-06-15 03:19:37.898767	2023-06-24 16:33:01.495861	low
21	9	Konfigurasi Desktop	2023-06-15 03:19:28.937122	2023-06-24 16:33:15.433401	none
20	9	Konfigurasi Gadget	2023-06-15 03:19:12.33967	2023-06-24 16:33:20.317899	none
19	9	Installasi & Reparasi PABX	2023-06-15 03:18:56.518457	2023-06-24 16:33:34.223194	low
18	9	Konfigurasi Jaringan LAN	2023-06-15 03:18:30.318314	2023-06-24 16:33:42.772966	low
17	8	Pembuatan Aplikasi Baru	2023-06-15 03:18:06.097485	2023-06-24 16:33:49.587657	low
16	8	Konfigurasi Aplikasi Engineering	2023-06-15 03:17:38.163613	2023-06-24 16:33:57.527806	medium
15	8	Konfigurasi Aplikasi Browser	2023-06-15 03:17:17.83664	2023-06-24 16:34:04.112571	low
14	8	Konfigurasi Sistem Operasi	2023-06-15 03:17:02.877044	2023-06-24 16:34:11.328183	none
13	8	Konfigurasi Aplikasi Office	2023-06-15 03:16:38.780508	2023-06-24 16:34:27.727678	none
\.


                                                                                                                                    3529.dat                                                                                            0000600 0004000 0002000 00000000005 14447262501 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3531.dat                                                                                            0000600 0004000 0002000 00000000214 14447262501 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	8	22	1	user.komersial	sdfsdfsdf	2023-06-29 10:58:56.341369	2023-06-29 10:58:56.341369	5	created	\N	202306987	pm.komersial	\N	\N	\N	f
\.


                                                                                                                                                                                                                                                                                                                                                                                    3533.dat                                                                                            0000600 0004000 0002000 00000004466 14447262501 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	superadmin@gmail.com	$2a$12$M9UwhD0hTpRpSl1PCyhv8.QM8PXovqvKGepvSOnAwijNN7m9RZqH.	\N	\N	\N	2023-06-12 03:50:56.423104	2023-06-12 03:56:37.898254	Superadmin	superadmin	t	\N
3	riki@gmailc.om	$2a$12$zzKJuVPQsTbsuPtTehMwJ.viRsfFay5MRuUo7azQXE3RHKeRc93Qu	\N	\N	\N	2023-06-15 02:45:38.070129	2023-06-15 02:45:38.070129	riki	riki	t	\N
4	doddy@mail.com	$2a$12$9QxihGo0SjlTGoGKDkCjPO/6lfCmcpsQzjd.CFvcVB7EjuxQ3BdPW	\N	\N	\N	2023-06-15 04:15:33.784575	2023-06-15 04:15:33.784575	Doddy	doddy	t	\N
2	sdm@email.com	$2a$12$TL4cB/1FIQ47TPx48OvltOp/NwZMuJ9kzRFmHcSGU4H8AHumswIUq	\N	\N	\N	2023-06-14 08:54:37.998534	2023-06-15 06:24:13.433635	User SDM	user.sdm	t	\N
6	komersial@email.com	$2a$12$Cw4YDbHBs9MNWP4riGgI1./y/zMfWv5upQo5nwVjub0zuFz9wIArS	\N	\N	\N	2023-06-15 06:31:48.075801	2023-06-15 06:31:48.075801	User Komersial	user.komersial	t	\N
7	arief@email.com	$2a$12$apjxF7aa/w.dcVKhz4F2CeXdSRaT21zNHsGuTC9JMA3ZgJyIyLwn2	\N	\N	\N	2023-06-15 07:15:38.362767	2023-06-15 07:15:38.362767	Arief	arief	t	\N
8	agung@email.com	$2a$12$npHBHqWe1wPvUwOsce1by.HRvjYad4dAUgXvgmXXErGR6hrtRwRne	\N	\N	\N	2023-06-16 14:42:21.107307	2023-06-16 14:42:21.107307	agung	agung	t	\N
5	admin.it@mail.com	$2a$12$4w4e85cf0t7BK5/QjYNBXuTVVA6xRwzjUYvYbX4GddnN/whHpGSIy	\N	\N	\N	2023-06-15 05:01:36.487802	2023-06-16 16:46:08.16215	Admin IT	admin.it	t	\N
9	adit@email.com	$2a$12$cwGyOKDd.uKfv0Z89lkyy.JxvbnG6.ixzwGhcvQYNh.b52nFXBRnW	\N	\N	\N	2023-06-17 00:27:54.928883	2023-06-17 00:27:54.928883	Adit	adit	t	\N
10	yaqub@email.com	$2a$12$6SxPb3z7mJTir8FObcH3t.vKuH69lN//KEU.uhY.wrHMdLKC5bjT6	\N	\N	\N	2023-06-24 13:23:31.097058	2023-06-24 13:23:31.097058	yaqub	yaqub	t	\N
11	rifki@email.com	$2a$12$iRVLWoo6Q4CGJL7R6K/XC.LW1dWMY4jPXtraQaDwpgW2wRogfMsPy	\N	\N	\N	2023-06-24 13:23:55.532037	2023-06-24 13:23:55.532037	rifki	rifki	t	\N
12	pm.komersial@email.com	$2a$12$Ukw1U9huqLdoEFtWcPWlfuTZ7QfnKYO0V51PDvuhfSD7jE/LaaX56	\N	\N	\N	2023-06-24 16:38:19.214902	2023-06-24 16:38:19.214902	pm.komersial	pm.komersial	t	\N
13	pm.engineering@email.com	$2a$12$NlaKsDqg/nbfsY0xlHztSumNY3YAWEYE9lo9qqxhuqll77VTZVHpy	\N	\N	\N	2023-06-26 01:30:03.926707	2023-06-26 01:30:03.926707	pm.engineering	pm.engineering	t	\N
14	user.engineering@email.com	$2a$12$2CMe1FyxqylhtigjwugToemQrN2LOKPbbUlnACilgaUK4CK05Kpsu	\N	\N	\N	2023-06-26 01:35:30.274507	2023-06-26 01:35:30.274507	user.engineering	user.engineering	t	\N
\.


                                                                                                                                                                                                          3535.dat                                                                                            0000600 0004000 0002000 00000000426 14447262501 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Komersial	2023-06-12 06:56:33.070862	2023-06-12 06:56:33.070862
2	Divisi SDM & Umum	2023-06-15 00:57:06.963017	2023-06-15 00:57:06.963017
3	Engineering	2023-06-16 16:18:30.816658	2023-06-16 16:18:30.816658
4	Keuangan	2023-06-24 08:06:31.338437	2023-06-24 08:06:31.338437
\.


                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000123225 14447262501 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Debian 14.8-1.pgdg110+1)
-- Dumped by pg_dump version 14.8 (Debian 14.8-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE helpdesk_sena;
--
-- Name: helpdesk_sena; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE helpdesk_sena WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE helpdesk_sena OWNER TO postgres;

\connect helpdesk_sena

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: approvals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.approvals (
    id bigint NOT NULL,
    issued_by character varying,
    approve_level character varying,
    date timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ticket_id bigint,
    description character varying
);


ALTER TABLE public.approvals OWNER TO postgres;

--
-- Name: approvals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.approvals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.approvals_id_seq OWNER TO postgres;

--
-- Name: approvals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.approvals_id_seq OWNED BY public.approvals.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.areas OWNER TO postgres;

--
-- Name: areas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.areas_id_seq OWNER TO postgres;

--
-- Name: areas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    nama_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    id_pegawai character varying,
    nama character varying,
    tempat_lahir character varying,
    tanggal_lahir date,
    alamat character varying,
    id_identitas character varying,
    nomor_telepon character varying,
    email character varying,
    jabatan character varying,
    work_unit_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: inventories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventories (
    id bigint NOT NULL,
    kode character varying,
    item_id bigint,
    merek character varying,
    tahun_perolehan date,
    harga_perolehan integer,
    nilai_residu integer,
    masa_guna date,
    lama_pakai character varying,
    kondisi character varying,
    lokasi character varying,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.inventories OWNER TO postgres;

--
-- Name: inventories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventories_id_seq OWNER TO postgres;

--
-- Name: inventories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventories_id_seq OWNED BY public.inventories.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    nama_item character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    id bigint NOT NULL,
    user_id bigint,
    deskripsi character varying,
    jumlah integer,
    from_date date,
    to_date date,
    penanggung_jawab character varying,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    inventory_id bigint
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- Name: loans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loans_id_seq OWNER TO postgres;

--
-- Name: loans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loans_id_seq OWNED BY public.loans.id;


--
-- Name: positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.positions (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    work_unit_id bigint,
    punya_pm boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.positions OWNER TO postgres;

--
-- Name: positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.positions_id_seq OWNER TO postgres;

--
-- Name: positions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.positions_id_seq OWNED BY public.positions.id;


--
-- Name: role_assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_assignments (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.role_assignments OWNER TO postgres;

--
-- Name: role_assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_assignments_id_seq OWNER TO postgres;

--
-- Name: role_assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_assignments_id_seq OWNED BY public.role_assignments.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying NOT NULL,
    permissions text,
    type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: slas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slas (
    id bigint NOT NULL,
    category_id bigint,
    period integer,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.slas OWNER TO postgres;

--
-- Name: slas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.slas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slas_id_seq OWNER TO postgres;

--
-- Name: slas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.slas_id_seq OWNED BY public.slas.id;


--
-- Name: sub_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    category_id bigint,
    nama_sub_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approval_berjenjang character varying
);


ALTER TABLE public.sub_categories OWNER TO postgres;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_categories_id_seq OWNER TO postgres;

--
-- Name: sub_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;


--
-- Name: ticket_chats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticket_chats (
    id bigint NOT NULL,
    sender character varying,
    receiver character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ticket_chats OWNER TO postgres;

--
-- Name: ticket_chats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticket_chats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_chats_id_seq OWNER TO postgres;

--
-- Name: ticket_chats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticket_chats_id_seq OWNED BY public.ticket_chats.id;


--
-- Name: tickets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tickets (
    id bigint NOT NULL,
    category_id bigint,
    sub_category_id bigint,
    work_unit_id bigint,
    issued_by character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    area_id bigint,
    status character varying,
    assigned_by character varying,
    no_ticket character varying,
    approval_by character varying,
    created_respon timestamp without time zone,
    inprogress_respon timestamp without time zone,
    closed_respon timestamp without time zone,
    pause_respon boolean DEFAULT false
);


ALTER TABLE public.tickets OWNER TO postgres;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO postgres;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    username character varying,
    state boolean DEFAULT true,
    user_type character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: work_units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.work_units (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.work_units OWNER TO postgres;

--
-- Name: work_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.work_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_units_id_seq OWNER TO postgres;

--
-- Name: work_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.work_units_id_seq OWNED BY public.work_units.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: approvals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.approvals ALTER COLUMN id SET DEFAULT nextval('public.approvals_id_seq'::regclass);


--
-- Name: areas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: inventories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories ALTER COLUMN id SET DEFAULT nextval('public.inventories_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: loans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans ALTER COLUMN id SET DEFAULT nextval('public.loans_id_seq'::regclass);


--
-- Name: positions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions ALTER COLUMN id SET DEFAULT nextval('public.positions_id_seq'::regclass);


--
-- Name: role_assignments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_assignments ALTER COLUMN id SET DEFAULT nextval('public.role_assignments_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: slas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slas ALTER COLUMN id SET DEFAULT nextval('public.slas_id_seq'::regclass);


--
-- Name: sub_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);


--
-- Name: ticket_chats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_chats ALTER COLUMN id SET DEFAULT nextval('public.ticket_chats_id_seq'::regclass);


--
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: work_units id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_units ALTER COLUMN id SET DEFAULT nextval('public.work_units_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.
COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM '$$PATH$$/3501.dat';

--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.
COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM '$$PATH$$/3503.dat';

--
-- Data for Name: approvals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM stdin;
\.
COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM '$$PATH$$/3505.dat';

--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
\.
COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM '$$PATH$$/3507.dat';

--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas (id, nama, created_at, updated_at) FROM stdin;
\.
COPY public.areas (id, nama, created_at, updated_at) FROM '$$PATH$$/3508.dat';

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, nama_kategori, created_at, updated_at) FROM stdin;
\.
COPY public.categories (id, nama_kategori, created_at, updated_at) FROM '$$PATH$$/3510.dat';

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM stdin;
\.
COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM '$$PATH$$/3512.dat';

--
-- Data for Name: inventories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM stdin;
\.
COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM '$$PATH$$/3514.dat';

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, nama_item, created_at, updated_at) FROM stdin;
\.
COPY public.items (id, nama_item, created_at, updated_at) FROM '$$PATH$$/3516.dat';

--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM stdin;
\.
COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM '$$PATH$$/3518.dat';

--
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM stdin;
\.
COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM '$$PATH$$/3538.dat';

--
-- Data for Name: role_assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM stdin;
\.
COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM '$$PATH$$/3520.dat';

--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM stdin;
\.
COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM '$$PATH$$/3522.dat';

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
\.
COPY public.schema_migrations (version) FROM '$$PATH$$/3524.dat';

--
-- Data for Name: slas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM stdin;
\.
COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM '$$PATH$$/3525.dat';

--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang) FROM stdin;
\.
COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang) FROM '$$PATH$$/3527.dat';

--
-- Data for Name: ticket_chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM stdin;
\.
COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM '$$PATH$$/3529.dat';

--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon) FROM stdin;
\.
COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon) FROM '$$PATH$$/3531.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type) FROM stdin;
\.
COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type) FROM '$$PATH$$/3533.dat';

--
-- Data for Name: work_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_units (id, nama, created_at, updated_at) FROM stdin;
\.
COPY public.work_units (id, nama, created_at, updated_at) FROM '$$PATH$$/3535.dat';

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 17, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 18, true);


--
-- Name: approvals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.approvals_id_seq', 78, true);


--
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_id_seq', 29, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 11, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 1, false);


--
-- Name: inventories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventories_id_seq', 2, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 2, true);


--
-- Name: loans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loans_id_seq', 1, false);


--
-- Name: positions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.positions_id_seq', 6, true);


--
-- Name: role_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_assignments_id_seq', 16, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


--
-- Name: slas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slas_id_seq', 6, true);


--
-- Name: sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sub_categories_id_seq', 22, true);


--
-- Name: ticket_chats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tickets_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: work_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_units_id_seq', 4, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: approvals approvals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT approvals_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: inventories inventories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);


--
-- Name: positions positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id);


--
-- Name: role_assignments role_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT role_assignments_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: slas slas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slas
    ADD CONSTRAINT slas_pkey PRIMARY KEY (id);


--
-- Name: sub_categories sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);


--
-- Name: ticket_chats ticket_chats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_chats
    ADD CONSTRAINT ticket_chats_pkey PRIMARY KEY (id);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: work_units work_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.work_units
    ADD CONSTRAINT work_units_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_approvals_on_ticket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_approvals_on_ticket_id ON public.approvals USING btree (ticket_id);


--
-- Name: index_employees_on_work_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employees_on_work_unit_id ON public.employees USING btree (work_unit_id);


--
-- Name: index_inventories_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventories_on_item_id ON public.inventories USING btree (item_id);


--
-- Name: index_inventories_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inventories_on_user_id ON public.inventories USING btree (user_id);


--
-- Name: index_loans_on_inventory_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_loans_on_inventory_id ON public.loans USING btree (inventory_id);


--
-- Name: index_loans_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_loans_on_user_id ON public.loans USING btree (user_id);


--
-- Name: index_positions_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_positions_on_role_id ON public.positions USING btree (role_id);


--
-- Name: index_positions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_positions_on_user_id ON public.positions USING btree (user_id);


--
-- Name: index_positions_on_work_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_positions_on_work_unit_id ON public.positions USING btree (work_unit_id);


--
-- Name: index_role_assignments_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_role_assignments_on_role_id ON public.role_assignments USING btree (role_id);


--
-- Name: index_role_assignments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_role_assignments_on_user_id ON public.role_assignments USING btree (user_id);


--
-- Name: index_slas_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_slas_on_category_id ON public.slas USING btree (category_id);


--
-- Name: index_sub_categories_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_sub_categories_on_category_id ON public.sub_categories USING btree (category_id);


--
-- Name: index_tickets_on_area_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tickets_on_area_id ON public.tickets USING btree (area_id);


--
-- Name: index_tickets_on_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tickets_on_category_id ON public.tickets USING btree (category_id);


--
-- Name: index_tickets_on_sub_category_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tickets_on_sub_category_id ON public.tickets USING btree (sub_category_id);


--
-- Name: index_tickets_on_work_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tickets_on_work_unit_id ON public.tickets USING btree (work_unit_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: tickets fk_rails_0478bbb7f9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0478bbb7f9 FOREIGN KEY (sub_category_id) REFERENCES public.sub_categories(id);


--
-- Name: tickets fk_rails_0ae0f75f5a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0ae0f75f5a FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);


--
-- Name: tickets fk_rails_1f6d1af6fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_1f6d1af6fa FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: positions fk_rails_22abea576e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_22abea576e FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);


--
-- Name: loans fk_rails_35e3b20ad5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_35e3b20ad5 FOREIGN KEY (inventory_id) REFERENCES public.inventories(id);


--
-- Name: approvals fk_rails_4480bd2f47; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT fk_rails_4480bd2f47 FOREIGN KEY (ticket_id) REFERENCES public.tickets(id);


--
-- Name: positions fk_rails_4e4581e38b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_4e4581e38b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: positions fk_rails_60d189a78f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_60d189a78f FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: inventories fk_rails_6642cbdd87; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_6642cbdd87 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: employees fk_rails_886248bb6d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_886248bb6d FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);


--
-- Name: role_assignments fk_rails_8ddd873ee0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_8ddd873ee0 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: sub_categories fk_rails_8e75c2ee78; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT fk_rails_8e75c2ee78 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: tickets fk_rails_98bb66241d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_98bb66241d FOREIGN KEY (area_id) REFERENCES public.areas(id);


--
-- Name: slas fk_rails_a6ccf586eb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slas
    ADD CONSTRAINT fk_rails_a6ccf586eb FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: loans fk_rails_c15c911198; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_c15c911198 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: role_assignments fk_rails_e4bfc1cd2c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_e4bfc1cd2c FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: inventories fk_rails_fcf6633a1e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_fcf6633a1e FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           