toc.dat                                                                                             0000600 0004000 0002000 00000152333 14451030775 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )    3                {            helpdesk_sena    14.8 (Debian 14.8-1.pgdg110+1)    14.8 (Debian 14.8-1.pgdg110+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17392    helpdesk_sena    DATABASE     a   CREATE DATABASE helpdesk_sena WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE helpdesk_sena;
                postgres    false         �           0    0    helpdesk_sena    DATABASE PROPERTIES     ?   ALTER DATABASE helpdesk_sena SET "TimeZone" TO 'Asia/Jakarta';
                     postgres    false         �            1259    17393    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
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
          public          postgres    false    234         �            1259    17475    sub_categories    TABLE     <  CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    category_id bigint,
    nama_sub_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approval_berjenjang character varying,
    template_ticket character varying
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
   TABLE DATA           �   COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM stdin;
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
          public          postgres    false    212         �           0    0    approvals_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.approvals_id_seq', 292, true);
          public          postgres    false    214         �           0    0    areas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.areas_id_seq', 29, true);
          public          postgres    false    217         �           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 12, true);
          public          postgres    false    219         �           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    221         �           0    0    inventories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventories_id_seq', 2, true);
          public          postgres    false    223         �           0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 2, true);
          public          postgres    false    225         �           0    0    loans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.loans_id_seq', 1, false);
          public          postgres    false    227         �           0    0    positions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.positions_id_seq', 6, true);
          public          postgres    false    245         �           0    0    role_assignments_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.role_assignments_id_seq', 16, true);
          public          postgres    false    229         �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
          public          postgres    false    231         �           0    0    slas_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.slas_id_seq', 6, true);
          public          postgres    false    234         �           0    0    sub_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_categories_id_seq', 24, true);
          public          postgres    false    236         �           0    0    ticket_chats_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);
          public          postgres    false    238         �           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 93, true);
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
       public          postgres    false    222    3306    224                                                                                                                                                                                                                                                                                                             3501.dat                                                                                            0000600 0004000 0002000 00000000005 14451030775 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3503.dat                                                                                            0000600 0004000 0002000 00000000005 14451030775 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3505.dat                                                                                            0000600 0004000 0002000 00000025674 14451030775 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        152	user.komersial	created	\N	2023-06-29 14:20:11.443684	2023-06-29 14:20:11.443684	27	create ticket
153	pm.komersial	approval1	\N	2023-06-29 15:02:58.522356	2023-06-29 15:02:58.522356	27	tiket disetujui
154	yaqub	approval2	\N	2023-06-29 15:03:36.806306	2023-06-29 15:03:36.806306	27	tiket disetujui
155	adit	open	\N	2023-06-29 15:04:07.152057	2023-06-29 15:04:07.152057	27	tiket disetujui
156	riki	inprogress	\N	2023-06-29 15:08:50.951098	2023-06-29 15:08:50.951098	27	tiket sedang diproses
157	user.sdm	created	\N	2023-06-29 15:11:58.403741	2023-06-29 15:11:58.403741	28	create ticket
158	doddy	approval1	\N	2023-06-29 15:12:20.71152	2023-06-29 15:12:20.71152	28	tiket disetujui
159	adit	open	\N	2023-06-29 15:13:06.398277	2023-06-29 15:13:06.398277	28	tiket disetujui
160	riki	inprogress	\N	2023-06-30 04:47:53.688017	2023-06-30 04:47:53.688017	28	tiket sedang diproses
166	user.komersial	created	\N	2023-06-30 12:49:26.963849	2023-06-30 12:49:26.963849	31	create ticket
167	yaqub	approval3	\N	2023-06-30 12:49:41.626724	2023-06-30 12:49:41.626724	31	tiket disetujui
168	adit	approval2	\N	2023-06-30 12:49:58.026796	2023-06-30 12:49:58.026796	31	tiket disetujui
169	user.komersial	created	\N	2023-06-30 12:50:36.119403	2023-06-30 12:50:36.119403	32	create ticket
170	yaqub	approval1	\N	2023-06-30 12:50:49.380625	2023-06-30 12:50:49.380625	32	tiket disetujui
171	agung	approval3	\N	2023-06-30 12:51:02.307291	2023-06-30 12:51:02.307291	32	tiket disetujui
172	adit	approval3	\N	2023-06-30 12:51:17.003667	2023-06-30 12:51:17.003667	32	tiket disetujui
181	user.komersial	created	\N	2023-06-30 13:48:54.055875	2023-06-30 13:48:54.055875	36	create ticket
182	pm.komersial	approval1	\N	2023-06-30 13:49:13.937722	2023-06-30 13:49:13.937722	36	tiket disetujui
183	yaqub	approval3	\N	2023-06-30 13:49:33.204956	2023-06-30 13:49:33.204956	36	tiket disetujui
184	adit	approval3	\N	2023-06-30 13:49:52.662021	2023-06-30 13:49:52.662021	36	tiket disetujui
185	user.komersial	created	\N	2023-06-30 13:50:58.000917	2023-06-30 13:50:58.000917	37	create ticket
186	pm.komersial	approval1	\N	2023-06-30 13:51:15.99394	2023-06-30 13:51:15.99394	37	tiket disetujui
187	yaqub	approval2	\N	2023-06-30 13:51:29.332084	2023-06-30 13:51:29.332084	37	tiket disetujui
188	agung	approval3	\N	2023-06-30 13:51:43.589572	2023-06-30 13:51:43.589572	37	tiket disetujui
189	adit	approval3	\N	2023-06-30 13:51:59.600458	2023-06-30 13:51:59.600458	37	tiket disetujui
190	user.sdm	created	\N	2023-06-30 13:52:34.669928	2023-06-30 13:52:34.669928	38	create ticket
191	doddy	approval3	\N	2023-06-30 13:53:14.758136	2023-06-30 13:53:14.758136	38	tiket disetujui
192	adit	approval3	\N	2023-06-30 13:53:33.630761	2023-06-30 13:53:33.630761	38	tiket disetujui
193	user.sdm	created	\N	2023-06-30 13:55:00.710246	2023-06-30 13:55:00.710246	39	create ticket
194	doddy	approval2	\N	2023-06-30 13:55:14.602431	2023-06-30 13:55:14.602431	39	tiket disetujui
195	agung	approval3	\N	2023-06-30 13:55:39.38269	2023-06-30 13:55:39.38269	39	tiket disetujui
196	adit	approval3	\N	2023-06-30 13:55:56.9001	2023-06-30 13:55:56.9001	39	tiket disetujui
197	doddy	approval2	\N	2023-06-30 13:58:30.718359	2023-06-30 13:58:30.718359	40	create ticket
198	agung	rejected	\N	2023-06-30 14:02:06.14311	2023-06-30 14:02:06.14311	40	mohon maaf pak doddy untuk lisencenya sudah habis stocknya. mungkin bisa ajukan kembali
199	user.komersial	created	\N	2023-06-30 14:12:01.357949	2023-06-30 14:12:01.357949	41	create ticket
200	yaqub	approval2	\N	2023-06-30 14:12:23.353491	2023-06-30 14:12:23.353491	41	tiket disetujui
201	agung	rejected	\N	2023-06-30 14:14:47.496056	2023-06-30 14:14:47.496056	41	mohon maaf untuk permintaan lisence engineering belum dianggarkan. bila urgent silahkan ajukan nodin
202	user.sdm	created	\N	2023-06-30 15:39:30.231578	2023-06-30 15:39:30.231578	42	create ticket
203	doddy	approval3	\N	2023-06-30 16:34:02.765197	2023-06-30 16:34:02.765197	42	tiket disetujui
204	adit	rejected	\N	2023-06-30 16:34:42.088571	2023-06-30 16:34:42.088571	42	anggarannya blum ada
205	riki	inprogress	\N	2023-06-30 16:38:56.031084	2023-06-30 16:38:56.031084	36	tiket sedang diproses
206	riki	open	\N	2023-06-30 16:49:10.438243	2023-06-30 16:49:10.438243	36	harus menunggu astragraphia, estimasi 3 hari
210	user.sdm	created	\N	2023-06-30 18:23:33.793867	2023-06-30 18:23:33.793867	46	create ticket
219	doddy	approval3	\N	2023-07-01 08:26:45.934452	2023-07-01 08:26:45.934452	46	tiket disetujui
220	user.komersial	created	\N	2023-07-01 10:33:16.674383	2023-07-01 10:33:16.674383	55	create ticket
221	pm.komersial	approval1	\N	2023-07-01 10:33:39.98514	2023-07-01 10:33:39.98514	55	tiket disetujui
222	yaqub	approval3	\N	2023-07-01 10:34:07.108465	2023-07-01 10:34:07.108465	55	tiket disetujui
223	adit	approval3	\N	2023-07-01 10:34:34.525021	2023-07-01 10:34:34.525021	55	tiket disetujui
224	user.komersial	created	\N	2023-07-01 10:35:13.254301	2023-07-01 10:35:13.254301	56	create ticket
225	pm.komersial	approval1	\N	2023-07-01 10:35:30.007502	2023-07-01 10:35:30.007502	56	tiket disetujui
226	yaqub	approval2	\N	2023-07-01 10:35:57.886036	2023-07-01 10:35:57.886036	56	tiket disetujui
227	agung	approval3	\N	2023-07-01 10:36:24.485686	2023-07-01 10:36:24.485686	56	tiket disetujui
228	adit	approval3	\N	2023-07-01 10:36:42.539566	2023-07-01 10:36:42.539566	56	tiket disetujui
229	user.sdm	created	\N	2023-07-01 10:37:37.012605	2023-07-01 10:37:37.012605	57	create ticket
230	doddy	approval3	\N	2023-07-01 10:37:52.670209	2023-07-01 10:37:52.670209	57	tiket disetujui
231	adit	approval3	\N	2023-07-01 10:38:15.107504	2023-07-01 10:38:15.107504	57	tiket disetujui
232	user.sdm	created	\N	2023-07-01 10:38:56.241988	2023-07-01 10:38:56.241988	58	create ticket
233	doddy	approval2	\N	2023-07-01 10:39:11.278279	2023-07-01 10:39:11.278279	58	tiket disetujui
234	agung	approval3	\N	2023-07-01 10:39:36.638244	2023-07-01 10:39:36.638244	58	tiket disetujui
235	adit	approval3	\N	2023-07-01 10:41:13.85523	2023-07-01 10:41:13.85523	58	tiket disetujui
237	yaqub	approval3	\N	2023-07-01 11:23:24.406919	2023-07-01 11:23:24.406919	60	create ticket
238	adit	approval3	\N	2023-07-01 11:23:57.678223	2023-07-01 11:23:57.678223	60	tiket disetujui
239	adit	rejected	\N	2023-07-01 11:24:22.911921	2023-07-01 11:24:22.911921	46	mohon untuk disesuaikan deskripsi permintaannya, terimakasih
240	user.komersial	created	\N	2023-07-01 11:25:10.069759	2023-07-01 11:25:10.069759	61	create ticket
241	riki	closed	\N	2023-07-02 04:23:26.301691	2023-07-02 04:23:26.301691	27	tiket sudah selesai
242	riki	closed	\N	2023-07-02 04:23:34.176692	2023-07-02 04:23:34.176692	28	tiket sudah selesai
243	yaqub	rejected	\N	2023-07-02 06:34:25.872874	2023-07-02 06:34:25.872874	61	maap pak masih dalam pengajuan ke direksi, jadi belum bisa diproses
244	riki	inprogress	\N	2023-07-02 06:35:20.8311	2023-07-02 06:35:20.8311	60	tiket sedang diproses
245	riki	open	\N	2023-07-02 06:40:57.258021	2023-07-02 06:40:57.258021	60	untuk prosesnya terkendala di ASTRAGRAPHIA kemungkinan akan diproses senin besok
246	agung	approval3	\N	2023-07-03 00:46:09.740447	2023-07-03 00:46:09.740447	62	create ticket
247	adit	open	\N	2023-07-03 02:00:56.225184	2023-07-03 02:00:56.225184	62	tiket disetujui
248	user.komersial	created	\N	2023-07-03 02:28:41.337692	2023-07-03 02:28:41.337692	63	create ticket
249	pm.komersial	approval1	\N	2023-07-03 02:28:58.896182	2023-07-03 02:28:58.896182	63	tiket disetujui
250	yaqub	approval3	\N	2023-07-03 02:29:20.938464	2023-07-03 02:29:20.938464	63	tiket disetujui
251	adit	open	\N	2023-07-03 02:29:43.522404	2023-07-03 02:29:43.522404	63	tiket disetujui
252	user.komersial	created	\N	2023-07-03 02:31:35.198533	2023-07-03 02:31:35.198533	64	create ticket
253	pm.komersial	approval1	\N	2023-07-03 02:32:05.608301	2023-07-03 02:32:05.608301	64	tiket disetujui
254	yaqub	approval2	\N	2023-07-03 02:32:22.375109	2023-07-03 02:32:22.375109	64	tiket disetujui
255	agung	approval3	\N	2023-07-03 02:32:46.429791	2023-07-03 02:32:46.429791	64	tiket disetujui
256	adit	open	\N	2023-07-03 02:33:07.585892	2023-07-03 02:33:07.585892	64	tiket disetujui
257	user.komersial	open	\N	2023-07-03 02:34:15.117885	2023-07-03 02:34:15.117885	65	create ticket
258	user.komersial	created	\N	2023-07-03 02:35:02.689763	2023-07-03 02:35:02.689763	66	create ticket
259	yaqub	approval3	\N	2023-07-03 02:35:19.574305	2023-07-03 02:35:19.574305	66	tiket disetujui
260	adit	open	\N	2023-07-03 02:35:40.247767	2023-07-03 02:35:40.247767	66	tiket disetujui
261	user.komersial	created	\N	2023-07-03 02:56:22.770753	2023-07-03 02:56:22.770753	67	create ticket
262	yaqub	approval2	\N	2023-07-03 02:57:49.847775	2023-07-03 02:57:49.847775	67	tiket disetujui
263	agung	approval3	\N	2023-07-03 02:58:12.050808	2023-07-03 02:58:12.050808	67	tiket disetujui
264	adit	open	\N	2023-07-03 02:58:34.113435	2023-07-03 02:58:34.113435	67	tiket disetujui
265	user.sdm	created	\N	2023-07-03 03:16:11.812442	2023-07-03 03:16:11.812442	68	create ticket
266	doddy	approval3	\N	2023-07-03 03:16:31.257222	2023-07-03 03:16:31.257222	68	tiket disetujui
267	adit	open	\N	2023-07-03 03:16:51.80867	2023-07-03 03:16:51.80867	68	tiket disetujui
268	user.sdm	created	\N	2023-07-03 03:17:56.077403	2023-07-03 03:17:56.077403	69	create ticket
269	doddy	approval2	\N	2023-07-03 03:18:16.779376	2023-07-03 03:18:16.779376	69	tiket disetujui
270	agung	approval3	\N	2023-07-03 03:18:34.056414	2023-07-03 03:18:34.056414	69	tiket disetujui
271	adit	open	\N	2023-07-03 03:18:52.891426	2023-07-03 03:18:52.891426	69	tiket disetujui
272	user.sdm	open	\N	2023-07-03 03:20:06.925163	2023-07-03 03:20:06.925163	70	create ticket
273	doddy	approval3	\N	2023-07-03 03:20:43.437381	2023-07-03 03:20:43.437381	71	create ticket
274	adit	open	\N	2023-07-03 03:21:06.446257	2023-07-03 03:21:06.446257	71	tiket disetujui
275	doddy	approval2	\N	2023-07-03 03:21:37.642513	2023-07-03 03:21:37.642513	72	create ticket
276	agung	approval3	\N	2023-07-03 03:21:52.88001	2023-07-03 03:21:52.88001	72	tiket disetujui
277	adit	open	\N	2023-07-03 03:22:30.903566	2023-07-03 03:22:30.903566	72	tiket disetujui
278	doddy	approval3	\N	2023-07-03 03:23:37.703807	2023-07-03 03:23:37.703807	73	create ticket
279	doddy	open	\N	2023-07-03 03:24:10.671577	2023-07-03 03:24:10.671577	74	create ticket
280	agung	approval3	\N	2023-07-03 03:25:03.639858	2023-07-03 03:25:03.639858	75	create ticket
281	adit	open	\N	2023-07-03 03:25:26.175497	2023-07-03 03:25:26.175497	75	tiket disetujui
282	agung	open	\N	2023-07-03 03:26:23.502467	2023-07-03 03:26:23.502467	76	create ticket
283	riki	inprogress	\N	2023-07-04 01:06:16.604649	2023-07-04 01:06:16.604649	60	tiket diproses kembali
284	user.komersial	created	\N	2023-07-04 06:42:34.79175	2023-07-04 06:42:34.79175	77	create ticket
288	user.komersial	created	\N	2023-07-04 12:48:13.55784	2023-07-04 12:48:13.55784	89	create ticket
289	user.komersial	created	\N	2023-07-04 14:45:17.86392	2023-07-04 14:45:17.86392	90	create ticket
290	user.komersial	created	\N	2023-07-04 14:46:24.178742	2023-07-04 14:46:24.178742	91	create ticket
291	doddy	approval2	\N	2023-07-04 14:47:26.693507	2023-07-04 14:47:26.693507	92	create ticket
292	doddy	approval3	\N	2023-07-04 14:48:08.704593	2023-07-04 14:48:08.704593	93	create ticket
\.


                                                                    3507.dat                                                                                            0000600 0004000 0002000 00000000123 14451030775 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        environment	development	2023-06-12 03:47:38.838361	2023-06-12 03:47:38.838361
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3508.dat                                                                                            0000600 0004000 0002000 00000000311 14451030775 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Medan	2023-06-12 04:27:53.196575	2023-06-15 03:24:33.437799
2	Surabaya	2023-06-12 04:27:20.988036	2023-06-15 03:24:40.289321
5	Kantor Pusat	2023-06-15 10:47:24.595396	2023-06-15 10:47:24.595396
\.


                                                                                                                                                                                                                                                                                                                       3510.dat                                                                                            0000600 0004000 0002000 00000000610 14451030775 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	Layanan Aplikasi	2023-06-15 03:14:07.145211	2023-06-15 03:14:07.145211
9	Layanan Infrastruktur	2023-06-15 03:15:37.703227	2023-06-15 03:15:37.703227
10	Layanan Peminjaman Barang	2023-06-15 03:15:55.072237	2023-06-15 03:15:55.072237
11	Layanan Pengaturan Hak Akses	2023-06-15 03:16:06.72204	2023-06-15 03:16:06.72204
12	Layanan SDM	2023-07-03 03:51:16.263938	2023-07-03 03:51:16.263938
\.


                                                                                                                        3512.dat                                                                                            0000600 0004000 0002000 00000000005 14451030775 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3514.dat                                                                                            0000600 0004000 0002000 00000000422 14451030775 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1111	1	Lenovo	2023-06-13	13000000	10000000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 03:53:22.087578	2023-06-29 11:25:34.450188
2	1111	2	Universal HDMI	2023-06-13	200000	150000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 05:47:40.291028	2023-06-29 11:43:47.85018
\.


                                                                                                                                                                                                                                              3516.dat                                                                                            0000600 0004000 0002000 00000000202 14451030775 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Laptop	2023-06-13 03:52:25.600138	2023-06-13 03:52:25.600138
2	Kabel	2023-06-13 05:46:56.030759	2023-06-13 05:46:56.030759
\.


                                                                                                                                                                                                                                                                                                                                                                                              3518.dat                                                                                            0000600 0004000 0002000 00000000005 14451030775 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3538.dat                                                                                            0000600 0004000 0002000 00000000405 14451030775 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	8	3	3	t	2023-06-24 13:58:02.078294	2023-06-24 13:58:02.078294
2	4	3	2	f	2023-06-24 13:58:58.98847	2023-06-24 13:58:58.98847
3	10	3	1	t	2023-06-24 13:59:14.941185	2023-06-24 13:59:14.941185
4	11	3	4	f	2023-06-24 13:59:26.405844	2023-06-24 13:59:26.405844
\.


                                                                                                                                                                                                                                                           3520.dat                                                                                            0000600 0004000 0002000 00000001524 14451030775 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-06-12 03:56:24.579679	2023-06-12 03:56:24.579679
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


                                                                                                                                                                            3522.dat                                                                                            0000600 0004000 0002000 00000004321 14451030775 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7	manajer it	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-17 00:27:15.049665	2023-06-29 15:01:30.407265
5	teknisi	---\n:role:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:user:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: false\n	Role	2023-06-15 02:44:53.585416	2023-06-29 01:51:38.157089
6	admin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 05:00:53.672825	2023-06-29 01:52:02.822691
1	superadmin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: false\n:admin:\n  :manage: false\n	Role	2023-06-12 03:56:11.291227	2023-06-29 08:44:41.070004
3	kepala divisi	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:49:11.793967	2023-06-29 15:00:51.917714
4	user	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:50:21.335092	2023-06-29 15:01:06.987889
\.


                                                                                                                                                                                                                                                                                                               3524.dat                                                                                            0000600 0004000 0002000 00000001457 14451030775 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20201108145313
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
20230703035419
\.


                                                                                                                                                                                                                 3525.dat                                                                                            0000600 0004000 0002000 00000000276 14451030775 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	9	24	t	2023-06-15 03:21:26.71204	2023-06-15 03:21:26.71204
6	11	24	t	2023-06-15 03:21:42.73797	2023-06-16 10:43:13.811795
4	8	1	t	2023-06-15 03:20:09.939512	2023-06-30 04:47:24.37813
\.


                                                                                                                                                                                                                                                                                                                                  3527.dat                                                                                            0000600 0004000 0002000 00000002262 14451030775 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22	8	Konfigurasi Printer	2023-06-15 03:19:37.898767	2023-06-24 16:33:01.495861	low	\N
21	9	Konfigurasi Desktop	2023-06-15 03:19:28.937122	2023-06-24 16:33:15.433401	none	\N
20	9	Konfigurasi Gadget	2023-06-15 03:19:12.33967	2023-06-24 16:33:20.317899	none	\N
19	9	Installasi & Reparasi PABX	2023-06-15 03:18:56.518457	2023-06-24 16:33:34.223194	low	\N
18	9	Konfigurasi Jaringan LAN	2023-06-15 03:18:30.318314	2023-06-24 16:33:42.772966	low	\N
17	8	Pembuatan Aplikasi Baru	2023-06-15 03:18:06.097485	2023-06-24 16:33:49.587657	low	\N
16	8	Konfigurasi Aplikasi Engineering	2023-06-15 03:17:38.163613	2023-06-24 16:33:57.527806	medium	\N
15	8	Konfigurasi Aplikasi Browser	2023-06-15 03:17:17.83664	2023-06-24 16:34:04.112571	low	\N
14	8	Konfigurasi Sistem Operasi	2023-06-15 03:17:02.877044	2023-06-24 16:34:11.328183	none	\N
13	8	Konfigurasi Aplikasi Office	2023-06-15 03:16:38.780508	2023-06-24 16:34:27.727678	none	\N
24	12	Exit Clearance	2023-07-03 04:24:17.99103	2023-07-03 04:24:17.99103	low	Nama :\nSatuan Kerja :\nJabatan :\n\nAsset yang dipulangkan :\n1. 
23	12	Onboard	2023-07-03 04:04:28.114591	2023-07-03 04:24:56.83136	low	Nama :\nSatuan Kerja :\nJabatan :\n\nAsset yang diperlukan :\n1.
\.


                                                                                                                                                                                                                                                                                                                                              3529.dat                                                                                            0000600 0004000 0002000 00000000005 14451030775 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3531.dat                                                                                            0000600 0004000 0002000 00000011707 14451030775 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        27	8	22	1	user.komersial	tolongg yaaa	2023-06-29 14:20:11.422135	2023-07-02 04:23:26.260291	5	closed	riki	202306262	adit	\N	2023-06-29 15:08:50.967993	2023-07-02 04:23:26.228746	f
28	8	22	2	user.sdm	tolongg yaaa	2023-06-29 15:11:58.370844	2023-07-02 04:23:34.157165	5	closed	riki	202306217	adit	\N	2023-06-30 04:47:53.703035	2023-07-02 04:23:34.135992	f
61	8	16	1	user.komersial	tolong yaa	2023-07-01 11:25:10.051607	2023-07-02 06:34:25.91311	5	rejected	\N	202307965	yaqub	\N	\N	\N	f
62	8	22	3	agung	tolong settingin printer gw yaa	2023-07-03 00:46:09.663739	2023-07-03 02:00:56.259148	5	open	\N	202307631	adit	\N	\N	\N	f
55	8	22	1	user.komersial	test	2023-07-01 10:33:16.598522	2023-07-01 10:34:34.559228	5	open	\N	202307487	adit	\N	\N	\N	f
69	8	16	2	user.sdm	testing	2023-07-03 03:17:56.062691	2023-07-03 03:18:52.92255	5	open	\N	202307432	adit	\N	\N	\N	f
70	8	14	2	user.sdm	testing	2023-07-03 03:20:06.909867	2023-07-03 03:20:06.909867	5	open	\N	202307835	\N	\N	\N	\N	f
63	8	22	1	user.komersial	testing	2023-07-03 02:28:41.319767	2023-07-03 02:29:43.561788	5	open	\N	202307155	adit	\N	\N	\N	f
71	8	22	2	doddy	testing	2023-07-03 03:20:43.425793	2023-07-03 03:21:06.478226	5	open	\N	202307338	adit	\N	\N	\N	f
64	8	16	1	user.komersial	testing	2023-07-03 02:31:35.186849	2023-07-03 02:33:07.619092	5	open	\N	202307707	adit	\N	\N	\N	f
65	8	14	1	user.komersial	testing	2023-07-03 02:34:15.105412	2023-07-03 02:34:15.105412	5	open	\N	202307335	\N	\N	\N	\N	f
56	8	16	1	user.komersial	test	2023-07-01 10:35:13.241572	2023-07-01 10:36:42.572222	5	open	\N	202307158	adit	\N	\N	\N	f
66	8	22	1	user.komersial	testing	2023-07-03 02:35:02.676478	2023-07-03 02:35:40.285214	5	open	\N	202307677	adit	\N	\N	\N	f
72	8	16	2	doddy	testing	2023-07-03 03:21:37.632291	2023-07-03 03:22:30.94022	5	open	\N	202307552	adit	\N	\N	\N	f
73	8	15	2	doddy	testing	2023-07-03 03:23:37.685822	2023-07-03 03:23:37.685822	5	approval3	\N	202307872	adit	\N	\N	\N	f
67	8	16	1	user.komersial	testing	2023-07-03 02:56:22.742505	2023-07-03 02:58:34.165757	5	open	\N	202307431	adit	\N	\N	\N	f
74	8	14	2	doddy	testing	2023-07-03 03:24:10.660504	2023-07-03 03:24:10.660504	5	open	\N	202307276	\N	\N	\N	\N	f
37	8	16	1	user.komersial	testing	2023-06-30 13:50:57.98429	2023-06-30 13:51:59.635596	5	open	\N	202306528	adit	\N	\N	\N	f
68	8	22	2	user.sdm	testing	2023-07-03 03:16:11.796447	2023-07-03 03:16:51.844131	5	open	\N	202307257	adit	\N	\N	\N	f
38	8	22	2	user.sdm	testing	2023-06-30 13:52:34.653717	2023-06-30 13:53:33.666637	5	open	\N	202306769	adit	\N	\N	\N	f
57	8	22	2	user.sdm	testing	2023-07-01 10:37:37.000622	2023-07-01 10:38:15.139836	5	open	\N	202307562	adit	\N	\N	\N	f
39	8	16	2	user.sdm	tolongg	2023-06-30 13:55:00.69131	2023-06-30 13:55:56.931108	5	open	\N	202306840	adit	\N	\N	\N	f
75	8	22	3	agung	tolong cek printer gw yaa	2023-07-03 03:25:03.626268	2023-07-03 03:25:26.209368	5	open	\N	202307890	adit	\N	\N	\N	f
76	8	14	3	agung	testing	2023-07-03 03:26:23.490749	2023-07-03 03:26:23.490749	5	open	\N	202307775	\N	\N	\N	\N	f
40	8	16	2	doddy	tolongg	2023-06-30 13:58:30.697321	2023-06-30 14:02:06.178885	5	rejected	\N	202306631	agung	\N	\N	\N	f
60	8	22	1	yaqub	pak adit mintol settingin printer saya yaaa	2023-07-01 11:23:24.394528	2023-07-04 01:06:16.562239	5	inprogress	riki	202307852	adit	\N	2023-07-02 06:35:20.841589	\N	f
77	12	23	2	user.komersial	Nama : Dani\r\nSatuan Kerja : Komersial\r\nJabatan : Staff\r\n\r\nAsset yang diperlukan :\r\n1. Laptop\r\n2. ID Cart	2023-07-04 06:42:34.734046	2023-07-04 06:42:34.734046	5	created	\N	202307377	doddy	\N	\N	\N	f
41	8	16	1	user.komersial	tolongg yaa	2023-06-30 14:12:01.324915	2023-06-30 14:14:47.533037	5	rejected	\N	202306190	agung	\N	\N	\N	f
31	8	22	1	user.komersial	testing	2023-06-30 12:49:26.945335	2023-06-30 12:49:58.059252	5	open	\N	202306692	adit	\N	\N	\N	f
42	8	15	2	user.sdm	Minta tolongg yaaa	2023-06-30 15:39:30.134784	2023-06-30 16:34:42.129927	5	rejected	\N	202306836	adit	\N	\N	\N	f
32	8	16	1	user.komersial	tolongg	2023-06-30 12:50:36.104954	2023-06-30 12:51:17.047738	5	open	\N	202306716	adit	\N	\N	\N	f
58	8	16	2	user.sdm	tolongg yaaa	2023-07-01 10:38:56.229671	2023-07-01 10:41:13.889692	5	open	\N	202307566	adit	\N	\N	\N	f
36	8	22	1	user.komersial	testing	2023-06-30 13:48:54.034145	2023-06-30 16:49:10.478241	5	open	riki	202306668	adit	\N	2023-06-30 16:38:56.047845	\N	t
89	8	14	1	user.komersial		2023-07-04 12:48:13.521198	2023-07-04 13:06:32.390307	5	open	\N	202307469	\N	\N	\N	\N	f
90	8	22	1	user.komersial	testing	2023-07-04 14:45:17.779806	2023-07-04 14:45:17.779806	3	created	\N	202307947	pm.komersial	\N	\N	\N	f
91	8	16	1	user.komersial	testing	2023-07-04 14:46:24.165591	2023-07-04 14:46:24.165591	5	created	\N	202307208	yaqub	\N	\N	\N	f
92	8	16	2	doddy	testing	2023-07-04 14:47:26.679297	2023-07-04 14:47:26.679297	5	approval2	\N	202307229	agung	\N	\N	\N	f
93	8	22	2	doddy	testing	2023-07-04 14:48:08.690348	2023-07-04 14:48:08.690348	5	approval3	\N	202307352	adit	\N	\N	\N	f
46	8	22	2	user.sdm	sdkfjksldfjsdf	2023-06-30 18:23:33.780964	2023-07-01 11:24:22.953371	5	rejected	\N	202307650	adit	\N	\N	\N	f
\.


                                                         3533.dat                                                                                            0000600 0004000 0002000 00000004466 14451030775 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	superadmin@gmail.com	$2a$12$M9UwhD0hTpRpSl1PCyhv8.QM8PXovqvKGepvSOnAwijNN7m9RZqH.	\N	\N	\N	2023-06-12 03:50:56.423104	2023-06-12 03:56:37.898254	Superadmin	superadmin	t	\N
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


                                                                                                                                                                                                          3535.dat                                                                                            0000600 0004000 0002000 00000000426 14451030775 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Komersial	2023-06-12 06:56:33.070862	2023-06-12 06:56:33.070862
2	Divisi SDM & Umum	2023-06-15 00:57:06.963017	2023-06-15 00:57:06.963017
3	Engineering	2023-06-16 16:18:30.816658	2023-06-16 16:18:30.816658
4	Keuangan	2023-06-24 08:06:31.338437	2023-06-24 08:06:31.338437
\.


                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000124337 14451030775 0015404 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

--
-- Name: helpdesk_sena; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE helpdesk_sena SET "TimeZone" TO 'Asia/Jakarta';


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
    approval_berjenjang character varying,
    template_ticket character varying
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

COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM stdin;
\.
COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM '$$PATH$$/3527.dat';

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

SELECT pg_catalog.setval('public.approvals_id_seq', 292, true);


--
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_id_seq', 29, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 12, true);


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

SELECT pg_catalog.setval('public.sub_categories_id_seq', 24, true);


--
-- Name: ticket_chats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tickets_id_seq', 93, true);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 