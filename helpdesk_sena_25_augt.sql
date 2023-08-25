toc.dat                                                                                             0000600 0004000 0002000 00000162225 14472000421 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            helpdesk_sena    14.8 (Debian 14.8-1.pgdg110+1)    14.8 (Debian 14.8-1.pgdg110+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    26819    helpdesk_sena    DATABASE     a   CREATE DATABASE helpdesk_sena WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE helpdesk_sena;
                postgres    false         �            1259    26820    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    postgres    false         �            1259    26825 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          postgres    false    209         �           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          postgres    false    210         �            1259    26826    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
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
       public         heap    postgres    false         �            1259    26831    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          postgres    false    211         �           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          postgres    false    212         �            1259    26832 	   approvals    TABLE     I  CREATE TABLE public.approvals (
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
       public         heap    postgres    false         �            1259    26837    approvals_id_seq    SEQUENCE     y   CREATE SEQUENCE public.approvals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.approvals_id_seq;
       public          postgres    false    213         �           0    0    approvals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.approvals_id_seq OWNED BY public.approvals.id;
          public          postgres    false    214         �            1259    26838    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false         �            1259    26843    areas    TABLE     �   CREATE TABLE public.areas (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.areas;
       public         heap    postgres    false         �            1259    26848    areas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.areas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.areas_id_seq;
       public          postgres    false    216         �           0    0    areas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.areas_id_seq OWNED BY public.areas.id;
          public          postgres    false    217         �            1259    26849 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    nama_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false         �            1259    26854    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    218         �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    219         �            1259    26855 	   employees    TABLE     �  CREATE TABLE public.employees (
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
       public         heap    postgres    false         �            1259    26860    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    220         �           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    221         �            1259    26861    inventories    TABLE     �  CREATE TABLE public.inventories (
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
       public         heap    postgres    false         �            1259    26866    inventories_id_seq    SEQUENCE     {   CREATE SEQUENCE public.inventories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.inventories_id_seq;
       public          postgres    false    222         �           0    0    inventories_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.inventories_id_seq OWNED BY public.inventories.id;
          public          postgres    false    223         �            1259    26867    items    TABLE     �   CREATE TABLE public.items (
    id bigint NOT NULL,
    nama_item character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.items;
       public         heap    postgres    false         �            1259    26872    items_id_seq    SEQUENCE     u   CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false    224         �           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          postgres    false    225         �            1259    26873    loans    TABLE     d  CREATE TABLE public.loans (
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
       public         heap    postgres    false         �            1259    26878    loans_id_seq    SEQUENCE     u   CREATE SEQUENCE public.loans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.loans_id_seq;
       public          postgres    false    226         �           0    0    loans_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.loans_id_seq OWNED BY public.loans.id;
          public          postgres    false    227         �            1259    26879 	   positions    TABLE     �   CREATE TABLE public.positions (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    work_unit_id bigint,
    punya_pm boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.positions;
       public         heap    postgres    false         �            1259    26882    positions_id_seq    SEQUENCE     y   CREATE SEQUENCE public.positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.positions_id_seq;
       public          postgres    false    228         �           0    0    positions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.positions_id_seq OWNED BY public.positions.id;
          public          postgres    false    229         �            1259    26883    role_assignments    TABLE     �   CREATE TABLE public.role_assignments (
    id bigint NOT NULL,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.role_assignments;
       public         heap    postgres    false         �            1259    26886    role_assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.role_assignments_id_seq;
       public          postgres    false    230         �           0    0    role_assignments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.role_assignments_id_seq OWNED BY public.role_assignments.id;
          public          postgres    false    231         �            1259    26887    roles    TABLE        CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying NOT NULL,
    permissions text,
    type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false         �            1259    26892    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    232         �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    233         �            1259    26893    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false         �            1259    27319    sender_emails    TABLE       CREATE TABLE public.sender_emails (
    id bigint NOT NULL,
    email_to character varying,
    parent_id integer,
    token integer,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.sender_emails;
       public         heap    postgres    false         �            1259    27318    sender_emails_id_seq    SEQUENCE     }   CREATE SEQUENCE public.sender_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sender_emails_id_seq;
       public          postgres    false    250         �           0    0    sender_emails_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sender_emails_id_seq OWNED BY public.sender_emails.id;
          public          postgres    false    249         �            1259    26898    slas    TABLE     �   CREATE TABLE public.slas (
    id bigint NOT NULL,
    category_id bigint,
    period integer,
    status boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.slas;
       public         heap    postgres    false         �            1259    26901    slas_id_seq    SEQUENCE     t   CREATE SEQUENCE public.slas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.slas_id_seq;
       public          postgres    false    235         �           0    0    slas_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.slas_id_seq OWNED BY public.slas.id;
          public          postgres    false    236         �            1259    26902    sub_categories    TABLE     <  CREATE TABLE public.sub_categories (
    id bigint NOT NULL,
    category_id bigint,
    nama_sub_kategori character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    approval_berjenjang character varying,
    template_ticket character varying
);
 "   DROP TABLE public.sub_categories;
       public         heap    postgres    false         �            1259    26907    sub_categories_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sub_categories_id_seq;
       public          postgres    false    237         �           0    0    sub_categories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sub_categories_id_seq OWNED BY public.sub_categories.id;
          public          postgres    false    238         �            1259    26908    ticket_chats    TABLE       CREATE TABLE public.ticket_chats (
    id bigint NOT NULL,
    sender character varying,
    receiver character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.ticket_chats;
       public         heap    postgres    false         �            1259    26913    ticket_chats_id_seq    SEQUENCE     |   CREATE SEQUENCE public.ticket_chats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ticket_chats_id_seq;
       public          postgres    false    239         �           0    0    ticket_chats_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ticket_chats_id_seq OWNED BY public.ticket_chats.id;
          public          postgres    false    240         �            1259    26914    tickets    TABLE     �  CREATE TABLE public.tickets (
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
    pause_respon boolean DEFAULT false,
    duration numeric,
    token integer
);
    DROP TABLE public.tickets;
       public         heap    postgres    false         �            1259    26920    tickets_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public          postgres    false    241         �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
          public          postgres    false    242         �            1259    27301 	   tx_errors    TABLE       CREATE TABLE public.tx_errors (
    id bigint NOT NULL,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    controller character varying,
    action character varying
);
    DROP TABLE public.tx_errors;
       public         heap    postgres    false         �            1259    27300    tx_errors_id_seq    SEQUENCE     y   CREATE SEQUENCE public.tx_errors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tx_errors_id_seq;
       public          postgres    false    248         �           0    0    tx_errors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tx_errors_id_seq OWNED BY public.tx_errors.id;
          public          postgres    false    247         �            1259    26921    users    TABLE     ^  CREATE TABLE public.users (
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
    user_type character varying,
    token integer
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    26929    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    243         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    244         �            1259    26930 
   work_units    TABLE     �   CREATE TABLE public.work_units (
    id bigint NOT NULL,
    nama character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.work_units;
       public         heap    postgres    false         �            1259    26935    work_units_id_seq    SEQUENCE     z   CREATE SEQUENCE public.work_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.work_units_id_seq;
       public          postgres    false    245                     0    0    work_units_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.work_units_id_seq OWNED BY public.work_units.id;
          public          postgres    false    246         �           2604    26936    active_storage_attachments id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209         �           2604    26937    active_storage_blobs id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211         �           2604    26938    approvals id    DEFAULT     l   ALTER TABLE ONLY public.approvals ALTER COLUMN id SET DEFAULT nextval('public.approvals_id_seq'::regclass);
 ;   ALTER TABLE public.approvals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213         �           2604    26939    areas id    DEFAULT     d   ALTER TABLE ONLY public.areas ALTER COLUMN id SET DEFAULT nextval('public.areas_id_seq'::regclass);
 7   ALTER TABLE public.areas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216         �           2604    26940    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218         �           2604    26941    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220         �           2604    26942    inventories id    DEFAULT     p   ALTER TABLE ONLY public.inventories ALTER COLUMN id SET DEFAULT nextval('public.inventories_id_seq'::regclass);
 =   ALTER TABLE public.inventories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222         �           2604    26943    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224         �           2604    26944    loans id    DEFAULT     d   ALTER TABLE ONLY public.loans ALTER COLUMN id SET DEFAULT nextval('public.loans_id_seq'::regclass);
 7   ALTER TABLE public.loans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226         �           2604    26945    positions id    DEFAULT     l   ALTER TABLE ONLY public.positions ALTER COLUMN id SET DEFAULT nextval('public.positions_id_seq'::regclass);
 ;   ALTER TABLE public.positions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228         �           2604    26946    role_assignments id    DEFAULT     z   ALTER TABLE ONLY public.role_assignments ALTER COLUMN id SET DEFAULT nextval('public.role_assignments_id_seq'::regclass);
 B   ALTER TABLE public.role_assignments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230         �           2604    26947    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232         �           2604    27322    sender_emails id    DEFAULT     t   ALTER TABLE ONLY public.sender_emails ALTER COLUMN id SET DEFAULT nextval('public.sender_emails_id_seq'::regclass);
 ?   ALTER TABLE public.sender_emails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250         �           2604    26948    slas id    DEFAULT     b   ALTER TABLE ONLY public.slas ALTER COLUMN id SET DEFAULT nextval('public.slas_id_seq'::regclass);
 6   ALTER TABLE public.slas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235         �           2604    26949    sub_categories id    DEFAULT     v   ALTER TABLE ONLY public.sub_categories ALTER COLUMN id SET DEFAULT nextval('public.sub_categories_id_seq'::regclass);
 @   ALTER TABLE public.sub_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237         �           2604    26950    ticket_chats id    DEFAULT     r   ALTER TABLE ONLY public.ticket_chats ALTER COLUMN id SET DEFAULT nextval('public.ticket_chats_id_seq'::regclass);
 >   ALTER TABLE public.ticket_chats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239         �           2604    26951 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241         �           2604    27304    tx_errors id    DEFAULT     l   ALTER TABLE ONLY public.tx_errors ALTER COLUMN id SET DEFAULT nextval('public.tx_errors_id_seq'::regclass);
 ;   ALTER TABLE public.tx_errors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248         �           2604    26952    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243         �           2604    26953    work_units id    DEFAULT     n   ALTER TABLE ONLY public.work_units ALTER COLUMN id SET DEFAULT nextval('public.work_units_id_seq'::regclass);
 <   ALTER TABLE public.work_units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245         �          0    26820    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          postgres    false    209       3517.dat �          0    26826    active_storage_blobs 
   TABLE DATA           z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public          postgres    false    211       3519.dat �          0    26832 	   approvals 
   TABLE DATA           w   COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM stdin;
    public          postgres    false    213       3521.dat �          0    26838    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    215       3523.dat �          0    26843    areas 
   TABLE DATA           A   COPY public.areas (id, nama, created_at, updated_at) FROM stdin;
    public          postgres    false    216       3524.dat �          0    26849 
   categories 
   TABLE DATA           O   COPY public.categories (id, nama_kategori, created_at, updated_at) FROM stdin;
    public          postgres    false    218       3526.dat �          0    26855 	   employees 
   TABLE DATA           �   COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220       3528.dat �          0    26861    inventories 
   TABLE DATA           �   COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222       3530.dat �          0    26867    items 
   TABLE DATA           F   COPY public.items (id, nama_item, created_at, updated_at) FROM stdin;
    public          postgres    false    224       3532.dat �          0    26873    loans 
   TABLE DATA           �   COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM stdin;
    public          postgres    false    226       3534.dat �          0    26879 	   positions 
   TABLE DATA           i   COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM stdin;
    public          postgres    false    228       3536.dat �          0    26883    role_assignments 
   TABLE DATA           X   COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM stdin;
    public          postgres    false    230       3538.dat �          0    26887    roles 
   TABLE DATA           T   COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM stdin;
    public          postgres    false    232       3540.dat �          0    26893    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    234       3542.dat �          0    27319    sender_emails 
   TABLE DATA           g   COPY public.sender_emails (id, email_to, parent_id, token, status, created_at, updated_at) FROM stdin;
    public          postgres    false    250       3558.dat �          0    26898    slas 
   TABLE DATA           W   COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235       3543.dat �          0    26902    sub_categories 
   TABLE DATA           �   COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM stdin;
    public          postgres    false    237       3545.dat �          0    26908    ticket_chats 
   TABLE DATA           a   COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM stdin;
    public          postgres    false    239       3547.dat �          0    26914    tickets 
   TABLE DATA             COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon, duration, token) FROM stdin;
    public          postgres    false    241       3549.dat �          0    27301 	   tx_errors 
   TABLE DATA           `   COPY public.tx_errors (id, description, created_at, updated_at, controller, action) FROM stdin;
    public          postgres    false    248       3556.dat �          0    26921    users 
   TABLE DATA           �   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type, token) FROM stdin;
    public          postgres    false    243       3551.dat �          0    26930 
   work_units 
   TABLE DATA           F   COPY public.work_units (id, nama, created_at, updated_at) FROM stdin;
    public          postgres    false    245       3553.dat            0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 54, true);
          public          postgres    false    210                    0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 55, true);
          public          postgres    false    212                    0    0    approvals_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.approvals_id_seq', 943, true);
          public          postgres    false    214                    0    0    areas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.areas_id_seq', 29, true);
          public          postgres    false    217                    0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    219                    0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    221                    0    0    inventories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventories_id_seq', 2, true);
          public          postgres    false    223                    0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 2, true);
          public          postgres    false    225         	           0    0    loans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.loans_id_seq', 1, false);
          public          postgres    false    227         
           0    0    positions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.positions_id_seq', 6, true);
          public          postgres    false    229                    0    0    role_assignments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.role_assignments_id_seq', 802, true);
          public          postgres    false    231                    0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
          public          postgres    false    233                    0    0    sender_emails_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sender_emails_id_seq', 218, true);
          public          postgres    false    249                    0    0    slas_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.slas_id_seq', 6, true);
          public          postgres    false    236                    0    0    sub_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_categories_id_seq', 28, true);
          public          postgres    false    238                    0    0    ticket_chats_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);
          public          postgres    false    240                    0    0    tickets_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tickets_id_seq', 509, true);
          public          postgres    false    242                    0    0    tx_errors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tx_errors_id_seq', 119, true);
          public          postgres    false    247                    0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 796, true);
          public          postgres    false    244                    0    0    work_units_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.work_units_id_seq', 5, true);
          public          postgres    false    246         �           2606    26955 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            postgres    false    209         �           2606    26957 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            postgres    false    211         �           2606    26959    approvals approvals_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT approvals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.approvals DROP CONSTRAINT approvals_pkey;
       public            postgres    false    213         �           2606    26961 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    215         �           2606    26963    areas areas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.areas DROP CONSTRAINT areas_pkey;
       public            postgres    false    216         �           2606    26965    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    218         �           2606    26967    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    220         �           2606    26969    inventories inventories_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.inventories DROP CONSTRAINT inventories_pkey;
       public            postgres    false    222         �           2606    26971    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    224         �           2606    26973    loans loans_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.loans DROP CONSTRAINT loans_pkey;
       public            postgres    false    226         �           2606    26975    positions positions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.positions DROP CONSTRAINT positions_pkey;
       public            postgres    false    228                    2606    26977 &   role_assignments role_assignments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT role_assignments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT role_assignments_pkey;
       public            postgres    false    230                    2606    26979    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    232                    2606    26981 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    234                    2606    27326     sender_emails sender_emails_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sender_emails
    ADD CONSTRAINT sender_emails_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sender_emails DROP CONSTRAINT sender_emails_pkey;
       public            postgres    false    250         
           2606    26983    slas slas_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.slas
    ADD CONSTRAINT slas_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.slas DROP CONSTRAINT slas_pkey;
       public            postgres    false    235                    2606    26985 "   sub_categories sub_categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT sub_categories_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT sub_categories_pkey;
       public            postgres    false    237                    2606    26987    ticket_chats ticket_chats_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ticket_chats
    ADD CONSTRAINT ticket_chats_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ticket_chats DROP CONSTRAINT ticket_chats_pkey;
       public            postgres    false    239                    2606    26989    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public            postgres    false    241                    2606    27308    tx_errors tx_errors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tx_errors
    ADD CONSTRAINT tx_errors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tx_errors DROP CONSTRAINT tx_errors_pkey;
       public            postgres    false    248                    2606    26991    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    243                    2606    26993    work_units work_units_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.work_units
    ADD CONSTRAINT work_units_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.work_units DROP CONSTRAINT work_units_pkey;
       public            postgres    false    245         �           1259    26994 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            postgres    false    209         �           1259    26995 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            postgres    false    209    209    209    209         �           1259    26996 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            postgres    false    211         �           1259    26997    index_approvals_on_ticket_id    INDEX     W   CREATE INDEX index_approvals_on_ticket_id ON public.approvals USING btree (ticket_id);
 0   DROP INDEX public.index_approvals_on_ticket_id;
       public            postgres    false    213         �           1259    26998    index_employees_on_work_unit_id    INDEX     ]   CREATE INDEX index_employees_on_work_unit_id ON public.employees USING btree (work_unit_id);
 3   DROP INDEX public.index_employees_on_work_unit_id;
       public            postgres    false    220         �           1259    26999    index_inventories_on_item_id    INDEX     W   CREATE INDEX index_inventories_on_item_id ON public.inventories USING btree (item_id);
 0   DROP INDEX public.index_inventories_on_item_id;
       public            postgres    false    222         �           1259    27000    index_inventories_on_user_id    INDEX     W   CREATE INDEX index_inventories_on_user_id ON public.inventories USING btree (user_id);
 0   DROP INDEX public.index_inventories_on_user_id;
       public            postgres    false    222         �           1259    27001    index_loans_on_inventory_id    INDEX     U   CREATE INDEX index_loans_on_inventory_id ON public.loans USING btree (inventory_id);
 /   DROP INDEX public.index_loans_on_inventory_id;
       public            postgres    false    226         �           1259    27002    index_loans_on_user_id    INDEX     K   CREATE INDEX index_loans_on_user_id ON public.loans USING btree (user_id);
 *   DROP INDEX public.index_loans_on_user_id;
       public            postgres    false    226         �           1259    27003    index_positions_on_role_id    INDEX     S   CREATE INDEX index_positions_on_role_id ON public.positions USING btree (role_id);
 .   DROP INDEX public.index_positions_on_role_id;
       public            postgres    false    228         �           1259    27004    index_positions_on_user_id    INDEX     S   CREATE INDEX index_positions_on_user_id ON public.positions USING btree (user_id);
 .   DROP INDEX public.index_positions_on_user_id;
       public            postgres    false    228         �           1259    27005    index_positions_on_work_unit_id    INDEX     ]   CREATE INDEX index_positions_on_work_unit_id ON public.positions USING btree (work_unit_id);
 3   DROP INDEX public.index_positions_on_work_unit_id;
       public            postgres    false    228                     1259    27006 !   index_role_assignments_on_role_id    INDEX     a   CREATE INDEX index_role_assignments_on_role_id ON public.role_assignments USING btree (role_id);
 5   DROP INDEX public.index_role_assignments_on_role_id;
       public            postgres    false    230                    1259    27007 !   index_role_assignments_on_user_id    INDEX     a   CREATE INDEX index_role_assignments_on_user_id ON public.role_assignments USING btree (user_id);
 5   DROP INDEX public.index_role_assignments_on_user_id;
       public            postgres    false    230                    1259    27008    index_slas_on_category_id    INDEX     Q   CREATE INDEX index_slas_on_category_id ON public.slas USING btree (category_id);
 -   DROP INDEX public.index_slas_on_category_id;
       public            postgres    false    235                    1259    27009 #   index_sub_categories_on_category_id    INDEX     e   CREATE INDEX index_sub_categories_on_category_id ON public.sub_categories USING btree (category_id);
 7   DROP INDEX public.index_sub_categories_on_category_id;
       public            postgres    false    237                    1259    27010    index_tickets_on_area_id    INDEX     O   CREATE INDEX index_tickets_on_area_id ON public.tickets USING btree (area_id);
 ,   DROP INDEX public.index_tickets_on_area_id;
       public            postgres    false    241                    1259    27011    index_tickets_on_category_id    INDEX     W   CREATE INDEX index_tickets_on_category_id ON public.tickets USING btree (category_id);
 0   DROP INDEX public.index_tickets_on_category_id;
       public            postgres    false    241                    1259    27012     index_tickets_on_sub_category_id    INDEX     _   CREATE INDEX index_tickets_on_sub_category_id ON public.tickets USING btree (sub_category_id);
 4   DROP INDEX public.index_tickets_on_sub_category_id;
       public            postgres    false    241                    1259    27013    index_tickets_on_work_unit_id    INDEX     Y   CREATE INDEX index_tickets_on_work_unit_id ON public.tickets USING btree (work_unit_id);
 1   DROP INDEX public.index_tickets_on_work_unit_id;
       public            postgres    false    241                    1259    27014    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    243                    1259    27015 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    243         .           2606    27016    tickets fk_rails_0478bbb7f9    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0478bbb7f9 FOREIGN KEY (sub_category_id) REFERENCES public.sub_categories(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_0478bbb7f9;
       public          postgres    false    241    237    3341         /           2606    27021    tickets fk_rails_0ae0f75f5a    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_0ae0f75f5a FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_0ae0f75f5a;
       public          postgres    false    245    3355    241         0           2606    27026    tickets fk_rails_1f6d1af6fa    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_1f6d1af6fa FOREIGN KEY (category_id) REFERENCES public.categories(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_1f6d1af6fa;
       public          postgres    false    3309    218    241         '           2606    27031    positions fk_rails_22abea576e    FK CONSTRAINT     �   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_22abea576e FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_22abea576e;
       public          postgres    false    3355    228    245         %           2606    27036    loans fk_rails_35e3b20ad5    FK CONSTRAINT     �   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_35e3b20ad5 FOREIGN KEY (inventory_id) REFERENCES public.inventories(id);
 C   ALTER TABLE ONLY public.loans DROP CONSTRAINT fk_rails_35e3b20ad5;
       public          postgres    false    226    222    3316         !           2606    27041    approvals fk_rails_4480bd2f47    FK CONSTRAINT     �   ALTER TABLE ONLY public.approvals
    ADD CONSTRAINT fk_rails_4480bd2f47 FOREIGN KEY (ticket_id) REFERENCES public.tickets(id);
 G   ALTER TABLE ONLY public.approvals DROP CONSTRAINT fk_rails_4480bd2f47;
       public          postgres    false    241    213    3349         (           2606    27046    positions fk_rails_4e4581e38b    FK CONSTRAINT     |   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_4e4581e38b FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_4e4581e38b;
       public          postgres    false    228    243    3353         )           2606    27051    positions fk_rails_60d189a78f    FK CONSTRAINT     |   ALTER TABLE ONLY public.positions
    ADD CONSTRAINT fk_rails_60d189a78f FOREIGN KEY (role_id) REFERENCES public.roles(id);
 G   ALTER TABLE ONLY public.positions DROP CONSTRAINT fk_rails_60d189a78f;
       public          postgres    false    3333    228    232         #           2606    27056    inventories fk_rails_6642cbdd87    FK CONSTRAINT     ~   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_6642cbdd87 FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.inventories DROP CONSTRAINT fk_rails_6642cbdd87;
       public          postgres    false    243    3353    222         "           2606    27061    employees fk_rails_886248bb6d    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_886248bb6d FOREIGN KEY (work_unit_id) REFERENCES public.work_units(id);
 G   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_rails_886248bb6d;
       public          postgres    false    220    245    3355         *           2606    27066 $   role_assignments fk_rails_8ddd873ee0    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_8ddd873ee0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT fk_rails_8ddd873ee0;
       public          postgres    false    243    3353    230         -           2606    27071 "   sub_categories fk_rails_8e75c2ee78    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_categories
    ADD CONSTRAINT fk_rails_8e75c2ee78 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 L   ALTER TABLE ONLY public.sub_categories DROP CONSTRAINT fk_rails_8e75c2ee78;
       public          postgres    false    3309    237    218         1           2606    27076    tickets fk_rails_98bb66241d    FK CONSTRAINT     z   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_98bb66241d FOREIGN KEY (area_id) REFERENCES public.areas(id);
 E   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_rails_98bb66241d;
       public          postgres    false    3307    241    216         ,           2606    27081    slas fk_rails_a6ccf586eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.slas
    ADD CONSTRAINT fk_rails_a6ccf586eb FOREIGN KEY (category_id) REFERENCES public.categories(id);
 B   ALTER TABLE ONLY public.slas DROP CONSTRAINT fk_rails_a6ccf586eb;
       public          postgres    false    218    3309    235         &           2606    27086    loans fk_rails_c15c911198    FK CONSTRAINT     x   ALTER TABLE ONLY public.loans
    ADD CONSTRAINT fk_rails_c15c911198 FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.loans DROP CONSTRAINT fk_rails_c15c911198;
       public          postgres    false    226    243    3353                     2606    27091 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          postgres    false    209    211    3299         +           2606    27096 $   role_assignments fk_rails_e4bfc1cd2c    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_assignments
    ADD CONSTRAINT fk_rails_e4bfc1cd2c FOREIGN KEY (role_id) REFERENCES public.roles(id);
 N   ALTER TABLE ONLY public.role_assignments DROP CONSTRAINT fk_rails_e4bfc1cd2c;
       public          postgres    false    230    3333    232         $           2606    27101    inventories fk_rails_fcf6633a1e    FK CONSTRAINT     ~   ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT fk_rails_fcf6633a1e FOREIGN KEY (item_id) REFERENCES public.items(id);
 I   ALTER TABLE ONLY public.inventories DROP CONSTRAINT fk_rails_fcf6633a1e;
       public          postgres    false    224    3318    222                                                                                                                                                                                                                                                                                                                                                                                   3517.dat                                                                                            0000600 0004000 0002000 00000000165 14472000421 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        53	file_ticket	Ticket	476	54	2023-08-24 14:01:29.019414
54	file_ticket	Ticket	476	55	2023-08-24 14:01:29.025147
\.


                                                                                                                                                                                                                                                                                                                                                                                                           3519.dat                                                                                            0000600 0004000 0002000 00000000534 14472000421 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        54	EX7H7359oCFkeotbJnu1XvDt	Screenshot 2023-08-16 at 16.17.24.png	image/png	{"identified":true,"analyzed":true}	269805	yIvc8ndb0JPotn8zCFM+Lw==	2023-08-24 14:01:28.936614
55	fdrKpoES8dZCatjNxrMF1wQh	Screenshot 2023-08-16 at 14.54.04.png	image/png	{"identified":true,"analyzed":true}	1772512	wvxYgUCPyUjQDI+wGbJ2+Q==	2023-08-24 14:01:28.989069
\.


                                                                                                                                                                    3521.dat                                                                                            0000600 0004000 0002000 00000010325 14472000421 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        855	user.komersial	created	\N	2023-08-22 10:51:08.82774	2023-08-22 10:51:08.82774	449	create ticket
856	yaqub	approval3	\N	2023-08-22 10:51:37.108247	2023-08-22 10:51:37.108247	449	tiket disetujui
857	adit	open	\N	2023-08-22 10:52:16.939879	2023-08-22 10:52:16.939879	449	tiket disetujui
858	riki	inprogress	\N	2023-08-22 13:49:55.086803	2023-08-22 13:49:55.086803	449	tiket sedang diproses
859	user.komersial	created	\N	2023-08-23 00:58:28.961678	2023-08-23 00:58:28.961678	450	create ticket
860	yaqub	approval3	\N	2023-08-23 01:16:09.562917	2023-08-23 01:16:09.562917	450	tiket disetujui
861	adit	open	\N	2023-08-23 01:32:39.034398	2023-08-23 01:32:39.034398	450	tiket disetujui
862	user.engineering	created	\N	2023-08-23 01:39:02.438286	2023-08-23 01:39:02.438286	451	create ticket
863	pm.engineering	approval1	\N	2023-08-23 01:46:30.416204	2023-08-23 01:46:30.416204	451	tiket disetujui
864	agung	approval3	\N	2023-08-23 01:50:02.551732	2023-08-23 01:50:02.551732	451	tiket disetujui
865	adit	open	\N	2023-08-23 01:50:24.769038	2023-08-23 01:50:24.769038	451	tiket disetujui
866	user.engineering	created	\N	2023-08-23 02:05:10.655367	2023-08-23 02:05:10.655367	452	create ticket
867	pm.engineering	approval1	\N	2023-08-23 02:06:38.858389	2023-08-23 02:06:38.858389	452	tiket disetujui
868	yaqub	rejected	\N	2023-08-23 02:07:42.226686	2023-08-23 02:07:42.226686	452	salah divisi mas
869	user.engineering	created	\N	2023-08-23 02:08:30.819553	2023-08-23 02:08:30.819553	453	create ticket
870	pm.engineering	approval1	\N	2023-08-23 02:08:51.377718	2023-08-23 02:08:51.377718	453	tiket disetujui
871	user.engineering	created	\N	2023-08-23 02:21:25.898042	2023-08-23 02:21:25.898042	454	create ticket
872	pm.engineering	approval3	\N	2023-08-23 02:30:32.525627	2023-08-23 02:30:32.525627	454	tiket disetujui
873	user.komersial	created	\N	2023-08-23 02:39:48.698879	2023-08-23 02:39:48.698879	455	create ticket
874	pm.komersial	approval1	\N	2023-08-23 02:40:20.978074	2023-08-23 02:40:20.978074	455	tiket disetujui
875	yaqub	approval3	\N	2023-08-23 02:40:45.611936	2023-08-23 02:40:45.611936	455	tiket disetujui
876	adit	open	\N	2023-08-23 02:41:30.524181	2023-08-23 02:41:30.524181	455	tiket disetujui
877	user.komersial	created	\N	2023-08-23 02:58:40.193769	2023-08-23 02:58:40.193769	456	create ticket
878	yaqub	approval3	\N	2023-08-23 03:01:17.98516	2023-08-23 03:01:17.98516	456	tiket disetujui
879	adit	open	\N	2023-08-23 03:03:11.732429	2023-08-23 03:03:11.732429	456	tiket disetujui
880	user.engineering	created	\N	2023-08-24 01:37:21.010292	2023-08-24 01:37:21.010292	457	create ticket
881	pm.engineering	approval3	\N	2023-08-24 01:39:34.85667	2023-08-24 01:39:34.85667	457	tiket disetujui
884	agung	approval3	\N	2023-08-24 01:58:50.395666	2023-08-24 01:58:50.395666	460	create ticket
885	adit	open	\N	2023-08-24 01:59:21.862989	2023-08-24 01:59:21.862989	460	tiket disetujui
886	fauzan	inprogress	\N	2023-08-24 02:15:45.650081	2023-08-24 02:15:45.650081	460	tiket sedang diproses
887	adit	open	\N	2023-08-24 02:17:29.169619	2023-08-24 02:17:29.169619	461	create ticket
888	fauzan	inprogress	\N	2023-08-24 02:33:16.04193	2023-08-24 02:33:16.04193	461	tiket sedang diproses
889	user.engineering	created	\N	2023-08-24 05:33:32.457499	2023-08-24 05:33:32.457499	462	create ticket
890	pm.engineering	approval2	\N	2023-08-24 05:35:52.893546	2023-08-24 05:35:52.893546	462	tiket disetujui
891	agung	rejected	\N	2023-08-24 05:36:31.140319	2023-08-24 05:36:31.140319	462	sorry bro blum ada anggarannya
892	adit	open	\N	2023-08-24 12:01:25.578901	2023-08-24 12:01:25.578901	457	tiket disetujui
893	adit	open	\N	2023-08-24 12:01:30.758408	2023-08-24 12:01:30.758408	454	tiket disetujui
894	fauzan	open	\N	2023-08-24 12:03:30.305032	2023-08-24 12:03:30.305032	461	lagi ditracing pak adit sama orang microsoft
895	user.komersial	created	\N	2023-08-24 13:15:47.823949	2023-08-24 13:15:47.823949	463	create ticket
896	yaqub	approval3	\N	2023-08-24 13:16:28.403024	2023-08-24 13:16:28.403024	463	tiket disetujui
909	user.komersial	created	\N	2023-08-24 14:01:29.034796	2023-08-24 14:01:29.034796	476	create ticket
910	yaqub	approval3	\N	2023-08-24 14:02:45.997987	2023-08-24 14:02:45.997987	476	tiket disetujui
911	user.komersial	created	\N	2023-08-24 14:04:44.241883	2023-08-24 14:04:44.241883	477	create ticket
\.


                                                                                                                                                                                                                                                                                                           3523.dat                                                                                            0000600 0004000 0002000 00000000123 14472000421 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        environment	development	2023-06-12 03:47:38.838361	2023-06-12 03:47:38.838361
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3524.dat                                                                                            0000600 0004000 0002000 00000000311 14472000421 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Medan	2023-06-12 04:27:53.196575	2023-06-15 03:24:33.437799
2	Surabaya	2023-06-12 04:27:20.988036	2023-06-15 03:24:40.289321
5	Kantor Pusat	2023-06-15 10:47:24.595396	2023-06-15 10:47:24.595396
\.


                                                                                                                                                                                                                                                                                                                       3526.dat                                                                                            0000600 0004000 0002000 00000001022 14472000421 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	Layanan Aplikasi	2023-06-15 03:14:07.145211	2023-06-15 03:14:07.145211
9	Layanan Infrastruktur	2023-06-15 03:15:37.703227	2023-06-15 03:15:37.703227
10	Layanan Peminjaman Barang	2023-06-15 03:15:55.072237	2023-06-15 03:15:55.072237
11	Layanan Pengaturan Hak Akses	2023-06-15 03:16:06.72204	2023-06-15 03:16:06.72204
12	Layanan SDM	2023-07-03 03:51:16.263938	2023-07-03 03:51:16.263938
13	Timesheet	2023-07-13 07:16:27.303301	2023-07-13 07:16:27.303301
14	Layanan Asset	2023-08-18 02:53:28.416163	2023-08-18 02:53:28.416163
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3528.dat                                                                                            0000600 0004000 0002000 00000000005 14472000421 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3530.dat                                                                                            0000600 0004000 0002000 00000000422 14472000421 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1111	1	Lenovo	2023-06-13	13000000	10000000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 03:53:22.087578	2023-06-29 11:25:34.450188
2	1111	2	Universal HDMI	2023-06-13	200000	150000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 05:47:40.291028	2023-06-29 11:43:47.85018
\.


                                                                                                                                                                                                                                              3532.dat                                                                                            0000600 0004000 0002000 00000000202 14472000421 0014232 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Laptop	2023-06-13 03:52:25.600138	2023-06-13 03:52:25.600138
2	Kabel	2023-06-13 05:46:56.030759	2023-06-13 05:46:56.030759
\.


                                                                                                                                                                                                                                                                                                                                                                                              3534.dat                                                                                            0000600 0004000 0002000 00000000005 14472000421 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3536.dat                                                                                            0000600 0004000 0002000 00000000405 14472000421 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	8	3	3	t	2023-06-24 13:58:02.078294	2023-06-24 13:58:02.078294
2	4	3	2	f	2023-06-24 13:58:58.98847	2023-06-24 13:58:58.98847
3	10	3	1	t	2023-06-24 13:59:14.941185	2023-06-24 13:59:14.941185
4	11	3	4	f	2023-06-24 13:59:26.405844	2023-07-21 01:13:53.166118
\.


                                                                                                                                                                                                                                                           3538.dat                                                                                            0000600 0004000 0002000 00000142536 14472000421 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-06-12 03:56:24.579679	2023-06-12 03:56:24.579679
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
19	3	1	2023-07-12 03:59:35.675345	2023-07-12 03:59:35.675345
20	7	1	2023-07-13 01:16:19.955938	2023-07-13 01:16:19.955938
21	16	1	2023-07-17 00:40:57.375247	2023-07-17 00:40:57.375247
22	16	5	2023-07-17 00:40:57.383436	2023-07-17 00:40:57.383436
23	17	1	2023-07-18 01:01:57.072113	2023-07-18 01:01:57.072113
26	17	5	2023-07-18 04:50:48.850618	2023-07-18 04:50:48.850618
27	18	4	2023-07-20 01:04:53.809945	2023-07-20 01:04:53.809945
28	19	1	2023-08-15 02:22:39.234922	2023-08-15 02:22:39.234922
29	19	5	2023-08-15 02:22:39.241354	2023-08-15 02:22:39.241354
30	20	4	2023-08-23 10:26:10.004507	2023-08-23 10:26:10.004507
31	21	4	2023-08-23 10:26:10.467708	2023-08-23 10:26:10.467708
32	22	4	2023-08-23 10:26:10.867653	2023-08-23 10:26:10.867653
33	23	4	2023-08-23 10:26:11.262094	2023-08-23 10:26:11.262094
34	24	4	2023-08-23 10:26:11.650888	2023-08-23 10:26:11.650888
35	25	4	2023-08-23 10:26:12.047453	2023-08-23 10:26:12.047453
36	26	4	2023-08-23 10:26:12.447763	2023-08-23 10:26:12.447763
37	27	4	2023-08-23 10:26:12.840936	2023-08-23 10:26:12.840936
38	28	4	2023-08-23 10:26:13.229705	2023-08-23 10:26:13.229705
39	29	4	2023-08-23 10:26:13.614591	2023-08-23 10:26:13.614591
40	30	4	2023-08-23 10:26:14.007929	2023-08-23 10:26:14.007929
41	31	4	2023-08-23 10:26:14.398746	2023-08-23 10:26:14.398746
42	32	4	2023-08-23 10:26:14.788862	2023-08-23 10:26:14.788862
43	33	4	2023-08-23 10:26:15.18154	2023-08-23 10:26:15.18154
44	34	4	2023-08-23 10:26:15.570236	2023-08-23 10:26:15.570236
45	35	4	2023-08-23 10:26:15.979992	2023-08-23 10:26:15.979992
46	36	4	2023-08-23 10:26:16.434884	2023-08-23 10:26:16.434884
47	37	4	2023-08-23 10:26:16.85133	2023-08-23 10:26:16.85133
48	38	4	2023-08-23 10:26:17.254762	2023-08-23 10:26:17.254762
49	39	4	2023-08-23 10:26:17.656683	2023-08-23 10:26:17.656683
50	40	4	2023-08-23 10:26:18.060911	2023-08-23 10:26:18.060911
51	41	4	2023-08-23 10:26:18.46164	2023-08-23 10:26:18.46164
52	42	4	2023-08-23 10:26:18.863646	2023-08-23 10:26:18.863646
53	43	4	2023-08-23 10:26:19.268735	2023-08-23 10:26:19.268735
54	44	4	2023-08-23 10:26:19.694895	2023-08-23 10:26:19.694895
55	45	4	2023-08-23 10:26:20.108144	2023-08-23 10:26:20.108144
56	46	4	2023-08-23 10:26:20.532006	2023-08-23 10:26:20.532006
57	47	4	2023-08-23 10:26:20.933636	2023-08-23 10:26:20.933636
58	48	4	2023-08-23 10:26:21.329004	2023-08-23 10:26:21.329004
59	49	4	2023-08-23 10:26:21.719304	2023-08-23 10:26:21.719304
60	50	4	2023-08-23 10:26:22.114536	2023-08-23 10:26:22.114536
61	51	4	2023-08-23 10:26:22.520884	2023-08-23 10:26:22.520884
62	52	4	2023-08-23 10:26:22.915237	2023-08-23 10:26:22.915237
63	53	4	2023-08-23 10:26:23.313464	2023-08-23 10:26:23.313464
64	54	4	2023-08-23 10:26:23.705422	2023-08-23 10:26:23.705422
65	55	4	2023-08-23 10:26:24.131044	2023-08-23 10:26:24.131044
66	56	4	2023-08-23 10:26:24.527872	2023-08-23 10:26:24.527872
67	57	4	2023-08-23 10:26:24.923661	2023-08-23 10:26:24.923661
68	58	4	2023-08-23 10:26:25.318434	2023-08-23 10:26:25.318434
69	59	4	2023-08-23 10:26:25.719142	2023-08-23 10:26:25.719142
70	60	4	2023-08-23 10:26:26.116736	2023-08-23 10:26:26.116736
71	61	4	2023-08-23 10:26:26.543955	2023-08-23 10:26:26.543955
72	62	4	2023-08-23 10:26:26.94617	2023-08-23 10:26:26.94617
73	63	4	2023-08-23 10:26:27.344886	2023-08-23 10:26:27.344886
74	64	4	2023-08-23 10:26:27.752317	2023-08-23 10:26:27.752317
75	65	4	2023-08-23 10:26:28.198068	2023-08-23 10:26:28.198068
76	66	4	2023-08-23 10:26:28.59205	2023-08-23 10:26:28.59205
77	67	4	2023-08-23 10:26:28.984875	2023-08-23 10:26:28.984875
78	68	4	2023-08-23 10:26:29.381434	2023-08-23 10:26:29.381434
79	69	4	2023-08-23 10:26:29.797018	2023-08-23 10:26:29.797018
80	70	4	2023-08-23 10:26:30.194959	2023-08-23 10:26:30.194959
81	71	4	2023-08-23 10:26:30.604802	2023-08-23 10:26:30.604802
82	72	4	2023-08-23 10:26:31.016773	2023-08-23 10:26:31.016773
83	73	4	2023-08-23 10:26:31.419599	2023-08-23 10:26:31.419599
84	74	4	2023-08-23 10:26:31.81804	2023-08-23 10:26:31.81804
85	75	4	2023-08-23 10:26:32.228381	2023-08-23 10:26:32.228381
86	76	4	2023-08-23 10:26:32.627073	2023-08-23 10:26:32.627073
87	77	4	2023-08-23 10:26:33.021222	2023-08-23 10:26:33.021222
88	78	4	2023-08-23 10:26:33.410437	2023-08-23 10:26:33.410437
89	79	4	2023-08-23 10:26:33.803507	2023-08-23 10:26:33.803507
90	80	4	2023-08-23 10:26:34.195584	2023-08-23 10:26:34.195584
91	81	4	2023-08-23 10:26:34.585744	2023-08-23 10:26:34.585744
92	82	4	2023-08-23 10:26:34.978944	2023-08-23 10:26:34.978944
93	83	4	2023-08-23 10:26:35.370646	2023-08-23 10:26:35.370646
94	84	4	2023-08-23 10:26:35.76759	2023-08-23 10:26:35.76759
95	85	4	2023-08-23 10:26:36.16045	2023-08-23 10:26:36.16045
96	86	4	2023-08-23 10:26:36.549429	2023-08-23 10:26:36.549429
97	87	4	2023-08-23 10:26:36.946542	2023-08-23 10:26:36.946542
98	88	4	2023-08-23 10:26:37.344015	2023-08-23 10:26:37.344015
99	89	4	2023-08-23 10:26:37.740729	2023-08-23 10:26:37.740729
100	90	4	2023-08-23 10:26:38.13511	2023-08-23 10:26:38.13511
101	91	4	2023-08-23 10:26:38.525617	2023-08-23 10:26:38.525617
102	92	4	2023-08-23 10:26:38.922779	2023-08-23 10:26:38.922779
103	93	4	2023-08-23 10:26:39.315807	2023-08-23 10:26:39.315807
104	94	4	2023-08-23 10:26:39.742819	2023-08-23 10:26:39.742819
105	95	4	2023-08-23 10:26:40.138934	2023-08-23 10:26:40.138934
106	96	4	2023-08-23 10:26:40.531737	2023-08-23 10:26:40.531737
107	97	4	2023-08-23 10:26:41.121639	2023-08-23 10:26:41.121639
108	98	4	2023-08-23 10:26:41.538856	2023-08-23 10:26:41.538856
109	99	4	2023-08-23 10:26:41.93588	2023-08-23 10:26:41.93588
110	100	4	2023-08-23 10:26:42.34837	2023-08-23 10:26:42.34837
111	101	4	2023-08-23 10:26:42.743938	2023-08-23 10:26:42.743938
112	102	4	2023-08-23 10:26:43.138274	2023-08-23 10:26:43.138274
113	103	4	2023-08-23 10:26:43.531559	2023-08-23 10:26:43.531559
114	104	4	2023-08-23 10:26:43.976772	2023-08-23 10:26:43.976772
115	105	4	2023-08-23 10:26:44.37438	2023-08-23 10:26:44.37438
116	106	4	2023-08-23 10:26:44.766069	2023-08-23 10:26:44.766069
117	107	4	2023-08-23 10:26:45.158376	2023-08-23 10:26:45.158376
118	108	4	2023-08-23 10:26:45.549933	2023-08-23 10:26:45.549933
119	109	4	2023-08-23 10:26:45.939963	2023-08-23 10:26:45.939963
120	110	4	2023-08-23 10:26:46.339709	2023-08-23 10:26:46.339709
121	111	4	2023-08-23 10:26:46.733122	2023-08-23 10:26:46.733122
122	112	4	2023-08-23 10:26:47.124185	2023-08-23 10:26:47.124185
123	113	4	2023-08-23 10:26:47.523395	2023-08-23 10:26:47.523395
124	114	4	2023-08-23 10:26:47.931404	2023-08-23 10:26:47.931404
125	115	4	2023-08-23 10:26:48.324473	2023-08-23 10:26:48.324473
126	116	4	2023-08-23 10:26:48.716874	2023-08-23 10:26:48.716874
127	117	4	2023-08-23 10:26:49.105114	2023-08-23 10:26:49.105114
128	118	4	2023-08-23 10:26:49.504094	2023-08-23 10:26:49.504094
129	119	4	2023-08-23 10:26:49.919014	2023-08-23 10:26:49.919014
130	120	4	2023-08-23 10:26:50.313779	2023-08-23 10:26:50.313779
131	121	4	2023-08-23 10:26:50.704397	2023-08-23 10:26:50.704397
132	122	4	2023-08-23 10:26:51.143498	2023-08-23 10:26:51.143498
133	123	4	2023-08-23 10:26:51.53999	2023-08-23 10:26:51.53999
134	124	4	2023-08-23 10:26:51.931957	2023-08-23 10:26:51.931957
135	125	4	2023-08-23 10:26:52.331062	2023-08-23 10:26:52.331062
136	126	4	2023-08-23 10:26:52.730282	2023-08-23 10:26:52.730282
137	127	4	2023-08-23 10:26:53.12023	2023-08-23 10:26:53.12023
138	128	4	2023-08-23 10:26:53.512042	2023-08-23 10:26:53.512042
139	129	4	2023-08-23 10:26:53.904634	2023-08-23 10:26:53.904634
140	130	4	2023-08-23 10:26:54.295154	2023-08-23 10:26:54.295154
141	131	4	2023-08-23 10:26:54.690181	2023-08-23 10:26:54.690181
142	132	4	2023-08-23 10:26:55.083011	2023-08-23 10:26:55.083011
143	133	4	2023-08-23 10:26:55.476643	2023-08-23 10:26:55.476643
144	134	4	2023-08-23 10:26:55.867823	2023-08-23 10:26:55.867823
145	135	4	2023-08-23 10:26:56.257771	2023-08-23 10:26:56.257771
146	136	4	2023-08-23 10:26:56.650257	2023-08-23 10:26:56.650257
147	137	4	2023-08-23 10:26:57.041076	2023-08-23 10:26:57.041076
148	138	4	2023-08-23 10:26:57.435243	2023-08-23 10:26:57.435243
149	139	4	2023-08-23 10:26:57.830135	2023-08-23 10:26:57.830135
150	140	4	2023-08-23 10:26:58.220867	2023-08-23 10:26:58.220867
151	141	4	2023-08-23 10:26:58.615032	2023-08-23 10:26:58.615032
152	142	4	2023-08-23 10:26:59.007171	2023-08-23 10:26:59.007171
153	143	4	2023-08-23 10:26:59.39813	2023-08-23 10:26:59.39813
154	144	4	2023-08-23 10:26:59.802617	2023-08-23 10:26:59.802617
155	145	4	2023-08-23 10:27:00.198599	2023-08-23 10:27:00.198599
156	146	4	2023-08-23 10:27:00.59057	2023-08-23 10:27:00.59057
157	147	4	2023-08-23 10:27:00.987025	2023-08-23 10:27:00.987025
158	148	4	2023-08-23 10:27:01.378719	2023-08-23 10:27:01.378719
159	149	4	2023-08-23 10:27:01.775579	2023-08-23 10:27:01.775579
160	150	4	2023-08-23 10:27:02.185455	2023-08-23 10:27:02.185455
161	151	4	2023-08-23 10:27:02.633528	2023-08-23 10:27:02.633528
162	152	4	2023-08-23 10:27:03.041771	2023-08-23 10:27:03.041771
163	153	4	2023-08-23 10:27:03.4529	2023-08-23 10:27:03.4529
164	154	4	2023-08-23 10:27:03.863177	2023-08-23 10:27:03.863177
165	155	4	2023-08-23 10:27:04.263912	2023-08-23 10:27:04.263912
166	156	4	2023-08-23 10:27:04.68289	2023-08-23 10:27:04.68289
167	157	4	2023-08-23 10:27:05.104461	2023-08-23 10:27:05.104461
168	158	4	2023-08-23 10:27:05.517014	2023-08-23 10:27:05.517014
169	159	4	2023-08-23 10:27:05.933269	2023-08-23 10:27:05.933269
170	160	4	2023-08-23 10:27:06.405468	2023-08-23 10:27:06.405468
171	161	4	2023-08-23 10:27:06.846704	2023-08-23 10:27:06.846704
172	162	4	2023-08-23 10:27:07.284221	2023-08-23 10:27:07.284221
173	163	4	2023-08-23 10:27:07.717511	2023-08-23 10:27:07.717511
174	164	4	2023-08-23 10:27:08.143148	2023-08-23 10:27:08.143148
175	165	4	2023-08-23 10:27:08.570117	2023-08-23 10:27:08.570117
176	166	4	2023-08-23 10:27:09.021646	2023-08-23 10:27:09.021646
177	167	4	2023-08-23 10:27:09.435655	2023-08-23 10:27:09.435655
178	168	4	2023-08-23 10:27:09.853259	2023-08-23 10:27:09.853259
179	169	4	2023-08-23 10:27:10.294616	2023-08-23 10:27:10.294616
180	170	4	2023-08-23 10:27:10.707958	2023-08-23 10:27:10.707958
181	171	4	2023-08-23 10:27:11.128009	2023-08-23 10:27:11.128009
182	172	4	2023-08-23 10:27:11.528463	2023-08-23 10:27:11.528463
183	173	4	2023-08-23 10:27:11.936199	2023-08-23 10:27:11.936199
184	174	4	2023-08-23 10:27:12.355924	2023-08-23 10:27:12.355924
185	175	4	2023-08-23 10:27:12.775974	2023-08-23 10:27:12.775974
186	176	4	2023-08-23 10:27:13.209897	2023-08-23 10:27:13.209897
187	177	4	2023-08-23 10:27:13.612645	2023-08-23 10:27:13.612645
188	178	4	2023-08-23 10:27:14.01308	2023-08-23 10:27:14.01308
189	179	4	2023-08-23 10:27:14.445324	2023-08-23 10:27:14.445324
190	180	4	2023-08-23 10:27:14.844767	2023-08-23 10:27:14.844767
191	181	4	2023-08-23 10:27:15.254332	2023-08-23 10:27:15.254332
192	182	4	2023-08-23 10:27:15.656575	2023-08-23 10:27:15.656575
193	183	4	2023-08-23 10:27:16.054944	2023-08-23 10:27:16.054944
194	184	4	2023-08-23 10:27:16.467135	2023-08-23 10:27:16.467135
195	185	4	2023-08-23 10:27:16.868802	2023-08-23 10:27:16.868802
196	186	4	2023-08-23 10:27:17.276793	2023-08-23 10:27:17.276793
197	187	4	2023-08-23 10:27:17.686061	2023-08-23 10:27:17.686061
198	188	4	2023-08-23 10:27:18.086147	2023-08-23 10:27:18.086147
199	189	4	2023-08-23 10:27:18.489888	2023-08-23 10:27:18.489888
200	190	4	2023-08-23 10:27:18.889436	2023-08-23 10:27:18.889436
201	191	4	2023-08-23 10:27:19.290891	2023-08-23 10:27:19.290891
202	192	4	2023-08-23 10:27:19.717867	2023-08-23 10:27:19.717867
203	193	4	2023-08-23 10:27:20.151265	2023-08-23 10:27:20.151265
204	194	4	2023-08-23 10:27:20.564307	2023-08-23 10:27:20.564307
205	195	4	2023-08-23 10:27:20.972026	2023-08-23 10:27:20.972026
206	196	4	2023-08-23 10:27:21.383827	2023-08-23 10:27:21.383827
207	197	4	2023-08-23 10:27:21.796847	2023-08-23 10:27:21.796847
208	198	4	2023-08-23 10:27:22.209431	2023-08-23 10:27:22.209431
209	199	4	2023-08-23 10:27:22.642146	2023-08-23 10:27:22.642146
210	200	4	2023-08-23 10:27:23.077797	2023-08-23 10:27:23.077797
211	201	4	2023-08-23 10:27:23.486867	2023-08-23 10:27:23.486867
212	202	4	2023-08-23 10:27:23.896552	2023-08-23 10:27:23.896552
213	203	4	2023-08-23 10:27:24.302086	2023-08-23 10:27:24.302086
214	204	4	2023-08-23 10:27:24.704962	2023-08-23 10:27:24.704962
215	205	4	2023-08-23 10:27:25.115141	2023-08-23 10:27:25.115141
216	206	4	2023-08-23 10:27:25.517995	2023-08-23 10:27:25.517995
217	207	4	2023-08-23 10:27:25.960377	2023-08-23 10:27:25.960377
218	208	4	2023-08-23 10:27:26.360377	2023-08-23 10:27:26.360377
219	209	4	2023-08-23 10:27:26.825154	2023-08-23 10:27:26.825154
220	210	4	2023-08-23 10:27:27.243227	2023-08-23 10:27:27.243227
221	211	4	2023-08-23 10:27:27.659093	2023-08-23 10:27:27.659093
222	212	4	2023-08-23 10:27:28.073908	2023-08-23 10:27:28.073908
223	213	4	2023-08-23 10:27:28.478786	2023-08-23 10:27:28.478786
224	215	4	2023-08-23 10:27:28.885133	2023-08-23 10:27:28.885133
225	216	4	2023-08-23 10:27:29.287884	2023-08-23 10:27:29.287884
226	217	4	2023-08-23 10:27:29.705922	2023-08-23 10:27:29.705922
227	218	4	2023-08-23 10:27:30.116437	2023-08-23 10:27:30.116437
228	219	4	2023-08-23 10:27:30.573038	2023-08-23 10:27:30.573038
229	220	4	2023-08-23 10:27:30.97255	2023-08-23 10:27:30.97255
230	221	4	2023-08-23 10:27:31.370245	2023-08-23 10:27:31.370245
231	222	4	2023-08-23 10:27:31.77514	2023-08-23 10:27:31.77514
232	223	4	2023-08-23 10:27:32.282346	2023-08-23 10:27:32.282346
233	224	4	2023-08-23 10:27:32.699209	2023-08-23 10:27:32.699209
234	225	4	2023-08-23 10:27:33.135549	2023-08-23 10:27:33.135549
235	226	4	2023-08-23 10:27:33.536277	2023-08-23 10:27:33.536277
236	227	4	2023-08-23 10:27:33.937782	2023-08-23 10:27:33.937782
237	228	4	2023-08-23 10:27:34.34656	2023-08-23 10:27:34.34656
238	229	4	2023-08-23 10:27:34.764144	2023-08-23 10:27:34.764144
239	230	4	2023-08-23 10:27:35.17764	2023-08-23 10:27:35.17764
240	231	4	2023-08-23 10:27:35.620996	2023-08-23 10:27:35.620996
241	232	4	2023-08-23 10:27:36.035484	2023-08-23 10:27:36.035484
242	233	4	2023-08-23 10:27:36.445918	2023-08-23 10:27:36.445918
243	234	4	2023-08-23 10:27:36.860491	2023-08-23 10:27:36.860491
244	235	4	2023-08-23 10:27:37.316751	2023-08-23 10:27:37.316751
245	236	4	2023-08-23 10:27:37.761772	2023-08-23 10:27:37.761772
246	237	4	2023-08-23 10:27:38.174429	2023-08-23 10:27:38.174429
247	238	4	2023-08-23 10:27:38.573153	2023-08-23 10:27:38.573153
248	239	4	2023-08-23 10:27:38.967778	2023-08-23 10:27:38.967778
249	240	4	2023-08-23 10:27:39.362781	2023-08-23 10:27:39.362781
250	241	4	2023-08-23 10:27:39.763238	2023-08-23 10:27:39.763238
251	242	4	2023-08-23 10:27:40.160716	2023-08-23 10:27:40.160716
252	243	4	2023-08-23 10:27:40.552753	2023-08-23 10:27:40.552753
253	244	4	2023-08-23 10:27:40.949156	2023-08-23 10:27:40.949156
254	245	4	2023-08-23 10:27:41.352348	2023-08-23 10:27:41.352348
255	246	4	2023-08-23 10:27:41.748704	2023-08-23 10:27:41.748704
256	247	4	2023-08-23 10:27:42.149692	2023-08-23 10:27:42.149692
257	248	4	2023-08-23 10:27:42.569538	2023-08-23 10:27:42.569538
258	249	4	2023-08-23 10:27:42.963234	2023-08-23 10:27:42.963234
259	250	4	2023-08-23 10:27:43.383928	2023-08-23 10:27:43.383928
260	251	4	2023-08-23 10:27:43.780757	2023-08-23 10:27:43.780757
261	252	4	2023-08-23 10:27:44.191038	2023-08-23 10:27:44.191038
262	253	4	2023-08-23 10:27:44.587899	2023-08-23 10:27:44.587899
263	254	4	2023-08-23 10:27:44.979885	2023-08-23 10:27:44.979885
264	255	4	2023-08-23 10:27:45.393189	2023-08-23 10:27:45.393189
265	256	4	2023-08-23 10:27:45.792787	2023-08-23 10:27:45.792787
266	257	4	2023-08-23 10:27:46.191342	2023-08-23 10:27:46.191342
267	258	4	2023-08-23 10:27:46.586534	2023-08-23 10:27:46.586534
268	259	4	2023-08-23 10:27:46.977975	2023-08-23 10:27:46.977975
269	260	4	2023-08-23 10:27:47.372741	2023-08-23 10:27:47.372741
270	261	4	2023-08-23 10:27:47.768561	2023-08-23 10:27:47.768561
271	262	4	2023-08-23 10:27:48.165804	2023-08-23 10:27:48.165804
272	263	4	2023-08-23 10:27:48.560682	2023-08-23 10:27:48.560682
273	264	4	2023-08-23 10:27:48.973474	2023-08-23 10:27:48.973474
274	265	4	2023-08-23 10:27:49.366628	2023-08-23 10:27:49.366628
275	266	4	2023-08-23 10:27:49.766776	2023-08-23 10:27:49.766776
276	267	4	2023-08-23 10:27:50.166578	2023-08-23 10:27:50.166578
277	268	4	2023-08-23 10:27:50.563912	2023-08-23 10:27:50.563912
278	269	4	2023-08-23 10:27:50.961409	2023-08-23 10:27:50.961409
279	270	4	2023-08-23 10:27:51.355269	2023-08-23 10:27:51.355269
280	271	4	2023-08-23 10:27:51.750866	2023-08-23 10:27:51.750866
281	272	4	2023-08-23 10:27:52.142821	2023-08-23 10:27:52.142821
282	273	4	2023-08-23 10:27:52.545855	2023-08-23 10:27:52.545855
283	274	4	2023-08-23 10:27:52.944817	2023-08-23 10:27:52.944817
284	275	4	2023-08-23 10:27:53.357467	2023-08-23 10:27:53.357467
285	276	4	2023-08-23 10:27:53.752638	2023-08-23 10:27:53.752638
286	277	4	2023-08-23 10:27:54.148695	2023-08-23 10:27:54.148695
287	278	4	2023-08-23 10:27:54.543779	2023-08-23 10:27:54.543779
288	279	4	2023-08-23 10:27:54.954132	2023-08-23 10:27:54.954132
289	280	4	2023-08-23 10:27:55.350489	2023-08-23 10:27:55.350489
290	281	4	2023-08-23 10:27:55.745033	2023-08-23 10:27:55.745033
291	282	4	2023-08-23 10:27:56.16881	2023-08-23 10:27:56.16881
292	283	4	2023-08-23 10:27:56.56524	2023-08-23 10:27:56.56524
293	284	4	2023-08-23 10:27:56.964029	2023-08-23 10:27:56.964029
294	285	4	2023-08-23 10:27:57.358004	2023-08-23 10:27:57.358004
295	286	4	2023-08-23 10:27:57.762192	2023-08-23 10:27:57.762192
296	287	4	2023-08-23 10:27:58.155596	2023-08-23 10:27:58.155596
297	288	4	2023-08-23 10:27:58.556632	2023-08-23 10:27:58.556632
298	289	4	2023-08-23 10:27:58.959624	2023-08-23 10:27:58.959624
299	290	4	2023-08-23 10:27:59.369558	2023-08-23 10:27:59.369558
300	291	4	2023-08-23 10:27:59.825732	2023-08-23 10:27:59.825732
301	292	4	2023-08-23 10:28:00.21864	2023-08-23 10:28:00.21864
302	293	4	2023-08-23 10:28:00.612843	2023-08-23 10:28:00.612843
303	294	4	2023-08-23 10:28:01.016791	2023-08-23 10:28:01.016791
304	295	4	2023-08-23 10:28:01.416413	2023-08-23 10:28:01.416413
305	296	4	2023-08-23 10:28:01.873287	2023-08-23 10:28:01.873287
306	297	4	2023-08-23 10:28:02.331839	2023-08-23 10:28:02.331839
307	298	4	2023-08-23 10:28:02.735377	2023-08-23 10:28:02.735377
308	299	4	2023-08-23 10:28:03.144526	2023-08-23 10:28:03.144526
309	300	4	2023-08-23 10:28:03.556017	2023-08-23 10:28:03.556017
310	301	4	2023-08-23 10:28:03.962738	2023-08-23 10:28:03.962738
311	302	4	2023-08-23 10:28:04.38122	2023-08-23 10:28:04.38122
312	303	4	2023-08-23 10:28:04.89397	2023-08-23 10:28:04.89397
313	304	4	2023-08-23 10:28:05.413666	2023-08-23 10:28:05.413666
314	305	4	2023-08-23 10:28:05.829733	2023-08-23 10:28:05.829733
315	306	4	2023-08-23 10:28:06.253767	2023-08-23 10:28:06.253767
316	307	4	2023-08-23 10:28:06.671646	2023-08-23 10:28:06.671646
317	308	4	2023-08-23 10:28:07.086694	2023-08-23 10:28:07.086694
318	309	4	2023-08-23 10:28:07.498547	2023-08-23 10:28:07.498547
319	310	4	2023-08-23 10:28:07.912134	2023-08-23 10:28:07.912134
320	311	4	2023-08-23 10:28:08.319949	2023-08-23 10:28:08.319949
321	312	4	2023-08-23 10:28:08.731279	2023-08-23 10:28:08.731279
322	313	4	2023-08-23 10:28:09.137235	2023-08-23 10:28:09.137235
323	314	4	2023-08-23 10:28:09.548648	2023-08-23 10:28:09.548648
324	315	4	2023-08-23 10:28:09.958676	2023-08-23 10:28:09.958676
325	316	4	2023-08-23 10:28:10.370548	2023-08-23 10:28:10.370548
326	317	4	2023-08-23 10:28:10.777528	2023-08-23 10:28:10.777528
327	318	4	2023-08-23 10:28:11.180222	2023-08-23 10:28:11.180222
328	319	4	2023-08-23 10:28:11.614861	2023-08-23 10:28:11.614861
329	320	4	2023-08-23 10:28:12.0176	2023-08-23 10:28:12.0176
330	321	4	2023-08-23 10:28:12.517935	2023-08-23 10:28:12.517935
331	322	4	2023-08-23 10:28:12.925049	2023-08-23 10:28:12.925049
332	323	4	2023-08-23 10:28:13.328779	2023-08-23 10:28:13.328779
333	324	4	2023-08-23 10:28:13.744356	2023-08-23 10:28:13.744356
334	325	4	2023-08-23 10:28:14.155796	2023-08-23 10:28:14.155796
335	326	4	2023-08-23 10:28:14.559013	2023-08-23 10:28:14.559013
336	327	4	2023-08-23 10:28:14.962497	2023-08-23 10:28:14.962497
337	328	4	2023-08-23 10:28:15.379827	2023-08-23 10:28:15.379827
338	329	4	2023-08-23 10:28:15.795094	2023-08-23 10:28:15.795094
339	330	4	2023-08-23 10:28:16.213893	2023-08-23 10:28:16.213893
340	331	4	2023-08-23 10:28:16.640148	2023-08-23 10:28:16.640148
341	332	4	2023-08-23 10:28:17.04682	2023-08-23 10:28:17.04682
342	333	4	2023-08-23 10:28:17.451944	2023-08-23 10:28:17.451944
343	334	4	2023-08-23 10:28:17.863207	2023-08-23 10:28:17.863207
344	335	4	2023-08-23 10:28:18.268928	2023-08-23 10:28:18.268928
345	337	4	2023-08-23 10:28:18.675154	2023-08-23 10:28:18.675154
346	338	4	2023-08-23 10:28:19.06867	2023-08-23 10:28:19.06867
347	339	4	2023-08-23 10:28:19.462232	2023-08-23 10:28:19.462232
348	340	4	2023-08-23 10:28:19.873902	2023-08-23 10:28:19.873902
349	341	4	2023-08-23 10:28:20.267489	2023-08-23 10:28:20.267489
350	342	4	2023-08-23 10:28:20.664547	2023-08-23 10:28:20.664547
351	343	4	2023-08-23 10:28:21.056585	2023-08-23 10:28:21.056585
352	344	4	2023-08-23 10:28:21.450937	2023-08-23 10:28:21.450937
353	345	4	2023-08-23 10:28:21.846888	2023-08-23 10:28:21.846888
354	346	4	2023-08-23 10:28:22.256318	2023-08-23 10:28:22.256318
355	347	4	2023-08-23 10:28:22.688481	2023-08-23 10:28:22.688481
356	348	4	2023-08-23 10:28:23.089702	2023-08-23 10:28:23.089702
357	349	4	2023-08-23 10:28:23.483949	2023-08-23 10:28:23.483949
358	350	4	2023-08-23 10:28:23.884495	2023-08-23 10:28:23.884495
359	351	4	2023-08-23 10:28:24.280772	2023-08-23 10:28:24.280772
360	352	4	2023-08-23 10:28:24.678244	2023-08-23 10:28:24.678244
361	353	4	2023-08-23 10:28:25.079031	2023-08-23 10:28:25.079031
362	354	4	2023-08-23 10:28:25.473206	2023-08-23 10:28:25.473206
363	355	4	2023-08-23 10:28:25.869452	2023-08-23 10:28:25.869452
364	356	4	2023-08-23 10:28:26.267959	2023-08-23 10:28:26.267959
365	357	4	2023-08-23 10:28:26.661292	2023-08-23 10:28:26.661292
366	358	4	2023-08-23 10:28:27.076921	2023-08-23 10:28:27.076921
367	359	4	2023-08-23 10:28:27.483367	2023-08-23 10:28:27.483367
368	360	4	2023-08-23 10:28:27.88908	2023-08-23 10:28:27.88908
369	361	4	2023-08-23 10:28:28.285204	2023-08-23 10:28:28.285204
370	362	4	2023-08-23 10:28:28.685455	2023-08-23 10:28:28.685455
371	363	4	2023-08-23 10:28:29.088846	2023-08-23 10:28:29.088846
372	364	4	2023-08-23 10:28:29.482837	2023-08-23 10:28:29.482837
373	365	4	2023-08-23 10:28:29.877469	2023-08-23 10:28:29.877469
374	366	4	2023-08-23 10:28:30.273865	2023-08-23 10:28:30.273865
375	367	4	2023-08-23 10:28:30.671238	2023-08-23 10:28:30.671238
376	368	4	2023-08-23 10:28:31.077828	2023-08-23 10:28:31.077828
377	369	4	2023-08-23 10:28:31.473564	2023-08-23 10:28:31.473564
378	370	4	2023-08-23 10:28:31.927402	2023-08-23 10:28:31.927402
379	371	4	2023-08-23 10:28:32.341236	2023-08-23 10:28:32.341236
380	372	4	2023-08-23 10:28:32.744736	2023-08-23 10:28:32.744736
381	373	4	2023-08-23 10:28:33.144359	2023-08-23 10:28:33.144359
382	374	4	2023-08-23 10:28:33.560148	2023-08-23 10:28:33.560148
383	375	4	2023-08-23 10:28:33.977085	2023-08-23 10:28:33.977085
384	376	4	2023-08-23 10:28:34.38488	2023-08-23 10:28:34.38488
385	377	4	2023-08-23 10:28:34.779147	2023-08-23 10:28:34.779147
386	378	4	2023-08-23 10:28:35.177048	2023-08-23 10:28:35.177048
387	379	4	2023-08-23 10:28:35.575441	2023-08-23 10:28:35.575441
388	380	4	2023-08-23 10:28:35.967984	2023-08-23 10:28:35.967984
389	381	4	2023-08-23 10:28:36.364917	2023-08-23 10:28:36.364917
390	382	4	2023-08-23 10:28:36.762548	2023-08-23 10:28:36.762548
391	383	4	2023-08-23 10:28:37.162564	2023-08-23 10:28:37.162564
392	384	4	2023-08-23 10:28:37.565787	2023-08-23 10:28:37.565787
393	385	4	2023-08-23 10:28:37.962351	2023-08-23 10:28:37.962351
394	386	4	2023-08-23 10:28:38.361458	2023-08-23 10:28:38.361458
395	387	4	2023-08-23 10:28:38.759756	2023-08-23 10:28:38.759756
396	388	4	2023-08-23 10:28:39.161452	2023-08-23 10:28:39.161452
397	389	4	2023-08-23 10:28:39.55682	2023-08-23 10:28:39.55682
398	390	4	2023-08-23 10:28:39.967952	2023-08-23 10:28:39.967952
399	391	4	2023-08-23 10:28:40.365586	2023-08-23 10:28:40.365586
400	392	4	2023-08-23 10:28:40.810253	2023-08-23 10:28:40.810253
401	393	4	2023-08-23 10:28:41.232717	2023-08-23 10:28:41.232717
402	394	4	2023-08-23 10:28:41.63209	2023-08-23 10:28:41.63209
403	395	4	2023-08-23 10:28:42.035911	2023-08-23 10:28:42.035911
404	396	4	2023-08-23 10:28:42.439395	2023-08-23 10:28:42.439395
405	397	4	2023-08-23 10:28:42.838508	2023-08-23 10:28:42.838508
406	398	4	2023-08-23 10:28:43.243208	2023-08-23 10:28:43.243208
407	399	4	2023-08-23 10:28:43.654539	2023-08-23 10:28:43.654539
408	400	4	2023-08-23 10:28:44.086702	2023-08-23 10:28:44.086702
409	401	4	2023-08-23 10:28:44.481395	2023-08-23 10:28:44.481395
410	402	4	2023-08-23 10:28:44.928643	2023-08-23 10:28:44.928643
411	403	4	2023-08-23 10:28:45.36358	2023-08-23 10:28:45.36358
412	404	4	2023-08-23 10:28:45.774528	2023-08-23 10:28:45.774528
413	405	4	2023-08-23 10:28:46.185782	2023-08-23 10:28:46.185782
414	406	4	2023-08-23 10:28:46.600017	2023-08-23 10:28:46.600017
415	407	4	2023-08-23 10:28:46.999874	2023-08-23 10:28:46.999874
416	408	4	2023-08-23 10:28:47.398406	2023-08-23 10:28:47.398406
417	409	4	2023-08-23 10:28:47.80328	2023-08-23 10:28:47.80328
418	410	4	2023-08-23 10:28:48.20176	2023-08-23 10:28:48.20176
419	411	4	2023-08-23 10:28:48.603379	2023-08-23 10:28:48.603379
420	412	4	2023-08-23 10:28:49.002423	2023-08-23 10:28:49.002423
421	413	4	2023-08-23 10:28:49.396961	2023-08-23 10:28:49.396961
422	414	4	2023-08-23 10:28:49.810123	2023-08-23 10:28:49.810123
423	415	4	2023-08-23 10:28:50.213646	2023-08-23 10:28:50.213646
424	416	4	2023-08-23 10:28:50.60725	2023-08-23 10:28:50.60725
425	417	4	2023-08-23 10:28:51.006124	2023-08-23 10:28:51.006124
426	418	4	2023-08-23 10:28:51.403318	2023-08-23 10:28:51.403318
427	419	4	2023-08-23 10:28:51.801761	2023-08-23 10:28:51.801761
428	420	4	2023-08-23 10:28:52.203953	2023-08-23 10:28:52.203953
429	421	4	2023-08-23 10:28:52.607324	2023-08-23 10:28:52.607324
430	422	4	2023-08-23 10:28:53.016856	2023-08-23 10:28:53.016856
431	423	4	2023-08-23 10:28:53.431997	2023-08-23 10:28:53.431997
432	424	4	2023-08-23 10:28:53.836973	2023-08-23 10:28:53.836973
433	425	4	2023-08-23 10:28:54.24828	2023-08-23 10:28:54.24828
434	426	4	2023-08-23 10:28:54.64986	2023-08-23 10:28:54.64986
435	427	4	2023-08-23 10:28:55.067669	2023-08-23 10:28:55.067669
436	428	4	2023-08-23 10:28:55.514065	2023-08-23 10:28:55.514065
437	429	4	2023-08-23 10:28:55.911137	2023-08-23 10:28:55.911137
438	430	4	2023-08-23 10:28:56.310108	2023-08-23 10:28:56.310108
439	431	4	2023-08-23 10:28:56.707081	2023-08-23 10:28:56.707081
440	432	4	2023-08-23 10:28:57.103018	2023-08-23 10:28:57.103018
441	433	4	2023-08-23 10:28:57.494567	2023-08-23 10:28:57.494567
442	434	4	2023-08-23 10:28:57.889942	2023-08-23 10:28:57.889942
443	435	4	2023-08-23 10:28:58.287181	2023-08-23 10:28:58.287181
444	436	4	2023-08-23 10:28:58.68425	2023-08-23 10:28:58.68425
445	437	4	2023-08-23 10:28:59.088363	2023-08-23 10:28:59.088363
446	438	4	2023-08-23 10:28:59.486172	2023-08-23 10:28:59.486172
447	439	4	2023-08-23 10:28:59.88294	2023-08-23 10:28:59.88294
448	440	4	2023-08-23 10:29:00.283111	2023-08-23 10:29:00.283111
449	441	4	2023-08-23 10:29:00.690162	2023-08-23 10:29:00.690162
450	442	4	2023-08-23 10:29:01.087699	2023-08-23 10:29:01.087699
451	443	4	2023-08-23 10:29:01.489525	2023-08-23 10:29:01.489525
452	444	4	2023-08-23 10:29:01.899176	2023-08-23 10:29:01.899176
453	445	4	2023-08-23 10:29:02.312129	2023-08-23 10:29:02.312129
454	446	4	2023-08-23 10:29:02.721337	2023-08-23 10:29:02.721337
455	447	4	2023-08-23 10:29:03.128955	2023-08-23 10:29:03.128955
456	448	4	2023-08-23 10:29:03.531152	2023-08-23 10:29:03.531152
457	449	4	2023-08-23 10:29:03.935463	2023-08-23 10:29:03.935463
458	450	4	2023-08-23 10:29:04.356214	2023-08-23 10:29:04.356214
459	451	4	2023-08-23 10:29:04.77491	2023-08-23 10:29:04.77491
460	452	4	2023-08-23 10:29:05.202409	2023-08-23 10:29:05.202409
461	453	4	2023-08-23 10:29:05.665955	2023-08-23 10:29:05.665955
462	454	4	2023-08-23 10:29:06.083524	2023-08-23 10:29:06.083524
463	455	4	2023-08-23 10:29:06.500845	2023-08-23 10:29:06.500845
464	456	4	2023-08-23 10:29:06.908625	2023-08-23 10:29:06.908625
465	457	4	2023-08-23 10:29:07.332886	2023-08-23 10:29:07.332886
466	458	4	2023-08-23 10:29:07.746344	2023-08-23 10:29:07.746344
467	459	4	2023-08-23 10:29:08.157963	2023-08-23 10:29:08.157963
468	460	4	2023-08-23 10:29:08.564806	2023-08-23 10:29:08.564806
469	461	4	2023-08-23 10:29:08.972882	2023-08-23 10:29:08.972882
470	462	4	2023-08-23 10:29:09.38934	2023-08-23 10:29:09.38934
471	463	4	2023-08-23 10:29:09.829351	2023-08-23 10:29:09.829351
472	464	4	2023-08-23 10:29:10.245588	2023-08-23 10:29:10.245588
473	465	4	2023-08-23 10:29:10.660117	2023-08-23 10:29:10.660117
474	466	4	2023-08-23 10:29:11.064686	2023-08-23 10:29:11.064686
475	467	4	2023-08-23 10:29:11.48077	2023-08-23 10:29:11.48077
476	468	4	2023-08-23 10:29:11.886075	2023-08-23 10:29:11.886075
477	469	4	2023-08-23 10:29:12.321766	2023-08-23 10:29:12.321766
478	470	4	2023-08-23 10:29:12.756454	2023-08-23 10:29:12.756454
479	471	4	2023-08-23 10:29:13.15546	2023-08-23 10:29:13.15546
480	472	4	2023-08-23 10:29:13.561012	2023-08-23 10:29:13.561012
481	473	4	2023-08-23 10:29:13.958436	2023-08-23 10:29:13.958436
482	474	4	2023-08-23 10:29:14.363849	2023-08-23 10:29:14.363849
483	475	4	2023-08-23 10:29:14.772785	2023-08-23 10:29:14.772785
484	476	4	2023-08-23 10:29:15.26606	2023-08-23 10:29:15.26606
485	477	4	2023-08-23 10:29:15.682701	2023-08-23 10:29:15.682701
486	478	4	2023-08-23 10:29:16.089848	2023-08-23 10:29:16.089848
487	479	4	2023-08-23 10:29:16.522269	2023-08-23 10:29:16.522269
488	480	4	2023-08-23 10:29:16.941894	2023-08-23 10:29:16.941894
489	481	4	2023-08-23 10:29:17.345699	2023-08-23 10:29:17.345699
490	482	4	2023-08-23 10:29:17.785466	2023-08-23 10:29:17.785466
491	483	4	2023-08-23 10:29:18.195786	2023-08-23 10:29:18.195786
492	484	4	2023-08-23 10:29:18.596159	2023-08-23 10:29:18.596159
493	485	4	2023-08-23 10:29:19.006941	2023-08-23 10:29:19.006941
494	486	4	2023-08-23 10:29:19.41278	2023-08-23 10:29:19.41278
495	487	4	2023-08-23 10:29:19.840815	2023-08-23 10:29:19.840815
496	488	4	2023-08-23 10:29:20.258219	2023-08-23 10:29:20.258219
497	489	4	2023-08-23 10:29:20.661398	2023-08-23 10:29:20.661398
498	490	4	2023-08-23 10:29:21.070179	2023-08-23 10:29:21.070179
499	491	4	2023-08-23 10:29:21.47422	2023-08-23 10:29:21.47422
500	492	4	2023-08-23 10:29:21.888651	2023-08-23 10:29:21.888651
501	493	4	2023-08-23 10:29:22.385919	2023-08-23 10:29:22.385919
502	494	4	2023-08-23 10:29:22.788495	2023-08-23 10:29:22.788495
503	495	4	2023-08-23 10:29:23.191674	2023-08-23 10:29:23.191674
504	496	4	2023-08-23 10:29:23.589942	2023-08-23 10:29:23.589942
505	497	4	2023-08-23 10:29:23.991754	2023-08-23 10:29:23.991754
506	498	4	2023-08-23 10:29:24.400521	2023-08-23 10:29:24.400521
507	499	4	2023-08-23 10:29:24.821842	2023-08-23 10:29:24.821842
508	500	4	2023-08-23 10:29:25.22897	2023-08-23 10:29:25.22897
509	501	4	2023-08-23 10:29:25.64538	2023-08-23 10:29:25.64538
510	502	4	2023-08-23 10:29:26.059878	2023-08-23 10:29:26.059878
511	503	4	2023-08-23 10:29:26.477176	2023-08-23 10:29:26.477176
512	504	4	2023-08-23 10:29:26.914087	2023-08-23 10:29:26.914087
513	505	4	2023-08-23 10:29:27.365252	2023-08-23 10:29:27.365252
514	506	4	2023-08-23 10:29:27.772038	2023-08-23 10:29:27.772038
515	507	4	2023-08-23 10:29:28.182451	2023-08-23 10:29:28.182451
516	508	4	2023-08-23 10:29:28.582109	2023-08-23 10:29:28.582109
517	509	4	2023-08-23 10:29:28.991168	2023-08-23 10:29:28.991168
518	510	4	2023-08-23 10:29:29.391456	2023-08-23 10:29:29.391456
519	511	4	2023-08-23 10:29:29.8108	2023-08-23 10:29:29.8108
520	512	4	2023-08-23 10:29:30.24473	2023-08-23 10:29:30.24473
521	513	4	2023-08-23 10:29:30.687631	2023-08-23 10:29:30.687631
522	514	4	2023-08-23 10:29:31.155893	2023-08-23 10:29:31.155893
523	515	4	2023-08-23 10:29:31.584283	2023-08-23 10:29:31.584283
524	516	4	2023-08-23 10:29:32.002438	2023-08-23 10:29:32.002438
525	517	4	2023-08-23 10:29:32.4565	2023-08-23 10:29:32.4565
526	518	4	2023-08-23 10:29:32.872463	2023-08-23 10:29:32.872463
527	519	4	2023-08-23 10:29:33.287501	2023-08-23 10:29:33.287501
528	520	4	2023-08-23 10:29:33.702231	2023-08-23 10:29:33.702231
529	521	4	2023-08-23 10:29:34.134554	2023-08-23 10:29:34.134554
530	522	4	2023-08-23 10:29:34.54667	2023-08-23 10:29:34.54667
531	523	4	2023-08-23 10:29:34.971351	2023-08-23 10:29:34.971351
532	525	4	2023-08-23 10:29:35.384766	2023-08-23 10:29:35.384766
533	526	4	2023-08-23 10:29:35.800558	2023-08-23 10:29:35.800558
534	527	4	2023-08-23 10:29:36.20654	2023-08-23 10:29:36.20654
535	528	4	2023-08-23 10:29:36.606899	2023-08-23 10:29:36.606899
536	529	4	2023-08-23 10:29:37.001885	2023-08-23 10:29:37.001885
537	530	4	2023-08-23 10:29:37.396223	2023-08-23 10:29:37.396223
538	531	4	2023-08-23 10:29:37.802421	2023-08-23 10:29:37.802421
539	532	4	2023-08-23 10:29:38.233711	2023-08-23 10:29:38.233711
540	533	4	2023-08-23 10:29:38.628685	2023-08-23 10:29:38.628685
541	534	4	2023-08-23 10:29:39.021204	2023-08-23 10:29:39.021204
542	535	4	2023-08-23 10:29:39.41508	2023-08-23 10:29:39.41508
543	536	4	2023-08-23 10:29:39.828367	2023-08-23 10:29:39.828367
544	537	4	2023-08-23 10:29:40.238212	2023-08-23 10:29:40.238212
545	538	4	2023-08-23 10:29:40.653771	2023-08-23 10:29:40.653771
546	539	4	2023-08-23 10:29:41.081846	2023-08-23 10:29:41.081846
547	540	4	2023-08-23 10:29:41.479349	2023-08-23 10:29:41.479349
548	541	4	2023-08-23 10:29:41.894978	2023-08-23 10:29:41.894978
549	542	4	2023-08-23 10:29:42.342031	2023-08-23 10:29:42.342031
550	543	4	2023-08-23 10:29:42.762699	2023-08-23 10:29:42.762699
551	544	4	2023-08-23 10:29:43.162646	2023-08-23 10:29:43.162646
552	545	4	2023-08-23 10:29:43.56634	2023-08-23 10:29:43.56634
553	546	4	2023-08-23 10:29:43.971591	2023-08-23 10:29:43.971591
554	547	4	2023-08-23 10:29:44.369421	2023-08-23 10:29:44.369421
555	548	4	2023-08-23 10:29:44.764693	2023-08-23 10:29:44.764693
556	549	4	2023-08-23 10:29:45.162214	2023-08-23 10:29:45.162214
557	550	4	2023-08-23 10:29:45.554293	2023-08-23 10:29:45.554293
558	551	4	2023-08-23 10:29:45.94886	2023-08-23 10:29:45.94886
559	552	4	2023-08-23 10:29:46.342675	2023-08-23 10:29:46.342675
560	553	4	2023-08-23 10:29:46.74753	2023-08-23 10:29:46.74753
561	554	4	2023-08-23 10:29:47.142508	2023-08-23 10:29:47.142508
562	555	4	2023-08-23 10:29:47.544776	2023-08-23 10:29:47.544776
563	556	4	2023-08-23 10:29:47.944456	2023-08-23 10:29:47.944456
564	557	4	2023-08-23 10:29:48.337758	2023-08-23 10:29:48.337758
565	558	4	2023-08-23 10:29:48.754507	2023-08-23 10:29:48.754507
566	559	4	2023-08-23 10:29:49.157807	2023-08-23 10:29:49.157807
567	560	4	2023-08-23 10:29:49.552416	2023-08-23 10:29:49.552416
568	561	4	2023-08-23 10:29:49.984279	2023-08-23 10:29:49.984279
569	562	4	2023-08-23 10:29:50.392887	2023-08-23 10:29:50.392887
570	563	4	2023-08-23 10:29:50.801497	2023-08-23 10:29:50.801497
571	564	4	2023-08-23 10:29:51.200349	2023-08-23 10:29:51.200349
572	565	4	2023-08-23 10:29:51.60204	2023-08-23 10:29:51.60204
573	566	4	2023-08-23 10:29:52.013301	2023-08-23 10:29:52.013301
574	567	4	2023-08-23 10:29:52.415818	2023-08-23 10:29:52.415818
575	568	4	2023-08-23 10:29:52.810595	2023-08-23 10:29:52.810595
576	569	4	2023-08-23 10:29:53.209158	2023-08-23 10:29:53.209158
577	570	4	2023-08-23 10:29:53.603172	2023-08-23 10:29:53.603172
578	571	4	2023-08-23 10:29:54.002653	2023-08-23 10:29:54.002653
579	572	4	2023-08-23 10:29:54.398931	2023-08-23 10:29:54.398931
580	573	4	2023-08-23 10:29:54.8095	2023-08-23 10:29:54.8095
581	574	4	2023-08-23 10:29:55.215534	2023-08-23 10:29:55.215534
582	575	4	2023-08-23 10:29:55.629098	2023-08-23 10:29:55.629098
583	576	4	2023-08-23 10:29:56.023112	2023-08-23 10:29:56.023112
584	577	4	2023-08-23 10:29:56.418518	2023-08-23 10:29:56.418518
585	578	4	2023-08-23 10:29:56.81621	2023-08-23 10:29:56.81621
586	579	4	2023-08-23 10:29:57.212216	2023-08-23 10:29:57.212216
587	580	4	2023-08-23 10:29:57.611219	2023-08-23 10:29:57.611219
588	581	4	2023-08-23 10:29:58.01051	2023-08-23 10:29:58.01051
589	582	4	2023-08-23 10:29:58.406872	2023-08-23 10:29:58.406872
590	583	4	2023-08-23 10:29:58.841627	2023-08-23 10:29:58.841627
591	584	4	2023-08-23 10:29:59.23488	2023-08-23 10:29:59.23488
592	585	4	2023-08-23 10:29:59.629917	2023-08-23 10:29:59.629917
593	586	4	2023-08-23 10:30:00.033298	2023-08-23 10:30:00.033298
594	587	4	2023-08-23 10:30:00.432531	2023-08-23 10:30:00.432531
595	588	4	2023-08-23 10:30:00.826734	2023-08-23 10:30:00.826734
596	589	4	2023-08-23 10:30:01.22296	2023-08-23 10:30:01.22296
597	590	4	2023-08-23 10:30:01.632872	2023-08-23 10:30:01.632872
598	591	4	2023-08-23 10:30:02.040648	2023-08-23 10:30:02.040648
599	592	4	2023-08-23 10:30:02.452757	2023-08-23 10:30:02.452757
600	593	4	2023-08-23 10:30:02.853646	2023-08-23 10:30:02.853646
601	594	4	2023-08-23 10:30:03.252661	2023-08-23 10:30:03.252661
602	595	4	2023-08-23 10:30:03.659814	2023-08-23 10:30:03.659814
603	596	4	2023-08-23 10:30:04.0772	2023-08-23 10:30:04.0772
604	597	4	2023-08-23 10:30:04.495271	2023-08-23 10:30:04.495271
605	598	4	2023-08-23 10:30:04.903032	2023-08-23 10:30:04.903032
606	599	4	2023-08-23 10:30:05.332055	2023-08-23 10:30:05.332055
607	600	4	2023-08-23 10:30:05.792915	2023-08-23 10:30:05.792915
608	601	4	2023-08-23 10:30:06.326261	2023-08-23 10:30:06.326261
609	602	4	2023-08-23 10:30:06.794937	2023-08-23 10:30:06.794937
610	603	4	2023-08-23 10:30:07.232268	2023-08-23 10:30:07.232268
611	604	4	2023-08-23 10:30:07.652714	2023-08-23 10:30:07.652714
612	605	4	2023-08-23 10:30:08.073552	2023-08-23 10:30:08.073552
613	606	4	2023-08-23 10:30:08.492576	2023-08-23 10:30:08.492576
614	607	4	2023-08-23 10:30:08.908218	2023-08-23 10:30:08.908218
615	608	4	2023-08-23 10:30:09.38058	2023-08-23 10:30:09.38058
616	609	4	2023-08-23 10:30:09.79844	2023-08-23 10:30:09.79844
617	610	4	2023-08-23 10:30:10.203867	2023-08-23 10:30:10.203867
618	611	4	2023-08-23 10:30:10.622906	2023-08-23 10:30:10.622906
619	612	4	2023-08-23 10:30:11.036221	2023-08-23 10:30:11.036221
620	613	4	2023-08-23 10:30:11.458839	2023-08-23 10:30:11.458839
621	614	4	2023-08-23 10:30:11.866486	2023-08-23 10:30:11.866486
622	615	4	2023-08-23 10:30:12.310077	2023-08-23 10:30:12.310077
623	616	4	2023-08-23 10:30:12.723791	2023-08-23 10:30:12.723791
624	617	4	2023-08-23 10:30:13.125085	2023-08-23 10:30:13.125085
625	618	4	2023-08-23 10:30:13.524041	2023-08-23 10:30:13.524041
626	619	4	2023-08-23 10:30:13.927447	2023-08-23 10:30:13.927447
627	620	4	2023-08-23 10:30:14.329588	2023-08-23 10:30:14.329588
628	621	4	2023-08-23 10:30:14.728768	2023-08-23 10:30:14.728768
629	622	4	2023-08-23 10:30:15.134118	2023-08-23 10:30:15.134118
630	623	4	2023-08-23 10:30:15.538807	2023-08-23 10:30:15.538807
631	624	4	2023-08-23 10:30:15.943028	2023-08-23 10:30:15.943028
632	625	4	2023-08-23 10:30:16.357284	2023-08-23 10:30:16.357284
633	626	4	2023-08-23 10:30:16.76994	2023-08-23 10:30:16.76994
634	627	4	2023-08-23 10:30:17.179305	2023-08-23 10:30:17.179305
635	628	4	2023-08-23 10:30:17.585516	2023-08-23 10:30:17.585516
636	629	4	2023-08-23 10:30:17.99399	2023-08-23 10:30:17.99399
637	630	4	2023-08-23 10:30:18.398088	2023-08-23 10:30:18.398088
638	631	4	2023-08-23 10:30:18.79876	2023-08-23 10:30:18.79876
639	632	4	2023-08-23 10:30:19.204672	2023-08-23 10:30:19.204672
640	633	4	2023-08-23 10:30:19.629185	2023-08-23 10:30:19.629185
641	634	4	2023-08-23 10:30:20.053316	2023-08-23 10:30:20.053316
642	635	4	2023-08-23 10:30:20.458001	2023-08-23 10:30:20.458001
643	636	4	2023-08-23 10:30:20.866989	2023-08-23 10:30:20.866989
644	637	4	2023-08-23 10:30:21.269542	2023-08-23 10:30:21.269542
645	638	4	2023-08-23 10:30:21.671917	2023-08-23 10:30:21.671917
646	639	4	2023-08-23 10:30:22.078293	2023-08-23 10:30:22.078293
647	640	4	2023-08-23 10:30:22.484271	2023-08-23 10:30:22.484271
648	641	4	2023-08-23 10:30:22.885732	2023-08-23 10:30:22.885732
649	642	4	2023-08-23 10:30:23.289973	2023-08-23 10:30:23.289973
650	643	4	2023-08-23 10:30:23.690745	2023-08-23 10:30:23.690745
651	644	4	2023-08-23 10:30:24.09966	2023-08-23 10:30:24.09966
652	645	4	2023-08-23 10:30:24.505726	2023-08-23 10:30:24.505726
653	646	4	2023-08-23 10:30:24.906153	2023-08-23 10:30:24.906153
654	647	4	2023-08-23 10:30:25.311625	2023-08-23 10:30:25.311625
655	648	4	2023-08-23 10:30:25.713558	2023-08-23 10:30:25.713558
656	649	4	2023-08-23 10:30:26.116706	2023-08-23 10:30:26.116706
657	650	4	2023-08-23 10:30:26.523288	2023-08-23 10:30:26.523288
658	651	4	2023-08-23 10:30:26.925166	2023-08-23 10:30:26.925166
659	652	4	2023-08-23 10:30:27.32721	2023-08-23 10:30:27.32721
660	653	4	2023-08-23 10:30:27.728124	2023-08-23 10:30:27.728124
661	654	4	2023-08-23 10:30:28.12839	2023-08-23 10:30:28.12839
662	655	4	2023-08-23 10:30:28.531446	2023-08-23 10:30:28.531446
663	656	4	2023-08-23 10:30:28.929516	2023-08-23 10:30:28.929516
664	657	4	2023-08-23 10:30:29.3313	2023-08-23 10:30:29.3313
665	658	4	2023-08-23 10:30:29.754822	2023-08-23 10:30:29.754822
666	659	4	2023-08-23 10:30:30.164629	2023-08-23 10:30:30.164629
667	660	4	2023-08-23 10:30:30.645535	2023-08-23 10:30:30.645535
668	661	4	2023-08-23 10:30:31.075131	2023-08-23 10:30:31.075131
669	662	4	2023-08-23 10:30:31.505415	2023-08-23 10:30:31.505415
670	663	4	2023-08-23 10:30:31.914315	2023-08-23 10:30:31.914315
671	664	4	2023-08-23 10:30:32.335328	2023-08-23 10:30:32.335328
672	665	4	2023-08-23 10:30:32.753273	2023-08-23 10:30:32.753273
673	666	4	2023-08-23 10:30:33.180567	2023-08-23 10:30:33.180567
674	667	4	2023-08-23 10:30:33.594109	2023-08-23 10:30:33.594109
675	668	4	2023-08-23 10:30:34.002441	2023-08-23 10:30:34.002441
676	669	4	2023-08-23 10:30:34.406619	2023-08-23 10:30:34.406619
677	670	4	2023-08-23 10:30:34.815564	2023-08-23 10:30:34.815564
678	671	4	2023-08-23 10:30:35.222057	2023-08-23 10:30:35.222057
679	673	4	2023-08-23 10:30:35.631095	2023-08-23 10:30:35.631095
680	674	4	2023-08-23 10:30:36.027717	2023-08-23 10:30:36.027717
681	675	4	2023-08-23 10:30:36.431571	2023-08-23 10:30:36.431571
682	676	4	2023-08-23 10:30:36.84798	2023-08-23 10:30:36.84798
683	677	4	2023-08-23 10:30:37.257539	2023-08-23 10:30:37.257539
684	678	4	2023-08-23 10:30:37.660107	2023-08-23 10:30:37.660107
685	679	4	2023-08-23 10:30:38.098666	2023-08-23 10:30:38.098666
686	680	4	2023-08-23 10:30:38.501514	2023-08-23 10:30:38.501514
687	681	4	2023-08-23 10:30:38.935458	2023-08-23 10:30:38.935458
688	682	4	2023-08-23 10:30:39.331986	2023-08-23 10:30:39.331986
689	683	4	2023-08-23 10:30:39.735711	2023-08-23 10:30:39.735711
690	684	4	2023-08-23 10:30:40.198339	2023-08-23 10:30:40.198339
691	685	4	2023-08-23 10:30:40.597931	2023-08-23 10:30:40.597931
692	686	4	2023-08-23 10:30:41.01343	2023-08-23 10:30:41.01343
693	687	4	2023-08-23 10:30:41.405959	2023-08-23 10:30:41.405959
694	688	4	2023-08-23 10:30:41.83538	2023-08-23 10:30:41.83538
695	689	4	2023-08-23 10:30:42.243985	2023-08-23 10:30:42.243985
696	690	4	2023-08-23 10:30:42.644215	2023-08-23 10:30:42.644215
697	691	4	2023-08-23 10:30:43.049224	2023-08-23 10:30:43.049224
698	692	4	2023-08-23 10:30:43.446459	2023-08-23 10:30:43.446459
699	693	4	2023-08-23 10:30:43.839884	2023-08-23 10:30:43.839884
700	694	4	2023-08-23 10:30:44.259007	2023-08-23 10:30:44.259007
701	695	4	2023-08-23 10:30:44.65749	2023-08-23 10:30:44.65749
702	696	4	2023-08-23 10:30:45.092719	2023-08-23 10:30:45.092719
703	697	4	2023-08-23 10:30:45.494197	2023-08-23 10:30:45.494197
704	698	4	2023-08-23 10:30:45.900401	2023-08-23 10:30:45.900401
705	699	4	2023-08-23 10:30:46.295704	2023-08-23 10:30:46.295704
706	700	4	2023-08-23 10:30:46.68911	2023-08-23 10:30:46.68911
707	701	4	2023-08-23 10:30:47.084433	2023-08-23 10:30:47.084433
708	702	4	2023-08-23 10:30:47.478151	2023-08-23 10:30:47.478151
709	703	4	2023-08-23 10:30:47.878339	2023-08-23 10:30:47.878339
710	704	4	2023-08-23 10:30:48.276493	2023-08-23 10:30:48.276493
711	705	4	2023-08-23 10:30:48.670788	2023-08-23 10:30:48.670788
712	706	4	2023-08-23 10:30:49.06429	2023-08-23 10:30:49.06429
713	707	4	2023-08-23 10:30:49.468225	2023-08-23 10:30:49.468225
714	708	4	2023-08-23 10:30:50.034242	2023-08-23 10:30:50.034242
715	709	4	2023-08-23 10:30:50.485036	2023-08-23 10:30:50.485036
716	710	4	2023-08-23 10:30:50.890892	2023-08-23 10:30:50.890892
717	711	4	2023-08-23 10:30:51.287683	2023-08-23 10:30:51.287683
718	712	4	2023-08-23 10:30:51.682397	2023-08-23 10:30:51.682397
719	713	4	2023-08-23 10:30:52.130422	2023-08-23 10:30:52.130422
720	714	4	2023-08-23 10:30:52.599442	2023-08-23 10:30:52.599442
721	715	4	2023-08-23 10:30:53.034735	2023-08-23 10:30:53.034735
722	716	4	2023-08-23 10:30:53.477724	2023-08-23 10:30:53.477724
723	717	4	2023-08-23 10:30:53.882531	2023-08-23 10:30:53.882531
724	718	4	2023-08-23 10:30:54.288517	2023-08-23 10:30:54.288517
725	719	4	2023-08-23 10:30:54.698618	2023-08-23 10:30:54.698618
726	720	4	2023-08-23 10:30:55.103457	2023-08-23 10:30:55.103457
727	721	4	2023-08-23 10:30:55.502256	2023-08-23 10:30:55.502256
728	722	4	2023-08-23 10:30:55.903144	2023-08-23 10:30:55.903144
729	723	4	2023-08-23 10:30:56.297494	2023-08-23 10:30:56.297494
730	724	4	2023-08-23 10:30:56.6908	2023-08-23 10:30:56.6908
731	725	4	2023-08-23 10:30:57.084986	2023-08-23 10:30:57.084986
732	726	4	2023-08-23 10:30:57.481549	2023-08-23 10:30:57.481549
733	727	4	2023-08-23 10:30:57.878129	2023-08-23 10:30:57.878129
734	728	4	2023-08-23 10:30:58.28021	2023-08-23 10:30:58.28021
735	729	4	2023-08-23 10:30:58.681521	2023-08-23 10:30:58.681521
736	730	4	2023-08-23 10:30:59.074879	2023-08-23 10:30:59.074879
737	731	4	2023-08-23 10:30:59.466594	2023-08-23 10:30:59.466594
738	732	4	2023-08-23 10:30:59.874481	2023-08-23 10:30:59.874481
739	733	4	2023-08-23 10:31:00.295092	2023-08-23 10:31:00.295092
740	734	4	2023-08-23 10:31:00.697944	2023-08-23 10:31:00.697944
741	735	4	2023-08-23 10:31:01.094998	2023-08-23 10:31:01.094998
742	736	4	2023-08-23 10:31:01.504704	2023-08-23 10:31:01.504704
743	737	4	2023-08-23 10:31:01.937045	2023-08-23 10:31:01.937045
744	738	4	2023-08-23 10:31:02.349805	2023-08-23 10:31:02.349805
745	739	4	2023-08-23 10:31:02.755735	2023-08-23 10:31:02.755735
746	740	4	2023-08-23 10:31:03.155761	2023-08-23 10:31:03.155761
747	741	4	2023-08-23 10:31:03.554993	2023-08-23 10:31:03.554993
748	742	4	2023-08-23 10:31:03.965214	2023-08-23 10:31:03.965214
749	743	4	2023-08-23 10:31:04.37788	2023-08-23 10:31:04.37788
750	744	4	2023-08-23 10:31:04.812641	2023-08-23 10:31:04.812641
751	745	4	2023-08-23 10:31:05.261394	2023-08-23 10:31:05.261394
752	746	4	2023-08-23 10:31:05.725916	2023-08-23 10:31:05.725916
753	747	4	2023-08-23 10:31:06.169266	2023-08-23 10:31:06.169266
754	748	4	2023-08-23 10:31:06.604101	2023-08-23 10:31:06.604101
755	749	4	2023-08-23 10:31:07.042017	2023-08-23 10:31:07.042017
756	750	4	2023-08-23 10:31:07.470301	2023-08-23 10:31:07.470301
757	751	4	2023-08-23 10:31:07.91214	2023-08-23 10:31:07.91214
758	752	4	2023-08-23 10:31:08.334193	2023-08-23 10:31:08.334193
759	753	4	2023-08-23 10:31:08.763415	2023-08-23 10:31:08.763415
760	754	4	2023-08-23 10:31:09.182706	2023-08-23 10:31:09.182706
761	755	4	2023-08-23 10:31:09.614703	2023-08-23 10:31:09.614703
762	756	4	2023-08-23 10:31:10.044939	2023-08-23 10:31:10.044939
763	757	4	2023-08-23 10:31:10.49003	2023-08-23 10:31:10.49003
764	758	4	2023-08-23 10:31:10.90326	2023-08-23 10:31:10.90326
765	759	4	2023-08-23 10:31:11.314301	2023-08-23 10:31:11.314301
766	760	4	2023-08-23 10:31:11.716487	2023-08-23 10:31:11.716487
767	761	4	2023-08-23 10:31:12.142412	2023-08-23 10:31:12.142412
768	762	4	2023-08-23 10:31:12.568497	2023-08-23 10:31:12.568497
769	763	4	2023-08-23 10:31:12.978651	2023-08-23 10:31:12.978651
770	764	4	2023-08-23 10:31:13.394127	2023-08-23 10:31:13.394127
771	765	4	2023-08-23 10:31:13.810511	2023-08-23 10:31:13.810511
772	766	4	2023-08-23 10:31:14.224693	2023-08-23 10:31:14.224693
773	767	4	2023-08-23 10:31:14.632895	2023-08-23 10:31:14.632895
774	768	4	2023-08-23 10:31:15.048346	2023-08-23 10:31:15.048346
775	769	4	2023-08-23 10:31:15.462462	2023-08-23 10:31:15.462462
776	770	4	2023-08-23 10:31:15.874937	2023-08-23 10:31:15.874937
777	771	4	2023-08-23 10:31:16.293829	2023-08-23 10:31:16.293829
778	772	4	2023-08-23 10:31:16.710702	2023-08-23 10:31:16.710702
779	773	4	2023-08-23 10:31:17.124049	2023-08-23 10:31:17.124049
780	774	4	2023-08-23 10:31:17.533966	2023-08-23 10:31:17.533966
781	775	4	2023-08-23 10:31:17.933518	2023-08-23 10:31:17.933518
782	776	4	2023-08-23 10:31:18.336721	2023-08-23 10:31:18.336721
783	777	4	2023-08-23 10:31:18.748981	2023-08-23 10:31:18.748981
784	778	4	2023-08-23 10:31:19.16528	2023-08-23 10:31:19.16528
785	779	4	2023-08-23 10:31:19.573937	2023-08-23 10:31:19.573937
786	780	4	2023-08-23 10:31:19.999518	2023-08-23 10:31:19.999518
787	781	4	2023-08-23 10:31:20.44423	2023-08-23 10:31:20.44423
788	782	4	2023-08-23 10:31:20.855115	2023-08-23 10:31:20.855115
789	783	4	2023-08-23 10:31:21.327113	2023-08-23 10:31:21.327113
790	784	4	2023-08-23 10:31:21.73936	2023-08-23 10:31:21.73936
791	785	4	2023-08-23 10:31:22.15232	2023-08-23 10:31:22.15232
792	786	4	2023-08-23 10:31:22.580509	2023-08-23 10:31:22.580509
793	787	4	2023-08-23 10:31:23.036564	2023-08-23 10:31:23.036564
794	788	4	2023-08-23 10:31:23.48737	2023-08-23 10:31:23.48737
795	789	4	2023-08-23 10:31:23.973194	2023-08-23 10:31:23.973194
796	790	4	2023-08-23 10:31:24.432566	2023-08-23 10:31:24.432566
797	791	4	2023-08-23 10:31:24.903741	2023-08-23 10:31:24.903741
798	792	4	2023-08-23 10:31:25.323548	2023-08-23 10:31:25.323548
799	793	4	2023-08-23 10:31:25.738598	2023-08-23 10:31:25.738598
800	794	4	2023-08-23 10:31:26.148989	2023-08-23 10:31:26.148989
801	795	4	2023-08-23 10:31:26.590232	2023-08-23 10:31:26.590232
802	796	4	2023-08-23 10:31:27.000784	2023-08-23 10:31:27.000784
\.


                                                                                                                                                                  3540.dat                                                                                            0000600 0004000 0002000 00000004314 14472000421 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	admin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 05:00:53.672825	2023-06-29 01:52:02.822691
3	kepala divisi	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:49:11.793967	2023-06-29 15:00:51.917714
4	user	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:50:21.335092	2023-06-29 15:01:06.987889
7	manajer it	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-17 00:27:15.049665	2023-07-13 02:27:57.326337
5	teknisi	---\n:role:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:user:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 02:44:53.585416	2023-08-22 11:04:29.068194
1	superadmin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-12 03:56:11.291227	2023-08-22 11:08:51.863542
\.


                                                                                                                                                                                                                                                                                                                    3542.dat                                                                                            0000600 0004000 0002000 00000001666 14472000421 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20201108145313
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
20230710140326
20230807022916
20230807041854
20230807041916
20230817140340
20230818083002
20230818143544
20230819021455
20230819022327
\.


                                                                          3558.dat                                                                                            0000600 0004000 0002000 00000010042 14472000421 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        184	mohamad.rinaldi@pt-sena.co.id	476	9468	sent	2023-08-24 14:01:29.126462	2023-08-24 14:01:39.972598
185	fauzirinaldi76@gmail.com	476	4457	sent	2023-08-24 14:02:46.108163	2023-08-24 14:02:54.854332
146	mohamad.rinaldi@pt-sena.co.id	449	8927	sent	2023-08-22 10:51:08.933062	2023-08-22 10:51:19.523907
147	fauzirinaldi76@gmail.com	449	1751	sent	2023-08-22 10:51:37.213825	2023-08-22 10:51:46.834348
148	mohamad.rinaldi@pt-sena.co.id	450	1943	sent	2023-08-23 00:58:29.10675	2023-08-23 00:58:38.023613
149	fauzirinaldi76@gmail.com	450	8945	sent	2023-08-23 01:16:09.916203	2023-08-23 01:16:14.581624
150	rinalfauzi@gmail.com	451	1442	sent	2023-08-23 01:39:02.613397	2023-08-23 01:39:11.482364
151	gantengkampret970@gmail.com	451	9559	sent	2023-08-23 01:46:30.659046	2023-08-23 01:49:05.922495
152	fauzirinaldi76@gmail.com	451	4038	sent	2023-08-23 01:50:02.691163	2023-08-23 01:50:11.949428
153	rinalfauzi@gmail.com	452	9276	sent	2023-08-23 02:05:10.740249	2023-08-23 02:05:16.872158
154	mohamad.rinaldi@pt-sena.co.id	452	1285	sent	2023-08-23 02:06:39.056297	2023-08-23 02:06:48.64667
155	rinalfauzi@gmail.com	453	9750	sent	2023-08-23 02:08:30.896437	2023-08-23 02:08:35.918545
156	gantengkampret970@gmail.com	453	7309	sent	2023-08-23 02:08:51.497533	2023-08-23 02:09:00.546135
157	rinalfauzi@gmail.com	454	2403	sent	2023-08-23 02:21:25.986144	2023-08-23 02:21:31.816705
158	fauzirinaldi76@gmail.com	454	2352	sent	2023-08-23 02:30:32.679874	2023-08-23 02:30:40.770783
159	testingajah93@gmail.com	455	7553	sent	2023-08-23 02:39:48.839517	2023-08-23 02:39:54.842303
160	mohamad.rinaldi@pt-sena.co.id	455	4574	sent	2023-08-23 02:40:21.080753	2023-08-23 02:40:29.724129
161	fauzirinaldi76@gmail.com	455	8884	sent	2023-08-23 02:40:45.72545	2023-08-23 02:40:55.774747
162	mohamad.rinaldi@pt-sena.co.id	456	2811	sent	2023-08-23 02:58:40.335021	2023-08-23 02:58:49.415031
163	fauzirinaldi76@gmail.com	456	4538	sent	2023-08-23 03:01:18.084188	2023-08-23 03:01:27.019008
164	rinalfauzi@gmail.com	457	4729	sent	2023-08-24 01:37:21.166978	2023-08-24 01:37:34.392114
165	fauzirinaldi76@gmail.com	457	5223	sent	2023-08-24 01:39:34.969961	2023-08-24 01:39:43.965364
166	fauzirinaldi76@gmail.com	459	4434	sent	2023-08-24 01:52:07.92138	2023-08-24 01:52:15.642726
167	fauzirinaldi76@gmail.com	460	6180	sent	2023-08-24 01:58:50.535935	2023-08-24 01:59:00.283212
168	rinalfauzi@gmail.com	462	3552	sent	2023-08-24 05:33:32.61938	2023-08-24 05:33:41.872854
169	gantengkampret970@gmail.com	462	1165	sent	2023-08-24 05:35:53.025444	2023-08-24 05:36:00.234744
170	mohamad.rinaldi@pt-sena.co.id	463	4209	sent	2023-08-24 13:15:47.976011	2023-08-24 13:15:59.29193
171	fauzirinaldi76@gmail.com	463	2956	sent	2023-08-24 13:16:28.512617	2023-08-24 13:16:37.094739
172	mohamad.rinaldi@pt-sena.co.id	464	2908	not-yet-sent	2023-08-24 13:31:24.147526	2023-08-24 13:31:24.147526
173	mohamad.rinaldi@pt-sena.co.id	465	4673	not-yet-sent	2023-08-24 13:34:38.063167	2023-08-24 13:34:38.063167
174	mohamad.rinaldi@pt-sena.co.id	466	3456	not-yet-sent	2023-08-24 13:38:34.856337	2023-08-24 13:38:34.856337
175	mohamad.rinaldi@pt-sena.co.id	467	2681	not-yet-sent	2023-08-24 13:40:40.218866	2023-08-24 13:40:40.218866
176	mohamad.rinaldi@pt-sena.co.id	468	5776	not-yet-sent	2023-08-24 13:42:01.030267	2023-08-24 13:42:01.030267
177	mohamad.rinaldi@pt-sena.co.id	469	7452	sent	2023-08-24 13:44:29.687448	2023-08-24 13:44:39.35787
178	mohamad.rinaldi@pt-sena.co.id	470	9808	not-yet-sent	2023-08-24 13:45:34.571857	2023-08-24 13:45:34.571857
179	mohamad.rinaldi@pt-sena.co.id	471	7925	sent	2023-08-24 13:46:45.091978	2023-08-24 13:46:56.174647
180	mohamad.rinaldi@pt-sena.co.id	472	5536	not-yet-sent	2023-08-24 13:49:20.109369	2023-08-24 13:49:20.109369
181	mohamad.rinaldi@pt-sena.co.id	473	2662	sent	2023-08-24 13:52:00.925451	2023-08-24 13:52:15.009718
182	mohamad.rinaldi@pt-sena.co.id	474	4798	not-yet-sent	2023-08-24 13:53:39.586298	2023-08-24 13:53:39.586298
183	mohamad.rinaldi@pt-sena.co.id	475	2036	not-yet-sent	2023-08-24 13:56:00.035581	2023-08-24 13:56:00.035581
186	mohamad.rinaldi@pt-sena.co.id	477	1224	sent	2023-08-24 14:04:44.40764	2023-08-24 14:04:56.176618
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3543.dat                                                                                            0000600 0004000 0002000 00000000300 14472000421 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	9	24	t	2023-06-15 03:21:26.71204	2023-06-15 03:21:26.71204
6	11	24	t	2023-06-15 03:21:42.73797	2023-06-16 10:43:13.811795
4	8	19	t	2023-06-15 03:20:09.939512	2023-07-13 04:32:53.634667
\.


                                                                                                                                                                                                                                                                                                                                3545.dat                                                                                            0000600 0004000 0002000 00000003065 14472000421 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22	8	Konfigurasi Printer	2023-06-15 03:19:37.898767	2023-06-24 16:33:01.495861	low	\N
21	9	Konfigurasi Desktop	2023-06-15 03:19:28.937122	2023-06-24 16:33:15.433401	none	\N
20	9	Konfigurasi Gadget	2023-06-15 03:19:12.33967	2023-06-24 16:33:20.317899	none	\N
19	9	Installasi & Reparasi PABX	2023-06-15 03:18:56.518457	2023-06-24 16:33:34.223194	low	\N
18	9	Konfigurasi Jaringan LAN	2023-06-15 03:18:30.318314	2023-06-24 16:33:42.772966	low	\N
17	8	Pembuatan Aplikasi Baru	2023-06-15 03:18:06.097485	2023-06-24 16:33:49.587657	low	\N
16	8	Konfigurasi Aplikasi Engineering	2023-06-15 03:17:38.163613	2023-06-24 16:33:57.527806	medium	\N
15	8	Konfigurasi Aplikasi Browser	2023-06-15 03:17:17.83664	2023-06-24 16:34:04.112571	low	\N
14	8	Konfigurasi Sistem Operasi	2023-06-15 03:17:02.877044	2023-06-24 16:34:11.328183	none	\N
13	8	Konfigurasi Aplikasi Office	2023-06-15 03:16:38.780508	2023-06-24 16:34:27.727678	none	\N
23	12	Onboard	2023-07-03 04:04:28.114591	2023-07-05 03:04:09.70897	none	Nama :\nSatuan Kerja :\nJabatan :\n\nAsset yang diperlukan :\n1.
24	12	Exit Clearance	2023-07-03 04:24:17.99103	2023-07-13 04:26:04.719155	none	Nama :\nSatuan Kerja :\nJabatan :\n\nAsset yang dipulangkan :\n1. 
26	13	Reset password	2023-07-13 07:17:11.3636	2023-07-13 07:17:11.3636	none	Nama :\nDivisi :\nJabatan :
25	8	Pembelian Lisence	2023-07-05 04:40:55.430212	2023-07-17 00:47:39.538248	medium	Nama :\nJabatan :\nSoftware :
27	8	Error / Enhancement Aplikasi	2023-08-10 03:28:40.001466	2023-08-10 03:28:40.001466	none	
28	14	Laptop	2023-08-18 02:54:12.776917	2023-08-18 02:54:12.776917	low	
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3547.dat                                                                                            0000600 0004000 0002000 00000000005 14472000421 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3549.dat                                                                                            0000600 0004000 0002000 00000004473 14472000421 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        452	8	22	1	user.engineering	Tolong di setting	2023-08-23 02:05:10.639922	2023-08-23 02:07:42.295062	5	rejected	\N	202308004	yaqub	\N	\N	\N	f	\N	\N
453	8	22	3	user.engineering	tolong disetting yaa	2023-08-23 02:08:30.808044	2023-08-23 02:08:51.453264	5	approval1	\N	202308005	agung	\N	\N	\N	f	\N	7309
477	8	22	1	user.komersial	tesss	2023-08-24 14:04:44.228724	2023-08-24 14:04:44.402131	5	created	\N	202308015	yaqub	\N	\N	\N	f	\N	1224
460	8	22	1	agung	tolong cek printer gw donggss	2023-08-24 01:58:50.309001	2023-08-24 23:26:09.95559	5	overdue	fauzan	202308010	adit	2023-08-24 02:15:45.5927	2023-08-24 02:15:45.592894	\N	f	\N	\N
462	8	16	3	user.engineering	testing ajah	2023-08-24 05:33:32.362529	2023-08-24 05:36:31.227657	5	rejected	\N	202308012	agung	\N	\N	\N	f	\N	\N
457	8	22	3	user.engineering	Tolong di setting yaa	2023-08-24 01:37:20.918088	2023-08-24 12:01:25.65674	5	open	\N	202308009	adit	\N	\N	\N	f	\N	\N
454	8	22	3	user.engineering	testing	2023-08-23 02:21:25.883988	2023-08-24 12:01:30.822241	5	open	\N	202308006	adit	\N	\N	\N	f	\N	\N
461	8	22	3	adit	tolongg yaaa pak SBK gk bisa buka outlook	2023-08-24 02:17:29.008749	2023-08-24 12:03:30.380999	5	open	fauzan	202308011	\N	\N	2023-08-24 02:33:16.093707	\N	t	9.5	\N
455	8	22	1	user.komersial	testingg ajahh lahh	2023-08-23 02:39:48.619776	2023-08-23 02:41:30.59547	5	open	\N	202308007	adit	\N	\N	\N	f	\N	\N
450	8	22	1	user.komersial	testing ajah lahhh	2023-08-23 00:58:28.878692	2023-08-23 01:32:39.366534	5	open	\N	202308002	adit	\N	\N	\N	f	\N	\N
463	14	28	1	user.komersial	Pengajuan laptop untuk user onboard a/n Febby (Analis Komersial)	2023-08-24 13:15:47.806067	2023-08-24 13:16:28.476925	5	approval3	\N	202308013	adit	\N	\N	\N	f	\N	2956
456	8	22	1	user.komersial	testinggg ajah pake ngrok	2023-08-23 02:58:40.113003	2023-08-23 03:03:11.820443	5	open	\N	202308008	adit	\N	\N	\N	f	\N	\N
449	8	22	1	user.komersial	testt	2023-08-22 10:51:08.804191	2023-08-23 10:07:09.504495	5	overdue	riki	202308001	adit	2023-08-22 13:49:55.013079	2023-08-22 13:49:55.013194	\N	f	\N	\N
451	8	16	3	user.engineering	Ada kebutuhan aplikasi AutoCAD mohon untuk diproses, terimakasih.	2023-08-23 01:39:02.422694	2023-08-23 01:50:24.841895	5	open	\N	202308003	adit	\N	\N	\N	f	\N	\N
476	8	22	1	user.komersial	tes	2023-08-24 14:01:29.012622	2023-08-24 14:02:46.072183	5	approval3	\N	202308014	adit	\N	\N	\N	f	\N	4457
\.


                                                                                                                                                                                                     3556.dat                                                                                            0000600 0004000 0002000 00000053715 14472000421 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        30	["Couldn't find Area with 'id'=90", "rinaldi"]	2023-08-07 08:45:13.386383	2023-08-07 08:45:13.386383	areas	detail
31	["undefined method `las' for #<Ticket::ActiveRecord_Relation:0x0000004034601ea8>\\nDid you mean?  last", "rinaldi"]	2023-08-07 08:50:39.145629	2023-08-07 08:50:39.145629	tickets	listForm
32	["Couldn't find Sla with 'id'=9001", "riki"]	2023-08-08 04:29:14.383667	2023-08-08 04:29:14.383667	slas	delete
33	["uninitialized constant Transaksi::TicketsController::NumberingTietService", "arief"]	2023-08-09 07:28:59.248046	2023-08-09 07:28:59.248046	tickets	listForm
34	["undefined method `inprogress_respon' for #<Ticket::ActiveRecord_Relation:0x0000004026475ae8>", "rinaldi"]	2023-08-15 01:15:41.057368	2023-08-15 01:15:41.057368	teknisi	eskalasi
35	["uninitialized constant Transaksi::TeknisiController::Ticket", "rinaldi"]	2023-08-15 01:24:26.697939	2023-08-15 01:24:26.697939	teknisi	proccessTicket
36	["undefined method `file_ticket' for #<Transaksi::Ticket:0x000000401e00ab78>", "rinaldi"]	2023-08-16 00:48:08.251568	2023-08-16 00:48:08.251568	tickets	detail
37	["undefined method `approval_confirmaon' for UserMailer:Class", "rinaldi"]	2023-08-16 00:58:59.370548	2023-08-16 00:58:59.370548	tickets	create
38	["getaddrinfo: Name or service not known", "rinaldi"]	2023-08-16 01:08:48.994019	2023-08-16 01:08:48.994019	tickets	create
39	["getaddrinfo: Name or service not known", "rinaldi"]	2023-08-16 01:15:06.980679	2023-08-16 01:15:06.980679	tickets	create
40	["getaddrinfo: Name or service not known", "rinaldi"]	2023-08-16 01:17:31.744118	2023-08-16 01:17:31.744118	tickets	create
41	["getaddrinfo: Name or service not known", "rinaldi"]	2023-08-16 01:19:21.833206	2023-08-16 01:19:21.833206	tickets	create
90	["Timeout::Error", "rinaldi"]	2023-08-19 06:23:28.269895	2023-08-19 06:23:28.269895	tickets	create
91	["no implicit conversion of Symbol into String", "rinaldi"]	2023-08-19 06:27:08.61081	2023-08-19 06:27:08.61081	tickets	create
92	["no implicit conversion of Symbol into String", "rinaldi"]	2023-08-19 06:28:21.931699	2023-08-19 06:28:21.931699	tickets	create
93	["Timeout::Error", "rinaldi"]	2023-08-19 06:31:58.980108	2023-08-19 06:31:58.980108	tickets	create
94	["Timeout::Error", "rinaldi"]	2023-08-19 06:34:05.026444	2023-08-19 06:34:05.026444	tickets	create
95	["NOT_FOUND - no exchange 'ticket.posts' in vhost '/'", "rinaldi"]	2023-08-19 06:34:43.036465	2023-08-19 06:34:43.036465	tickets	create
96	["undefined method `gsub' for #<Hash:0x0000004007ae7350>", "rinaldi"]	2023-08-19 06:47:10.810826	2023-08-19 06:47:10.810826	tickets	create
97	["Timeout::Error", "rinaldi"]	2023-08-19 06:52:08.588476	2023-08-19 06:52:08.588476	tickets	create
98	["Cannot assign requested address - connect(2) for [::1]:6379", "user.komersial"]	2023-08-19 16:34:23.812476	2023-08-19 16:34:23.812476	tickets	create
99	["Cannot assign requested address - connect(2) for [::1]:6379", "user.komersial"]	2023-08-19 16:48:34.411166	2023-08-19 16:48:34.411166	tickets	create
100	["uninitialized constant Transaksi::TicketsController::Ticket", "user.komersial"]	2023-08-20 02:26:27.888634	2023-08-20 02:26:27.888634	tickets	detail
101	["uninitialized constant Transaksi::TicketsController::Ticket", "user.komersial"]	2023-08-20 02:26:32.134845	2023-08-20 02:26:32.134845	tickets	detail
102	["uninitialized constant Transaksi::TicketsController::Ticket", "user.komersial"]	2023-08-20 02:26:37.550583	2023-08-20 02:26:37.550583	tickets	detail
103	["Please supply a numeric number of seconds", "user.komersial"]	2023-08-20 13:27:46.427969	2023-08-20 13:27:46.427969	tickets	create
104	["Please supply a numeric number of seconds", "user.komersial"]	2023-08-20 13:27:52.001145	2023-08-20 13:27:52.001145	tickets	create
105	["Please supply a numeric number of seconds", "user.komersial"]	2023-08-20 13:39:16.988206	2023-08-20 13:39:16.988206	tickets	create
106	["undefined method `/' for Mon, 21 Aug 2023 09:18:08 WIB +07:00:Time", "user.komersial"]	2023-08-21 02:18:09.012599	2023-08-21 02:18:09.012599	tickets	create
107	["Please supply a numeric number of seconds", "user.komersial"]	2023-08-21 02:25:10.495212	2023-08-21 02:25:10.495212	tickets	create
108	["Jobs must be placed onto a queue. No queue could be inferred for class [#<SenderEmail id: 82, email_to: \\"rinalfauzi@gmail.com\\", parent_id: 385, token: 4973, status: \\"not-yet-sent\\", created_at: \\"2023-08-21 12:15:33\\", updated_at: \\"2023-08-21 12:15:33\\">]", "user.komersial"]	2023-08-21 12:15:40.514974	2023-08-21 12:15:40.514974	tickets	create
109	["undefined method `perform' for SenderEmailWorker:Class", "user.komersial"]	2023-08-21 12:16:55.599522	2023-08-21 12:16:55.599522	tickets	create
110	["undefined method `perform' for SenderEmailWorker:Class", "user.komersial"]	2023-08-21 12:17:55.445759	2023-08-21 12:17:55.445759	tickets	create
111	["Jobs must be placed onto a queue. No queue could be inferred for class [#<SenderEmail id: 86, email_to: \\"rinalfauzi@gmail.com\\", parent_id: 389, token: 2188, status: \\"not-yet-sent\\", created_at: \\"2023-08-21 12:23:20\\", updated_at: \\"2023-08-21 12:23:20\\">]", "user.komersial"]	2023-08-21 12:23:26.4752	2023-08-21 12:23:26.4752	tickets	create
112	["undefined method `perform' for SenderEmailWorker:Class", "user.komersial"]	2023-08-21 12:24:00.760121	2023-08-21 12:24:00.760121	tickets	create
113	["undefined method `perform' for SenderEmailWorker:Class", "user.komersial"]	2023-08-21 12:25:32.412273	2023-08-21 12:25:32.412273	tickets	create
114	["undefined method `kirim' for SenderEmailWorker:Class", "user.komersial"]	2023-08-21 12:29:36.25723	2023-08-21 12:29:36.25723	tickets	create
115	["Jobs must be placed onto a queue. No queue could be inferred for class [#<SenderEmail id: 127, email_to: \\"mohamad.rinaldi@pt-sena.co.id\\", parent_id: 430, token: 8708, status: \\"not-yet-sent\\", created_at: \\"2023-08-22 01:39:10\\", updated_at: \\"2023-08-22 01:39:10\\">]", "user.komersial"]	2023-08-22 01:39:14.23223	2023-08-22 01:39:14.23223	tickets	create
116	["undefined method `set' for SenderEmailWorker:Class\\nDid you mean?  send", "user.komersial"]	2023-08-22 01:44:30.125616	2023-08-22 01:44:30.125616	tickets	create
117	["undefined method `file_ticket' for #<Transaksi::Ticket:0x000000401ebb1170>", "adit"]	2023-08-23 02:32:07.05312	2023-08-23 02:32:07.05312	tickets	detail
118	["uninitialized constant Transaksi::TicketsController::Ticket", "adit"]	2023-08-23 02:33:12.175806	2023-08-23 02:33:12.175806	tickets	detail
119	["undefined method `approval_berjenjang' for nil:NilClass", "user.engineering"]	2023-08-24 01:35:56.287033	2023-08-24 01:35:56.287033	tickets	getApprovalBerjenjang
42	["[\\"/usr/local/lib/ruby/2.6.0/socket.rb:227:in `getaddrinfo'\\", \\"/usr/local/lib/ruby/2.6.0/socket.rb:227:in `foreach'\\", \\"/usr/local/lib/ruby/2.6.0/socket.rb:631:in `tcp'\\", \\"/usr/local/bundle/gems/net-smtp-0.3.3/lib/net/smtp.rb:643:in `tcp_socket'\\", \\"/usr/local/bundle/gems/net-smtp-0.3.3/lib/net/smtp.rb:656:in `do_start'\\", \\"/usr/local/bundle/gems/net-smtp-0.3.3/lib/net/smtp.rb:611:in `start'\\", \\"/usr/local/bundle/gems/mail-2.8.1/lib/mail/network/delivery_methods/smtp.rb:109:in `start_smtp_session'\\", \\"/usr/local/bundle/gems/mail-2.8.1/lib/mail/network/delivery_methods/smtp.rb:100:in `deliver!'\\", \\"/usr/local/bundle/gems/mail-2.8.1/lib/mail/message.rb:2145:in `do_delivery'\\", \\"/usr/local/bundle/gems/mail-2.8.1/lib/mail/message.rb:253:in `block in deliver'\\", \\"/usr/local/bundle/gems/actionmailer-5.2.8.1/lib/action_mailer/base.rb:560:in `block in deliver_mail'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications.rb:168:in `block in instrument'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications/instrumenter.rb:23:in `instrument'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications.rb:168:in `instrument'\\", \\"/usr/local/bundle/gems/actionmailer-5.2.8.1/lib/action_mailer/base.rb:558:in `deliver_mail'\\", \\"/usr/local/bundle/gems/mail-2.8.1/lib/mail/message.rb:253:in `deliver'\\", \\"/usr/local/bundle/gems/actionmailer-5.2.8.1/lib/action_mailer/message_delivery.rb:114:in `block in deliver_now'\\", \\"/usr/local/bundle/gems/actionmailer-5.2.8.1/lib/action_mailer/rescuable.rb:17:in `handle_exceptions'\\", \\"/usr/local/bundle/gems/actionmailer-5.2.8.1/lib/action_mailer/message_delivery.rb:113:in `deliver_now'\\", \\"/usr/src/app/app/controllers/transaksi/tickets_controller.rb:39:in `create'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/basic_implicit_render.rb:6:in `send_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/abstract_controller/base.rb:194:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/rendering.rb:30:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/abstract_controller/callbacks.rb:42:in `block in process_action'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/callbacks.rb:132:in `run_callbacks'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/abstract_controller/callbacks.rb:41:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/rescue.rb:22:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/instrumentation.rb:34:in `block in process_action'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications.rb:168:in `block in instrument'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications/instrumenter.rb:23:in `instrument'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/notifications.rb:168:in `instrument'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/instrumentation.rb:32:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal/params_wrapper.rb:256:in `process_action'\\", \\"/usr/local/bundle/gems/activerecord-5.2.8.1/lib/active_record/railties/controller_runtime.rb:24:in `process_action'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/abstract_controller/base.rb:134:in `process'\\", \\"/usr/local/bundle/gems/actionview-5.2.8.1/lib/action_view/rendering.rb:32:in `process'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal.rb:191:in `dispatch'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_controller/metal.rb:252:in `dispatch'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/routing/route_set.rb:52:in `dispatch'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/routing/route_set.rb:34:in `serve'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/journey/router.rb:52:in `block in serve'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/journey/router.rb:35:in `each'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/journey/router.rb:35:in `serve'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/routing/route_set.rb:840:in `call'\\", \\"/usr/local/bundle/gems/warden-jwt_auth-0.8.0/lib/warden/jwt_auth/middleware/token_dispatcher.rb:20:in `call'\\", \\"/usr/local/bundle/gems/warden-jwt_auth-0.8.0/lib/warden/jwt_auth/middleware/revocation_manager.rb:21:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/builder.rb:244:in `call'\\", \\"/usr/local/bundle/gems/warden-jwt_auth-0.8.0/lib/warden/jwt_auth/middleware.rb:22:in `call'\\", \\"/usr/local/bundle/gems/warden-1.2.9/lib/warden/manager.rb:36:in `block in call'\\", \\"/usr/local/bundle/gems/warden-1.2.9/lib/warden/manager.rb:34:in `catch'\\", \\"/usr/local/bundle/gems/warden-1.2.9/lib/warden/manager.rb:34:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/tempfile_reaper.rb:15:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/etag.rb:27:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/conditional_get.rb:40:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/head.rb:12:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/http/content_security_policy.rb:18:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/session/abstract/id.rb:266:in `context'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/session/abstract/id.rb:260:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/cookies.rb:670:in `call'\\", \\"/usr/local/bundle/gems/activerecord-5.2.8.1/lib/active_record/migration.rb:559:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/callbacks.rb:28:in `block in call'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/callbacks.rb:98:in `run_callbacks'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/callbacks.rb:26:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/executor.rb:14:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/debug_exceptions.rb:61:in `call'\\", \\"/usr/local/bundle/gems/web-console-3.7.0/lib/web_console/middleware.rb:135:in `call_app'\\", \\"/usr/local/bundle/gems/web-console-3.7.0/lib/web_console/middleware.rb:22:in `block in call'\\", \\"/usr/local/bundle/gems/web-console-3.7.0/lib/web_console/middleware.rb:20:in `catch'\\", \\"/usr/local/bundle/gems/web-console-3.7.0/lib/web_console/middleware.rb:20:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/show_exceptions.rb:33:in `call'\\", \\"/usr/local/bundle/gems/railties-5.2.8.1/lib/rails/rack/logger.rb:38:in `call_app'\\", \\"/usr/local/bundle/gems/railties-5.2.8.1/lib/rails/rack/logger.rb:26:in `block in call'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/tagged_logging.rb:71:in `block in tagged'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/tagged_logging.rb:28:in `tagged'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/tagged_logging.rb:71:in `tagged'\\", \\"/usr/local/bundle/gems/railties-5.2.8.1/lib/rails/rack/logger.rb:26:in `call'\\", \\"/usr/local/bundle/gems/sprockets-rails-3.4.2/lib/sprockets/rails/quiet_assets.rb:13:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/remote_ip.rb:81:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/request_id.rb:27:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/method_override.rb:24:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/runtime.rb:22:in `call'\\", \\"/usr/local/bundle/gems/activesupport-5.2.8.1/lib/active_support/cache/strategy/local_cache_middleware.rb:29:in `call'\\", \\"/usr/local/bundle/gems/rails_performance-1.2.0/lib/rails_performance/rails/middleware.rb:42:in `call!'\\", \\"/usr/local/bundle/gems/rails_performance-1.2.0/lib/rails_performance/rails/middleware.rb:38:in `call'\\", \\"/usr/local/bundle/gems/rails_performance-1.2.0/lib/rails_performance/rails/middleware.rb:17:in `call!'\\", \\"/usr/local/bundle/gems/rails_performance-1.2.0/lib/rails_performance/rails/middleware.rb:9:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/executor.rb:14:in `call'\\", \\"/usr/local/bundle/gems/actionpack-5.2.8.1/lib/action_dispatch/middleware/static.rb:127:in `call'\\", \\"/usr/local/bundle/gems/rack-2.2.7/lib/rack/sendfile.rb:110:in `call'\\", \\"/usr/local/bundle/gems/railties-5.2.8.1/lib/rails/engine.rb:524:in `call'\\", \\"/usr/local/bundle/gems/puma-3.12.6/lib/puma/configuration.rb:227:in `call'\\", \\"/usr/local/bundle/gems/puma-3.12.6/lib/puma/server.rb:706:in `handle_request'\\", \\"/usr/local/bundle/gems/puma-3.12.6/lib/puma/server.rb:476:in `process_client'\\", \\"/usr/local/bundle/gems/puma-3.12.6/lib/puma/server.rb:334:in `block in run'\\", \\"/usr/local/bundle/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'\\"]", "rinaldi"]	2023-08-16 01:20:22.595504	2023-08-16 01:20:22.595504	tickets	create
43	["Net::ReadTimeout", "rinaldi"]	2023-08-16 01:28:42.92108	2023-08-16 01:28:42.92108	tickets	create
44	["Net::ReadTimeout", "rinaldi"]	2023-08-16 01:30:13.934864	2023-08-16 01:30:13.934864	tickets	create
45	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:33:24.093116	2023-08-16 01:33:24.093116	tickets	create
46	["getaddrinfo: Name or service not known", "rinaldi"]	2023-08-16 01:37:25.077918	2023-08-16 01:37:25.077918	tickets	create
47	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:39:02.445717	2023-08-16 01:39:02.445717	tickets	create
48	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:40:57.413954	2023-08-16 01:40:57.413954	tickets	create
49	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:45:10.225471	2023-08-16 01:45:10.225471	tickets	create
50	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:49:55.899834	2023-08-16 01:49:55.899834	tickets	create
51	["Net::OpenTimeout", "rinaldi"]	2023-08-16 01:53:43.250254	2023-08-16 01:53:43.250254	tickets	create
52	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:00:05.191611	2023-08-16 02:00:05.191611	tickets	create
53	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:00:38.357499	2023-08-16 02:00:38.357499	tickets	create
54	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:04:14.737304	2023-08-16 02:04:14.737304	tickets	create
55	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:11:27.925304	2023-08-16 02:11:27.925304	tickets	create
56	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:34:11.072788	2023-08-16 02:34:11.072788	tickets	create
57	["Net::ReadTimeout", "rinaldi"]	2023-08-16 02:40:59.341718	2023-08-16 02:40:59.341718	tickets	create
58	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:43:01.786861	2023-08-16 02:43:01.786861	tickets	create
59	["Net::OpenTimeout", "rinaldi"]	2023-08-16 02:45:02.107821	2023-08-16 02:45:02.107821	tickets	create
60	["Net::OpenTimeout", "rinaldi"]	2023-08-16 03:00:07.351764	2023-08-16 03:00:07.351764	tickets	create
61	["undefined method `length' for nil:NilClass", "user.komersial"]	2023-08-17 13:29:54.214165	2023-08-17 13:29:54.214165	tickets	create
62	["undefined method `length' for nil:NilClass", "user.komersial"]	2023-08-17 13:30:31.781369	2023-08-17 13:30:31.781369	tickets	create
63	["undefined method `length' for nil:NilClass", "user.komersial"]	2023-08-17 13:31:49.978948	2023-08-17 13:31:49.978948	tickets	create
64	["undefined method `length' for nil:NilClass", "user.komersial"]	2023-08-17 14:42:22.300089	2023-08-17 14:42:22.300089	approval_email	approval
65	["undefined method `file_ticket' for #<Transaksi::Ticket:0x000000401de1e2b0>", "user.komersial"]	2023-08-17 14:52:36.669129	2023-08-17 14:52:36.669129	tickets	detail
66	["undefined method `category' for #<Transaksi::Ticket:0x000000401d6e6a60>\\nDid you mean?  category_id", "user.komersial"]	2023-08-18 00:52:35.415366	2023-08-18 00:52:35.415366	tickets	create
67	["undefined method `file_ticket' for #<Transaksi::Ticket:0x00000040260426b0>", "user.komersial"]	2023-08-18 03:53:05.946086	2023-08-18 03:53:05.946086	tickets	detail
68	["uninitialized constant Transaksi::TicketsController::Ticket", "user.komersial"]	2023-08-18 03:53:11.436016	2023-08-18 03:53:11.436016	tickets	detail
69	["undefined method `delivery_later' for #<ActionMailer::MessageDelivery:0x00000040080b4828>\\nDid you mean?  deliver_later\\n               deliver_later!\\n               delivery_handler", "user.komersial"]	2023-08-18 11:51:49.598449	2023-08-18 11:51:49.598449	approval_email	approval
70	["{\\"work_unit\\":[\\"must exist\\"],\\"area\\":[\\"must exist\\"]}", "superadmin"]	2023-08-18 14:22:15.938328	2023-08-18 14:22:15.938328	tickets	create
71	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:34:36.277889	2023-08-19 04:34:36.277889	tickets	create
72	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:39:13.942719	2023-08-19 04:39:13.942719	tickets	create
73	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:44:20.887116	2023-08-19 04:44:20.887116	tickets	create
74	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:47:28.819776	2023-08-19 04:47:28.819776	tickets	create
75	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:57:32.209234	2023-08-19 04:57:32.209234	tickets	create
76	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 04:58:17.615102	2023-08-19 04:58:17.615102	tickets	create
77	["Empty response received from the server.", "rinaldi"]	2023-08-19 05:00:53.488564	2023-08-19 05:00:53.488564	tickets	create
78	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:29:29.807798	2023-08-19 05:29:29.807798	tickets	create
79	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:41:00.999538	2023-08-19 05:41:00.999538	tickets	create
80	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:47:59.884953	2023-08-19 05:47:59.884953	tickets	create
81	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:49:51.307935	2023-08-19 05:49:51.307935	tickets	create
82	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:50:50.348108	2023-08-19 05:50:50.348108	tickets	create
83	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:52:28.947639	2023-08-19 05:52:28.947639	tickets	create
84	["Could not establish TCP connection to any of the configured hosts", "rinaldi"]	2023-08-19 05:58:23.155293	2023-08-19 05:58:23.155293	tickets	create
85	["Empty response received from the server.", "rinaldi"]	2023-08-19 06:02:40.994199	2023-08-19 06:02:40.994199	tickets	create
86	["Empty response received from the server.", "rinaldi"]	2023-08-19 06:04:16.968633	2023-08-19 06:04:16.968633	tickets	create
87	["undefined method `fanaout' for #<Bunny::Channel:0x0000004008b5ec38>\\nDid you mean?  fanout", "rinaldi"]	2023-08-19 06:05:36.430361	2023-08-19 06:05:36.430361	tickets	create
88	["{\\"area\\":[\\"must exist\\"]}", "rinaldi"]	2023-08-19 06:06:08.193166	2023-08-19 06:06:08.193166	tickets	create
89	["Timeout::Error", "rinaldi"]	2023-08-19 06:21:12.081463	2023-08-19 06:21:12.081463	tickets	create
\.


                                                   3551.dat                                                                                            0000600 0004000 0002000 00000407771 14472000421 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	superadmin@gmail.com	$2a$12$M9UwhD0hTpRpSl1PCyhv8.QM8PXovqvKGepvSOnAwijNN7m9RZqH.	\N	\N	\N	2023-06-12 03:50:56.423104	2023-06-12 03:56:37.898254	Superadmin	superadmin	t	\N	\N
25	ahmad.rifai@pt-sena.co.id	$2a$12$P0V2FS524XTVTB3DZHZSsumeBZjygSlAPzS8Innc7Zfk/J9uW08uK	\N	\N	\N	2023-08-23 10:26:12.043177	2023-08-23 10:26:12.043177	\N	300008	t	\N	\N
26	fauzan.azmi@pt-sena.co.id	$2a$12$N4LlXn1eGeToyyczdkW8weN7CbxyYkxwjzpKpVk07G0hQS9nDT/MC	\N	\N	\N	2023-08-23 10:26:12.443497	2023-08-23 10:26:12.443497	\N	300009	t	\N	\N
5	admin.it@mail.com	$2a$12$4w4e85cf0t7BK5/QjYNBXuTVVA6xRwzjUYvYbX4GddnN/whHpGSIy	\N	\N	\N	2023-06-15 05:01:36.487802	2023-06-16 16:46:08.16215	Admin IT	admin.it	t	\N	\N
27	andri.firdaus@pt-sena.co.id	$2a$12$l7Yo4dW0mHGgpz2kVyZQ9O1pWMe0jkVP0Z.Ze6x5QftpH6vkwyUM.	\N	\N	\N	2023-08-23 10:26:12.83648	2023-08-23 10:26:12.83648	\N	300010	t	\N	\N
9	fauzirinaldi76@gmail.com	$2a$12$cwGyOKDd.uKfv0Z89lkyy.JxvbnG6.ixzwGhcvQYNh.b52nFXBRnW	\N	\N	\N	2023-06-17 00:27:54.928883	2023-08-24 14:02:46.098826	Adit	adit	t	\N	4457
11	rifki@email.com	$2a$12$iRVLWoo6Q4CGJL7R6K/XC.LW1dWMY4jPXtraQaDwpgW2wRogfMsPy	\N	\N	\N	2023-06-24 13:23:55.532037	2023-06-24 13:23:55.532037	rifki	rifki	t	\N	\N
16	fauzan@email.com	$2a$12$artA0.L5RJNJmNHjh2QMyOtLLytkPq9o78z6VG1hcEIIjjBNd33ue	\N	\N	\N	2023-07-17 00:40:57.360451	2023-07-17 00:40:57.360451	fauzan	fauzan	t	\N	\N
28	m.basir@pt-sena.co.id	$2a$12$Co22sxtkRAJQ.qxg1TrwDegPxMl9elbGSiKlQeOhMXcRpZyXB00OC	\N	\N	\N	2023-08-23 10:26:13.225441	2023-08-23 10:26:13.225441	\N	300011	t	\N	\N
7	arief@email.com	$2a$12$apjxF7aa/w.dcVKhz4F2CeXdSRaT21zNHsGuTC9JMA3ZgJyIyLwn2	\N	\N	\N	2023-06-15 07:15:38.362767	2023-07-24 03:40:32.125732	Arief	arief	t	\N	\N
10	mohamad.rinaldi@pt-sena.co.id	$2a$12$6SxPb3z7mJTir8FObcH3t.vKuH69lN//KEU.uhY.wrHMdLKC5bjT6	\N	\N	\N	2023-06-24 13:23:31.097058	2023-08-24 14:04:44.37888	yaqub	yaqub	t	\N	1224
17	rinaldi@mail.com	$2a$12$adA5LMQVAS2KqK4X63oXsOR6qBk7fUMDrrQq8azdF9SVOJUqOIuo.	\N	\N	\N	2023-07-18 01:01:57.059227	2023-07-25 04:44:06.198759	rinaldi	rinaldi	t	\N	\N
29	moch.arifin@pt-sena.co.id	$2a$12$2PSx6NRr7AiGWJ9EZzawHuobYS482z826HoL2pNu22jPANta7dEU6	\N	\N	\N	2023-08-23 10:26:13.610305	2023-08-23 10:26:13.610305	\N	300012	t	\N	\N
30	zulkifli@pt-sena.co.id	$2a$12$WP4KpDmsVS4xN3KRwJHbHOtI99x5hoje9CLRr90FHPNbJBjFiQFCS	\N	\N	\N	2023-08-23 10:26:14.003779	2023-08-23 10:26:14.003779	\N	300013	t	\N	\N
12	testingajah93@gmail.com	$2a$12$Ukw1U9huqLdoEFtWcPWlfuTZ7QfnKYO0V51PDvuhfSD7jE/LaaX56	\N	\N	\N	2023-06-24 16:38:19.214902	2023-08-23 02:40:20.995181	pm.komersial	pm.komersial	t	\N	\N
31	diyanto.ekosaputra@pt-sena.co.id	$2a$12$a4YKdLcFZ/barMvrZnC8Muj768P2yP.u/Do6pY7hMNcyHu39KLbAe	\N	\N	\N	2023-08-23 10:26:14.39464	2023-08-23 10:26:14.39464	\N	300014	t	\N	\N
32	wahyu.ramadhan@pt-sena.co.id	$2a$12$ygKy5kUUIchjeoNDsTdHJuP08TLyZ7yhxEUzlNwsMn.vvquFUyTuO	\N	\N	\N	2023-08-23 10:26:14.784856	2023-08-23 10:26:14.784856	\N	300015	t	\N	\N
33	agus.irwanto@pt-sena.co.id	$2a$12$4pLEmXAV3wM/zaNhIyK.nuiMrTKvVnzKP5afY4AvkBCzT26ACYUDu	\N	\N	\N	2023-08-23 10:26:15.177186	2023-08-23 10:26:15.177186	\N	300016	t	\N	\N
34	moedayat@pt-sena.co.id	$2a$12$fe40cAjynFM91kDtbFqAEuxZLKASEvSEeSwKXdUhAjojYsr9NJdmy	\N	\N	\N	2023-08-23 10:26:15.566051	2023-08-23 10:26:15.566051	\N	300017	t	\N	\N
6	komersial@email.com	$2a$12$Cw4YDbHBs9MNWP4riGgI1./y/zMfWv5upQo5nwVjub0zuFz9wIArS	\N	\N	\N	2023-06-15 06:31:48.075801	2023-07-24 02:50:30.025531	User Komersial	user.komersial	t	\N	\N
2	sdm@email.com	$2a$12$TL4cB/1FIQ47TPx48OvltOp/NwZMuJ9kzRFmHcSGU4H8AHumswIUq	\N	\N	\N	2023-06-14 08:54:37.998534	2023-08-08 23:15:28.406552	User SDM	user.sdm	t	\N	\N
18	user1@mail.com	$2a$12$SGA7woSNtmvIJMqO.94pXO/kACu8zQYfAxzrUa/3Z81Wml3UbpS7O	\N	\N	\N	2023-07-20 01:04:53.797825	2023-07-24 02:51:07.844106	user1	user1	t	\N	\N
35	naufal.zahron@pt-sena.co.id	$2a$12$KCLPyq.bzGkatvV6I8Drpe0ZGJ39xUSGA/smdYfgNOX/F9RBpOtu.	\N	\N	\N	2023-08-23 10:26:15.973749	2023-08-23 10:26:15.973749	\N	300018	t	\N	\N
3	riki@email.com	$2a$12$zzKJuVPQsTbsuPtTehMwJ.viRsfFay5MRuUo7azQXE3RHKeRc93Qu	\N	\N	\N	2023-06-15 02:45:38.070129	2023-08-09 01:27:47.088188	riki	riki	t	\N	\N
14	user.engineering@email.com	$2a$12$2CMe1FyxqylhtigjwugToemQrN2LOKPbbUlnACilgaUK4CK05Kpsu	\N	\N	\N	2023-06-26 01:35:30.274507	2023-08-23 01:39:02.46507	user.engineering	user.engineering	t	\N	\N
19	adji@email.com	$2a$12$g1Pl07zglCgHWqHcFCHjjOaqVhDa7s1G4uVpQqj4ub3FYmcpU7s5C	\N	\N	\N	2023-08-15 02:22:39.225933	2023-08-15 02:22:39.225933	adji	adji	t	\N	\N
4	doddy@mail.com	$2a$12$9QxihGo0SjlTGoGKDkCjPO/6lfCmcpsQzjd.CFvcVB7EjuxQ3BdPW	\N	\N	\N	2023-06-15 04:15:33.784575	2023-08-19 03:12:34.055109	Doddy	doddy	t	\N	4101
36	s.lestari@pt-sena.co.id	$2a$12$PNlm4BvS3j9tLfIHZm4iaO4SPgCM.QuHyOKeM/UUSbStq9.nDvMcG	\N	\N	\N	2023-08-23 10:26:16.4279	2023-08-23 10:26:16.4279	\N	300019	t	\N	\N
37	anis@pt-sena.co.id	$2a$12$XN9LF28N/pk2tUtHBwKCSODLDAec5KZn0IdSOHG9pNFheX/UrOWMy	\N	\N	\N	2023-08-23 10:26:16.845503	2023-08-23 10:26:16.845503	\N	300020	t	\N	\N
38	agus.marpaung@pt-sena.co.id	$2a$12$jmfCuMltzcNv6pGnLCAWVuzFGuriIDzmBCaOCb8z7UDuwBpalNTKO	\N	\N	\N	2023-08-23 10:26:17.250644	2023-08-23 10:26:17.250644	\N	300021	t	\N	\N
39	irham.tanjung@pt-sena.co.id	$2a$12$dEu.52LA/m8KPdqwGjThseid8kSku43J8wckJvJ94UYlzz4uldJ2i	\N	\N	\N	2023-08-23 10:26:17.652236	2023-08-23 10:26:17.652236	\N	200022	t	\N	\N
40	yvanasalsabila2@gmail.com	$2a$12$eMEl5GVE7yuYvzMLMvuVueKATe8uKbMKs5YZj/zWjTe6wCw4uDhSW	\N	\N	\N	2023-08-23 10:26:18.054529	2023-08-23 10:26:18.054529	\N	400023	t	\N	\N
8	gantengkampret970@gmail.com	$2a$12$npHBHqWe1wPvUwOsce1by.HRvjYad4dAUgXvgmXXErGR6hrtRwRne	\N	\N	\N	2023-06-16 14:42:21.107307	2023-08-24 05:36:31.160156	agung	agung	t	\N	\N
41	eko.ardian@pt-sena.co.id	$2a$12$QFOy9maedOHP06tPkzxEHO89gEvl5Dxcj3z6vUd4OYgYYbU3fl3jS	\N	\N	\N	2023-08-23 10:26:18.454975	2023-08-23 10:26:18.454975	\N	200024	t	\N	\N
20	samuel@pt-sena.co.id	$2a$12$2DjiQ//WkEpHK8TpR0JisesH.NIzpWzvCGrmOq9nN1MCCUFkLlcSa	\N	\N	\N	2023-08-23 10:26:09.99442	2023-08-23 10:26:09.99442	\N	400003	t	\N	\N
42	andika@pt-sena.co.id	$2a$12$6wXoBbLwTRnZeB0hrB7P8uWGQ1GmdsxKE0faOlW1CtAqlzAo0Q3sC	\N	\N	\N	2023-08-23 10:26:18.857967	2023-08-23 10:26:18.857967	\N	400025	t	\N	\N
21	fiky.fathoni@pt-sena.co.id	$2a$12$QiL1Bl75Q8FOWmXya2cmR.ryTmg4j3sbYaneOazQcDIZgwF4HfZmy	\N	\N	\N	2023-08-23 10:26:10.463451	2023-08-23 10:26:10.463451	\N	300004	t	\N	\N
22	beni.septian@pt-sena.co.id	$2a$12$Qdxyjm1cyQy1LiHMOXdhkOAgpWAFEoEGtUbTq25M43kLXExbvz0fy	\N	\N	\N	2023-08-23 10:26:10.862606	2023-08-23 10:26:10.862606	\N	300005	t	\N	\N
23	suprianto@pt-sena.co.id	$2a$12$sfpEiXVY3T69a4ZrMovUf.vFmThjQEzr9hiha/wA.mvhb1L1ivbji	\N	\N	\N	2023-08-23 10:26:11.25779	2023-08-23 10:26:11.25779	\N	400006	t	\N	\N
24	ricky.ardhi@pt-sena.co.id	$2a$12$GeOZ8vPZxrSgvWY5/T3gDeN.gpEQvnHSTOKI5LXtTizeLOlN28EYa	\N	\N	\N	2023-08-23 10:26:11.646826	2023-08-23 10:26:11.646826	\N	300007	t	\N	\N
43	syaiful.alam@pt-sena.co.id	$2a$12$lLsmqwbzyKMtKs9UU.vkC.TXrAWgnFECe2QF8H3oUHbbml78sCXne	\N	\N	\N	2023-08-23 10:26:19.263323	2023-08-23 10:26:19.263323	\N	300026	t	\N	\N
44	ryan.novel@pt-sena.co.id	$2a$12$HvuwIvy5369hkgySJ29xQev2RMJVUsbtfRZe32UbLajgSAX5V/5Wu	\N	\N	\N	2023-08-23 10:26:19.686413	2023-08-23 10:26:19.686413	\N	400027	t	\N	\N
45	ghani.ct@pt-sena.co.id	$2a$12$nMgWej/0ISQ1IXBGPqjXyOf/zYhs2RM77w4EEwHlKKIhYsf0CgsKO	\N	\N	\N	2023-08-23 10:26:20.10306	2023-08-23 10:26:20.10306	\N	300028	t	\N	\N
46	martina.widya@pt-sena.co.id	$2a$12$DT8QJw1X//MuTVVOcB5WsOlmC/2yUBt1E8RT1CaiVVi2/iu1y2inu	\N	\N	\N	2023-08-23 10:26:20.527259	2023-08-23 10:26:20.527259	\N	300029	t	\N	\N
47	amelia.fadhila@pt-sena.co.id	$2a$12$G10UjnNV3TkLi0azhpOiFeIqqjcqnR9z0.QBg00Hte.Dr8m9yMSmO	\N	\N	\N	2023-08-23 10:26:20.927644	2023-08-23 10:26:20.927644	\N	300030	t	\N	\N
48	binahar15109095@gmail.com	$2a$12$w5aZa4ftn2j6QruHfYscA.E1hYENUOMC/bd0NpFj4Vdmhw3kdb/VK	\N	\N	\N	2023-08-23 10:26:21.324378	2023-08-23 10:26:21.324378	\N	300031	t	\N	\N
49	arannyacantikaputri@yahoo.com	$2a$12$epoQotWTVQ3OF2omr3AAo.odHXAS6ichch6gfIDCwaRdAJuDSQiky	\N	\N	\N	2023-08-23 10:26:21.715017	2023-08-23 10:26:21.715017	\N	300032	t	\N	\N
50	shariar.aditya@pt-sena.co.id	$2a$12$77F6HhlVZPZjyhPKNzr/1O9chcH/E3AwVi4VaxpQs7YpMobQfG84W	\N	\N	\N	2023-08-23 10:26:22.110222	2023-08-23 10:26:22.110222	\N	300033	t	\N	\N
51	rina.trisnawati@pt-sena.co.id	$2a$12$LvF6nDOP6mSTUPVSNfpqL.E.2aTazqpuToQM8Ri5cO3v8LDotzsVm	\N	\N	\N	2023-08-23 10:26:22.515633	2023-08-23 10:26:22.515633	\N	300034	t	\N	\N
52	yenni.puri@gmail.com	$2a$12$kgv88y.NGGvqlhijF8Kqi.F1Vx3Y5YCVWcR49vB2wqT4LAQzdMblG	\N	\N	\N	2023-08-23 10:26:22.911085	2023-08-23 10:26:22.911085	\N	300035	t	\N	\N
53	saldy.michael@pt-sena.co.id	$2a$12$UiI7bRSskALTB0huN8Ac0upKbmyzsvVzD9qbAMNtksFYzyRnejX0C	\N	\N	\N	2023-08-23 10:26:23.308704	2023-08-23 10:26:23.308704	\N	300036	t	\N	\N
54	achmad.11@pt-sena.co.id	$2a$12$HkvM/mpLwhnYBqq3aWYapeEAdfpV9B8KUPP4N4nm3WfQjYahd6ype	\N	\N	\N	2023-08-23 10:26:23.701346	2023-08-23 10:26:23.701346	\N	300037	t	\N	\N
55	rizky.sandy@pt-sena.co.id	$2a$12$8Pl0tEwzu3mWNLahkOCrMezHigg6tnuTVYiUptAee.T0LoJyDRLtu	\N	\N	\N	2023-08-23 10:26:24.125639	2023-08-23 10:26:24.125639	\N	300038	t	\N	\N
56	m.jamil@pt-sena.co.id	$2a$12$upLHQlmyvL9YYfUacM9Jn.yTNpJl9ybNtZUN.nLIM4Nloxd7cLB5y	\N	\N	\N	2023-08-23 10:26:24.523504	2023-08-23 10:26:24.523504	\N	300039	t	\N	\N
57	jongguran@pt-sena.co.id	$2a$12$Xk1.znjV3VRj5LBZyEEcqeXVmLmKCRljLvAMMnjKxP8tW/CsXs8bm	\N	\N	\N	2023-08-23 10:26:24.918338	2023-08-23 10:26:24.918338	\N	300040	t	\N	\N
58	irfani.arifia@pt-sena.co.id	$2a$12$UbQ5LK6tEcVEemMLOuZRK.kr4veKYNezluv0MIbqhkyst/Mh5cmNu	\N	\N	\N	2023-08-23 10:26:25.314213	2023-08-23 10:26:25.314213	\N	300041	t	\N	\N
59	wahid.habib@pt-sena.co.id	$2a$12$4ZMoMqBULsq2dDAxV2M.Zut06Q0Al/2.ll1PZAUkQYwJpYHqkQgVS	\N	\N	\N	2023-08-23 10:26:25.714833	2023-08-23 10:26:25.714833	\N	300042	t	\N	\N
60	annisa.shabriyanti@pt-sena.co.id	$2a$12$/1t2Nkdnx08ixIY4aQIbhev1QUfGDMIl/z16cQ.A2fff6TngyBGpm	\N	\N	\N	2023-08-23 10:26:26.112009	2023-08-23 10:26:26.112009	\N	300043	t	\N	\N
61	jufraini@pt-sena.co.id	$2a$12$mwj81PaTlHN4ME1R87bhA./5XzYNaS.rAB.fwzkJIFCcoMdZ287bO	\N	\N	\N	2023-08-23 10:26:26.538493	2023-08-23 10:26:26.538493	\N	300044	t	\N	\N
62	dwikasepta@gmail.com	$2a$12$xezQolF/c5F.8XlM9v7hTebSJQVb/9PuvuITFvNwPZO8iA35zHoSC	\N	\N	\N	2023-08-23 10:26:26.940277	2023-08-23 10:26:26.940277	\N	300045	t	\N	\N
63	m.solihin@pt-sena.co.id	$2a$12$JWQ44.2IPN04lA7CI3nmFuuxfNQUC6sqNxMs9jPHyf9z9AZqLsvjK	\N	\N	\N	2023-08-23 10:26:27.340506	2023-08-23 10:26:27.340506	\N	300046	t	\N	\N
64	budhi.mulyantika@pt-sena.co.id	$2a$12$I5SQNdjc1xob06M0mrgBeeoaU2McCk0DDS4A6JUQ47LqZlCndXzJ.	\N	\N	\N	2023-08-23 10:26:27.747861	2023-08-23 10:26:27.747861	\N	300047	t	\N	\N
65	oridian.popang@pt-sena.co.id	$2a$12$7rq7vXCCu46r1axVo2HLrO.ykP7fATj05.bEfHKp6yqzeQZ11MpZK	\N	\N	\N	2023-08-23 10:26:28.19323	2023-08-23 10:26:28.19323	\N	300048	t	\N	\N
66	deka.pratama@pt-sena.co.id	$2a$12$RbRJWuOQxEARlKRuxkbRAu3NogS7663ajvVQ4h5kijSXP66o4c6xO	\N	\N	\N	2023-08-23 10:26:28.587616	2023-08-23 10:26:28.587616	\N	300049	t	\N	\N
67	wahyu.adi@pt-sena.co.id	$2a$12$tcW5Vevt198VXy1kFWiyVep3vEjgaOL5w6Sl8q/6DtP4tz4iNHAQG	\N	\N	\N	2023-08-23 10:26:28.980591	2023-08-23 10:26:28.980591	\N	300050	t	\N	\N
68	yamzafebrinasari@gmail.com	$2a$12$7r4hEpiCEzxfdDJ6EgleHO3rTtQV/iaqk7lD/PsDTF7h5op9u9C5y	\N	\N	\N	2023-08-23 10:26:29.376237	2023-08-23 10:26:29.376237	\N	300051	t	\N	\N
69	ardiandony@gmail.com	$2a$12$F7nAbzMn8Aa.VY6OM/VNX.O8rNDNG8VI0c1V.RC7BX/J/d5YB9jmu	\N	\N	\N	2023-08-23 10:26:29.792584	2023-08-23 10:26:29.792584	\N	300052	t	\N	\N
70	rinaldi.arifin@pt.sena.co.id	$2a$12$951jjxucBU97AYGwpFiHjuojAECwzeSP03c1Ije.PWlB2FQBrbDkO	\N	\N	\N	2023-08-23 10:26:30.1897	2023-08-23 10:26:30.1897	\N	300053	t	\N	\N
71	panji.novian@pt-sena.co.id	$2a$12$r0W734g1GP2nD65uHTDDKuW5qHBXe4khwFc0yJR40fVbwSUBzvsGG	\N	\N	\N	2023-08-23 10:26:30.596393	2023-08-23 10:26:30.596393	\N	300054	t	\N	\N
72	laras.guntur@pt-sena.co.id	$2a$12$5AzBrSDAfLBUoirw3x.Ur.e5tAfiHoio6C9nf6AKHeJVCLTsquzj2	\N	\N	\N	2023-08-23 10:26:31.010103	2023-08-23 10:26:31.010103	\N	400055	t	\N	\N
73	gusti.randa@pt-sena.co.id	$2a$12$.lMby9dxg/FN/ydiPwYgIe5EJDWDE5E.JSO2Z2ws1en2Iy8dUxUwG	\N	\N	\N	2023-08-23 10:26:31.415225	2023-08-23 10:26:31.415225	\N	300056	t	\N	\N
74	leo.kapmas@pt-sena.co.id	$2a$12$98Rl1THfatFcOHpEq1BmjuxmlhyTWJHrepPITqLQXkh1pZaad/W5q	\N	\N	\N	2023-08-23 10:26:31.813448	2023-08-23 10:26:31.813448	\N	300057	t	\N	\N
75	inggit.frin@pt-sena.co.id	$2a$12$.F7hTQ3Fdyrl1Uxs7yIotu5UyFDBwVZrwn2ZE2Yq0ullaJEPgxUvC	\N	\N	\N	2023-08-23 10:26:32.221938	2023-08-23 10:26:32.221938	\N	300058	t	\N	\N
76	ronald.hasian@pt-sena.co.id	$2a$12$03.f0jPbbpyq4jALXFxGbuCcffPQsiMFK1801AbBUTL6YKZxMcQJ.	\N	\N	\N	2023-08-23 10:26:32.62293	2023-08-23 10:26:32.62293	\N	300059	t	\N	\N
77	zulkarnain.daulay@pt-sena.co.id	$2a$12$XB9ZB1HDhRLV/HX5wEGeb.SBeuLNRakKncs72pglQEhbpRS6SaBX6	\N	\N	\N	2023-08-23 10:26:33.017106	2023-08-23 10:26:33.017106	\N	300060	t	\N	\N
78	galih@pt-sena.co.id	$2a$12$s/jXSLC4wuT5VDgyYDbpKO3M5hQIdkz6J15KvxPxznvXbmCtwjXyC	\N	\N	\N	2023-08-23 10:26:33.406283	2023-08-23 10:26:33.406283	\N	300061	t	\N	\N
79	m.haikal@pt-sena.co.id	$2a$12$bYPrcho0lOMY471tdo2MdecaiuuL49cxI0GJZoEauz9c8PX97PnOu	\N	\N	\N	2023-08-23 10:26:33.799366	2023-08-23 10:26:33.799366	\N	300062	t	\N	\N
80	egita.wis1408@gmail.com	$2a$12$7EAmyFkFxlneEWzvIzmeUuvAYyspI2aPEujIXNKTkbY7bmNAJO/Yu	\N	\N	\N	2023-08-23 10:26:34.191349	2023-08-23 10:26:34.191349	\N	300063	t	\N	\N
81	syarial.pasaribu@pt-sena.co.id	$2a$12$COFQ1rBHRhOX7fy7Yfs0DusHypF10O0rNhp/6H0RQZ5SHHCJoJ/5e	\N	\N	\N	2023-08-23 10:26:34.581665	2023-08-23 10:26:34.581665	\N	300064	t	\N	\N
82	dimas.danang@pt-sena.co.id	$2a$12$RA6qvQyjWFaZTFn3vzqFpeM11uygcff1rnxNbelpXsu41dK4l7ISu	\N	\N	\N	2023-08-23 10:26:34.974615	2023-08-23 10:26:34.974615	\N	300065	t	\N	\N
83	steward@pt-sena.co.id	$2a$12$Njl6AXS0r1tJUDMoDPuU4e0gUTFAoX7F2f0P.7VPI3.M6LZu88PKi	\N	\N	\N	2023-08-23 10:26:35.366203	2023-08-23 10:26:35.366203	\N	300066	t	\N	\N
84	dwisuprapto85@gmail.com	$2a$12$vIhXtnt/xJDWsjkYkjRFtOnD5Fxs/44nPo7Fo406PqQCvQ3OsPYJ2	\N	\N	\N	2023-08-23 10:26:35.761581	2023-08-23 10:26:35.761581	\N	300067	t	\N	\N
85	yara.alpasra@pt-sena.co.id	$2a$12$iIxavrjWz8kMQDnoxlD0HefR2245jCp3uaCEBddl9cXRHyWDGJ/q.	\N	\N	\N	2023-08-23 10:26:36.155673	2023-08-23 10:26:36.155673	\N	300068	t	\N	\N
86	ayu.tya@pt-sena.co.id	$2a$12$8pctQ1YaYnsOOENIbhzD9eNl9RakGxBUo4oxib6qHu6rZlLyjWXCG	\N	\N	\N	2023-08-23 10:26:36.545332	2023-08-23 10:26:36.545332	\N	300069	t	\N	\N
87	suhardiman@pt-sena.co.id	$2a$12$EW67jwNnZNSxoVb46XpQvuNRkph0dDZI1KjzE9WLo2dCf7vqfJqV6	\N	\N	\N	2023-08-23 10:26:36.942095	2023-08-23 10:26:36.942095	\N	300070	t	\N	\N
88	dedy.wahyu@pt-sena.co.id	$2a$12$nQSgqes09ZAElWb5zPdhA.S/MG0RTyk2qXnTinC2IRIoqmE5TmIIC	\N	\N	\N	2023-08-23 10:26:37.339704	2023-08-23 10:26:37.339704	\N	300071	t	\N	\N
89	ipmawan@pt-sena.co.id	$2a$12$5rv2kSRqz6Ur4WmWOQWziObSiB47EzsTxqkyXH.AXB1k2cT9vdQca	\N	\N	\N	2023-08-23 10:26:37.736448	2023-08-23 10:26:37.736448	\N	300072	t	\N	\N
90	lukito@pt-sena.co.id	$2a$12$.vhZ.3ohqI.tZFdxzJYqj.S2NMgTCfSmc8Wr430dgk9ZysPitvGu2	\N	\N	\N	2023-08-23 10:26:38.130919	2023-08-23 10:26:38.130919	\N	300073	t	\N	\N
91	abdan.syakuura@pt-sena.co.id	$2a$12$/cRgZrZ0ANlIzK1WldT7YuXRZWqWk3Liz5b5CxNXpMsPd9v3RhQuC	\N	\N	\N	2023-08-23 10:26:38.52127	2023-08-23 10:26:38.52127	\N	300074	t	\N	\N
92	m.sefrijanto@pt-sena.co.id	$2a$12$jNkFCUQ/TWnN0tK14l9YjepcCfC.kPcwS5fp85FSKGKm9AnC61a9a	\N	\N	\N	2023-08-23 10:26:38.918566	2023-08-23 10:26:38.918566	\N	300075	t	\N	\N
93	gunawan.raditya@pt-sena.co.id	$2a$12$Mt9NYgJFdmLw7X5PHkoi0O.2qvMPWYgjOljGXVEuVltmWcsme8YKG	\N	\N	\N	2023-08-23 10:26:39.311637	2023-08-23 10:26:39.311637	\N	300076	t	\N	\N
94	siska.wahyu@pt-sena.co.id	$2a$12$ZmQIA2TUqkTeccQgrJVp1.1gPWIHorVt4Ep4sD8Z9ZziaRf/cHcBS	\N	\N	\N	2023-08-23 10:26:39.73854	2023-08-23 10:26:39.73854	\N	300077	t	\N	\N
95	isroni@pt-sena.co.id	$2a$12$XgqahN0dE4ksUfke2zdK3.STfGJrYmc2irZ0q7NsaelDm8gXb4qoK	\N	\N	\N	2023-08-23 10:26:40.134737	2023-08-23 10:26:40.134737	\N	300078	t	\N	\N
96	fristy@pt-sena.co.id	$2a$12$RyJbM11hAROL8NqDBzti8.rcnIXvW8IKXN.F2tRly0LdE9XCZsN9a	\N	\N	\N	2023-08-23 10:26:40.527579	2023-08-23 10:26:40.527579	\N	300079	t	\N	\N
97	tutur@pt-sena.co.id	$2a$12$qdryuEuZiWOtcLM0vZK4J.P3PUqeWpbSfFJRC0JLvMO34kfvZoEn.	\N	\N	\N	2023-08-23 10:26:41.11484	2023-08-23 10:26:41.11484	\N	300080	t	\N	\N
98	rizal.bima@pt-sena.co.id	$2a$12$XjTU.1aNLjaWYJ3Gz2oTmOAZUc8E5Bm3vOXxbMGJycGsx04PuiDNW	\N	\N	\N	2023-08-23 10:26:41.533604	2023-08-23 10:26:41.533604	\N	300081	t	\N	\N
99	tengku.fauzan@pt-sena.co.id	$2a$12$y2Y6FUBlZ7996lobcmQyiOkGzrs4XnprH2juE1IkFDqO0/Ms6r0BW	\N	\N	\N	2023-08-23 10:26:41.931283	2023-08-23 10:26:41.931283	\N	300082	t	\N	\N
100	rl.pordiman@gmail.com	$2a$12$B6NrYdDTDBzaWZsIHK9jmuscye0gwOKuO7BLrx1bNKLS6Zy/jV52.	\N	\N	\N	2023-08-23 10:26:42.343965	2023-08-23 10:26:42.343965	\N	300083	t	\N	\N
101	richardtito@pt-sena.co.id	$2a$12$OG0KbIRUdmFUeVhdqVmRvuef2uOMTrz6Gjl92uw13X7/NznWvD7Se	\N	\N	\N	2023-08-23 10:26:42.739516	2023-08-23 10:26:42.739516	\N	300084	t	\N	\N
102	imam.gandara@pt-sena.co.id	$2a$12$lxkBULd14.s/y.3hfo2kQezzF7Wcck.EhLl9Uezdb3JW75yplEjBC	\N	\N	\N	2023-08-23 10:26:43.133495	2023-08-23 10:26:43.133495	\N	300085	t	\N	\N
103	silvisalsabila2@gmail.com	$2a$12$llgM9osi9BgqB791sZP9DOfCJppFTJoe5gdbcKoM5lJVnQIYFufH2	\N	\N	\N	2023-08-23 10:26:43.527265	2023-08-23 10:26:43.527265	\N	300086	t	\N	\N
104	widhia.prayuda@pt-sena.co.id	$2a$12$CZP6vaQZrbZLzpLHj63uaubpfkATRnxzBNPzrGJRIu0GZzuh8v5aK	\N	\N	\N	2023-08-23 10:26:43.972377	2023-08-23 10:26:43.972377	\N	300087	t	\N	\N
105	suwondo@pt-sena.co.id	$2a$12$Qe7uzLqKewZeiZRQfP3fJuah.DoK2MIb/8QIjjWYsP4aiD9VCDBHG	\N	\N	\N	2023-08-23 10:26:44.370066	2023-08-23 10:26:44.370066	\N	300088	t	\N	\N
106	bahruddin.salam@pt-sena.co.id	$2a$12$Un8XeCtSX/swCugMBor0n.fwNm9VTQl2U6etH73ooRefn9lit1Arq	\N	\N	\N	2023-08-23 10:26:44.761825	2023-08-23 10:26:44.761825	\N	300089	t	\N	\N
107	doni.wicaksono@pgn-solution.co.id	$2a$12$kvvFb8Ju/tCK1eVRwROP2uNQz0lRwzqI4rhbHDo9srwAH1ioj3nkK	\N	\N	\N	2023-08-23 10:26:45.154084	2023-08-23 10:26:45.154084	\N	300090	t	\N	\N
108	ria.mardiana@pt-sena.co.id	$2a$12$unW9CxYXNPltZAjrRi3qzODZ6anqok9e8x4izK5SI9i4YtgE5lLNS	\N	\N	\N	2023-08-23 10:26:45.54556	2023-08-23 10:26:45.54556	\N	300091	t	\N	\N
109	benthar.dhemang@pt-sena.co.id	$2a$12$hGuQbEWIyZmy0V63UrEm4OkEiIyvqRockCnUvS3dqXUrBAKyHAghG	\N	\N	\N	2023-08-23 10:26:45.935713	2023-08-23 10:26:45.935713	\N	300092	t	\N	\N
110	wfikki@gmail.com	$2a$12$JgN9U3kXUalLDrn60FRrmuNfGvzHk3WFUMS8/cOEAG6yDgGNtLZTa	\N	\N	\N	2023-08-23 10:26:46.335516	2023-08-23 10:26:46.335516	\N	300093	t	\N	\N
111	abdi.omali@pt-sena.co.id	$2a$12$x765h2KOhyppqYQ1lNku2.BJPcBV7bOnfRb9btXWpO5L8QBFYUuwS	\N	\N	\N	2023-08-23 10:26:46.728652	2023-08-23 10:26:46.728652	\N	300094	t	\N	\N
112	muthia.safira@pt-sena.co.id	$2a$12$uI/xdwVnu.P5JpVOo7Q/V./lPMDXxgKw4WcIqPhAr3FuUtkyIExVq	\N	\N	\N	2023-08-23 10:26:47.120007	2023-08-23 10:26:47.120007	\N	300095	t	\N	\N
113	m.arbi@pt-sena.co.id	$2a$12$W/oHQEvmZLULM/o8mbSf0e19AfTxMBm1pvg7cOJ95aht5ujunBsem	\N	\N	\N	2023-08-23 10:26:47.518839	2023-08-23 10:26:47.518839	\N	300096	t	\N	\N
114	doni.andrianto@pt-sena.co.id	$2a$12$GrIwqi/A4SxlSLC2AfxVvufsILr9/s6ARqLcQ2brzz1gzhPb2odnS	\N	\N	\N	2023-08-23 10:26:47.927206	2023-08-23 10:26:47.927206	\N	300097	t	\N	\N
115	endah.febrianti@pt-sena.co.id	$2a$12$.fJ6xvBbLAXrUdCTJOSGO.SffWRsLRsqGqOse7u.xtadI5tJIOzNa	\N	\N	\N	2023-08-23 10:26:48.320117	2023-08-23 10:26:48.320117	\N	300098	t	\N	\N
116	rani@pt-sena.co.id	$2a$12$oHJLePsXTZm4zkcl/Zml0u.7uDMWVoGPl0yWA0S5kzMUysd4qgiRW	\N	\N	\N	2023-08-23 10:26:48.712825	2023-08-23 10:26:48.712825	\N	300099	t	\N	\N
117	imansandartriaji@yahoo.com	$2a$12$56Govpwk.FIPL1h1soah5ea1WEZokuYGLjeIjlzaatzh0NOAOwcY.	\N	\N	\N	2023-08-23 10:26:49.100995	2023-08-23 10:26:49.100995	\N	300100	t	\N	\N
118	meilyta.zesary.s@gmail.com	$2a$12$bEdP2j8pJ9TIBN9ZIB9FU.9GEJQ4wxDCy3Qx.gGfEDhuWseY8lpoO	\N	\N	\N	2023-08-23 10:26:49.499984	2023-08-23 10:26:49.499984	\N	300101	t	\N	\N
119	franklin.satria@pt-sena.co.id	$2a$12$ukxXF6uVorjLNH6PK38AlO1UStYwlLcTzFjb7qZMgvg/P4FyVCiga	\N	\N	\N	2023-08-23 10:26:49.914338	2023-08-23 10:26:49.914338	\N	300102	t	\N	\N
120	febby.zidni@pt-sena.co.id	$2a$12$2ifPGxtN9PEHRx6aSRi30u3zsPhQDz6lKzJETk/gCB6g2ZQm3UkaC	\N	\N	\N	2023-08-23 10:26:50.309561	2023-08-23 10:26:50.309561	\N	300103	t	\N	\N
121	jansenmarbun.sena@gmail.com	$2a$12$4V1lyX4OtdNewGPNF62J5OsomFkN5eQAsFMtlV3HpER3y71mJdJ02	\N	\N	\N	2023-08-23 10:26:50.700351	2023-08-23 10:26:50.700351	\N	300104	t	\N	\N
122	ghufron@pt-sena.co.id	$2a$12$XY78ErxLBZ3lLZ43DvVyj.sy8Whe/J8WtNORO0ta6f6BNYYB3wR8.	\N	\N	\N	2023-08-23 10:26:51.100145	2023-08-23 10:26:51.100145	\N	300105	t	\N	\N
123	erlialarasati@pt-sena.co.id	$2a$12$U3gpsmRWTz/I6CepNk7k7OOYVoiqF3m8qjLuTM9T4coIPQ3M3tyVu	\N	\N	\N	2023-08-23 10:26:51.535875	2023-08-23 10:26:51.535875	\N	300106	t	\N	\N
124	aldi.fazlan@pt-sena.co.id	$2a$12$2h3GztyIaCCBWyE6nLdrbusoDA3k1qf.japCN6qrqqHjwUkqbRqZG	\N	\N	\N	2023-08-23 10:26:51.927852	2023-08-23 10:26:51.927852	\N	300107	t	\N	\N
125	arif.wirahadi@pt.sena.co.id	$2a$12$3PMVkq0Us4op9sIUfmep/.zh9V/BxSFtN2UkXrtSHfdKRJI0VE5E.	\N	\N	\N	2023-08-23 10:26:52.326863	2023-08-23 10:26:52.326863	\N	300108	t	\N	\N
126	safri@pt-sena.co.id	$2a$12$8PA0PvxGcknhRuuXCivZQOmXlGNm/A7u7WtTMfL7hZJSFKE03SBHa	\N	\N	\N	2023-08-23 10:26:52.725839	2023-08-23 10:26:52.725839	\N	300109	t	\N	\N
127	nanda@pt-sena.co.id	$2a$12$cTuX9OCIE.sTwFbp.hobIejeex6i2nTnkRo2UyW5J6w/HVDjh3zhm	\N	\N	\N	2023-08-23 10:26:53.116116	2023-08-23 10:26:53.116116	\N	300110	t	\N	\N
128	m.ibrohim@pt-sena.co.id	$2a$12$7XsYwQOWFW.k//gzznnyzOm7T9iUs7GdUukPkjrh9MHPMPX1PK8py	\N	\N	\N	2023-08-23 10:26:53.507934	2023-08-23 10:26:53.507934	\N	300111	t	\N	\N
129	tri.mulyono@pt-sena.co.id	$2a$12$80gZO2Zm9r420OTH92oFZecn.v4TSeiWc2VqL/OBcVu9UMP5vkLda	\N	\N	\N	2023-08-23 10:26:53.90033	2023-08-23 10:26:53.90033	\N	300112	t	\N	\N
130	iqbal@pt-sena.co.id	$2a$12$neGq/noSgI.LdnDoTCNF5e5Qo70.FyG2aVzyWhqXsaoTNH.MPuidS	\N	\N	\N	2023-08-23 10:26:54.291062	2023-08-23 10:26:54.291062	\N	300113	t	\N	\N
131	hanindyo.ardhi@pt-sena.co.id	$2a$12$CGVbHcxNtKIS4DnM/r1qeOCW5ZAsUa/eKZFvrOl.DIkcfiEpwk9dy	\N	\N	\N	2023-08-23 10:26:54.686091	2023-08-23 10:26:54.686091	\N	300114	t	\N	\N
132	adriyat.maulana@pt-sena.co.id	$2a$12$fH7onZNywclXeh1eGaUf0u51syD1/CNOFWYGcu2f/oTE6P2Abgxlq	\N	\N	\N	2023-08-23 10:26:55.078853	2023-08-23 10:26:55.078853	\N	300115	t	\N	\N
133	yogi.astrada@pt-sena.co.id	$2a$12$g4cPqR6A90YyB772dojUmefy2Kd73SwS5FAxAWkW1pR1aryeuBlzu	\N	\N	\N	2023-08-23 10:26:55.472487	2023-08-23 10:26:55.472487	\N	300116	t	\N	\N
134	iwan.wijanarko@pgn-solution.co.id	$2a$12$8AWLEk7MtMpsXY9LMi.94.Yn5TXKgZw5N1UaZWjRn3Pzo.UQZVsjy	\N	\N	\N	2023-08-23 10:26:55.863765	2023-08-23 10:26:55.863765	\N	300117	t	\N	\N
135	bambang.utomo@pt-sena.co.id	$2a$12$stWqJfA7oYviUXu6ZyCbs.BWwptOEL46pOkyUdTbIQA/TBSPlckBG	\N	\N	\N	2023-08-23 10:26:56.253523	2023-08-23 10:26:56.253523	\N	300118	t	\N	\N
136	arifnurhakim05@gmail.com	$2a$12$LS7Bh81CitfptABiVIah4.QkW4dCy1Gbu91xDe35muwInuy.k2yHu	\N	\N	\N	2023-08-23 10:26:56.646045	2023-08-23 10:26:56.646045	\N	300119	t	\N	\N
137	bongky.soetarjo@pt-sena.co.id	$2a$12$qesTckJSOEVAzgXmJRI61OXqiR/tLBWsD7VqjRDbppnYR4HG2VAwO	\N	\N	\N	2023-08-23 10:26:57.036976	2023-08-23 10:26:57.036976	\N	300120	t	\N	\N
138	septiana2909@gmail.com	$2a$12$t3fggMW5Y2ZSDzUYoLoAw.MIpeMGrQG8KMI9PlKHUM2Nrx5RoMtbm	\N	\N	\N	2023-08-23 10:26:57.431178	2023-08-23 10:26:57.431178	\N	300121	t	\N	\N
139	togi.siagian@pt-sena.co.id	$2a$12$yrX4gdwp0.WYCUaFFDl5OOkkXSTrHTxQpofce.IsA3FOXt7UHzmHa	\N	\N	\N	2023-08-23 10:26:57.825625	2023-08-23 10:26:57.825625	\N	300122	t	\N	\N
140	lutfhi.civil@gmail.com	$2a$12$dNAgcWxQKQ/ci8eDCKYLNu9y6xQeY9IsOuWTKoig2230nU0SXcWda	\N	\N	\N	2023-08-23 10:26:58.21676	2023-08-23 10:26:58.21676	\N	300123	t	\N	\N
141	mutta.alimah@pt-sena.co.id	$2a$12$JDLLFichiYHKersz1GmEH.snRMEkY32NYd7gWRGwq3QwQBPdFUthy	\N	\N	\N	2023-08-23 10:26:58.610493	2023-08-23 10:26:58.610493	\N	300124	t	\N	\N
142	fadhanaanggara@pt-sena.co.id	$2a$12$FFDAXBcu6PA1PgvSTOhGUO1JoxHlZEQ.Ixd/id8e6ZFrWNUkZFbR.	\N	\N	\N	2023-08-23 10:26:59.003089	2023-08-23 10:26:59.003089	\N	300125	t	\N	\N
143	irfanyrachmadini916@gmail.com	$2a$12$sNM8eQgrpogPB6AebIYU0u0bMybhcRHIg.m4gJjNzLvdz6UMonOW.	\N	\N	\N	2023-08-23 10:26:59.393972	2023-08-23 10:26:59.393972	\N	300126	t	\N	\N
144	arry.rahmadi@gmail.com	$2a$12$YXP2zUyJgB18/RNY1nAjmuCJNyTqMhi7P8Xt8UsRsbqf0rxhjUk9i	\N	\N	\N	2023-08-23 10:26:59.797832	2023-08-23 10:26:59.797832	\N	300127	t	\N	\N
145	duwisantosa@gmail.com	$2a$12$4y6Na.Ph92KVrpdEHCFBnOeHq3TG.mjiJJjt1KgPFCdF9yf7G4jTm	\N	\N	\N	2023-08-23 10:27:00.194085	2023-08-23 10:27:00.194085	\N	300128	t	\N	\N
146	sugeng.electrical.89@gmail.com	$2a$12$9BBSH1.524KxIgfTYlJBLuXJjcE5k7KzxrKNPPmH/NVtO6kIs2dqm	\N	\N	\N	2023-08-23 10:27:00.586185	2023-08-23 10:27:00.586185	\N	300129	t	\N	\N
147	syifa010590@gmail.com	$2a$12$VIkQmWQcNhQv9yJeT9rb9OISj2Jq.2.8.wyMTeNRS2s7FqUBA/C3y	\N	\N	\N	2023-08-23 10:27:00.982866	2023-08-23 10:27:00.982866	\N	300130	t	\N	\N
148	m.abdurrahman@pt-sena.co.id	$2a$12$YGhkfrPTbcW1mM2IBPZL1.vo8LOVAWy4a/RhyMS7Ys4GVqzNS5cNW	\N	\N	\N	2023-08-23 10:27:01.374614	2023-08-23 10:27:01.374614	\N	300131	t	\N	\N
149	nandopratman13@gmail.com	$2a$12$hUjeZuFSyYClzdr.Hslape8QC0npPSzJQ9MRH2X4UfLXPGdKfhFg2	\N	\N	\N	2023-08-23 10:27:01.771016	2023-08-23 10:27:01.771016	\N	300132	t	\N	\N
150	mirliansyah@pt-sena.co.id	$2a$12$kj.Su1.g1e86WLkEiiObP.13DoIB.z60DHWPxsgBNhO4MYsI2ENqS	\N	\N	\N	2023-08-23 10:27:02.179448	2023-08-23 10:27:02.179448	\N	300133	t	\N	\N
151	harland@pt-sena.co.id	$2a$12$LvzyXeO3yGmv2pQGD3Pzj.648KAqqgvRbQV0fA4.SPLPdLK0ZOJ.i	\N	\N	\N	2023-08-23 10:27:02.628963	2023-08-23 10:27:02.628963	\N	300134	t	\N	\N
152	aurelius.susetyo@gmail.com	$2a$12$BDftonYjHTu3ZC/d/5BPVuNHRajV4MWVSW7WNUDGjc0pe6d9o9T1e	\N	\N	\N	2023-08-23 10:27:03.037002	2023-08-23 10:27:03.037002	\N	300135	t	\N	\N
153	bamba@pgn-solution.co.id	$2a$12$veVbaQjH4M1.Memh8UhYq.nFFVH1e8x0gvaRNchX9RZfhr.eS592q	\N	\N	\N	2023-08-23 10:27:03.446574	2023-08-23 10:27:03.446574	\N	300136	t	\N	\N
154	agung.nugraha@pt-sena.co.id	$2a$12$x7dTBL1DRSZJgE6xTksJTeqDxc2uMb6Wf/6LjV21ubu8qzeYrRlsm	\N	\N	\N	2023-08-23 10:27:03.857922	2023-08-23 10:27:03.857922	\N	300137	t	\N	\N
155	ipung@pt-sena.co.id	$2a$12$AsHQGGtA9DXQpGVjbnX0UetQ9uQVQYOh24FGoUtNQUfMRUdHn0n42	\N	\N	\N	2023-08-23 10:27:04.259303	2023-08-23 10:27:04.259303	\N	300138	t	\N	\N
156	virdaustopan@yahoo.com	$2a$12$lrURhQHpIB8B6ubR.iyMguKlyZXJ8gejjTVzcYUPbDGAtvepjrAeu	\N	\N	\N	2023-08-23 10:27:04.677536	2023-08-23 10:27:04.677536	\N	300139	t	\N	\N
157	yusuf.ptsenasby@gmail.com	$2a$12$9AtItpnQQMrAtcut24/um.W8dOVdP7Z8KMUgRY8rtdpcXe52R2TWy	\N	\N	\N	2023-08-23 10:27:05.09952	2023-08-23 10:27:05.09952	\N	300140	t	\N	\N
158	wildan.achmad@pt-sena.co.id	$2a$12$9gWQP2WIvS0uSn6oUmxG9eDcx9PIj1EWF4yNgUel21yG8I1zDboKK	\N	\N	\N	2023-08-23 10:27:05.511708	2023-08-23 10:27:05.511708	\N	300141	t	\N	\N
159	tengkuusubhan@gmail.com	$2a$12$wLFz7GYxBGy2m734ANdAR.wMbsJW4W7r1UqWrW7Wf3G.YARCt0RXu	\N	\N	\N	2023-08-23 10:27:05.928451	2023-08-23 10:27:05.928451	\N	300142	t	\N	\N
160	tiaranansaya@pt-sena.co.id	$2a$12$.lGGhy0YjSiHP.nRtuHOpORYUIS.922sWeYHZ6Nq2cysPGEYMz0Oe	\N	\N	\N	2023-08-23 10:27:06.398764	2023-08-23 10:27:06.398764	\N	300143	t	\N	\N
161	sepvinolist@pt-sena.co.id	$2a$12$BIvsCJsrFi8tCY.1le27pO9D3qLdyoGnaPIwdzP6U0r6ECdoqq4Vq	\N	\N	\N	2023-08-23 10:27:06.83374	2023-08-23 10:27:06.83374	\N	300144	t	\N	\N
162	aryo.nurwadi@pt-sena.co.id	$2a$12$rvrIS524k9xKXfVyz/b3O.rHIo2AeorXK5Nviu3ve7g//0D0k6sk2	\N	\N	\N	2023-08-23 10:27:07.278797	2023-08-23 10:27:07.278797	\N	300145	t	\N	\N
163	imam.mutaqin@pt-sena.co.id	$2a$12$Yr677zgZ2aRiijQoWAcjUuqk69btwYFjAzj7Bq8/if4CZM03UpIuu	\N	\N	\N	2023-08-23 10:27:07.71205	2023-08-23 10:27:07.71205	\N	300146	t	\N	\N
164	saiful.arif@pgn-solution.co.id	$2a$12$g2LY/nN7BeaTu3xIwNvwXuAwgGt05at5C5di/ZrRix78f2Sm/PJvq	\N	\N	\N	2023-08-23 10:27:08.136643	2023-08-23 10:27:08.136643	\N	300147	t	\N	\N
165	akhsin.pgas@gmail.com	$2a$12$1GED9.lDdsLzkZgGvoe7P.55V2hz/nL30.AFLsuc5je.IkC1SeamK	\N	\N	\N	2023-08-23 10:27:08.564935	2023-08-23 10:27:08.564935	\N	300148	t	\N	\N
166	k.assafak@gmail.com	$2a$12$h8jiCJuNZsUl58fIqwNzyuqI8KfDdnrqZeTwZ7a3tTiVHdyK5g9be	\N	\N	\N	2023-08-23 10:27:09.016148	2023-08-23 10:27:09.016148	\N	300149	t	\N	\N
167	rexsi.hendrawan@pgn-solution.co.id	$2a$12$IBgLVoWOGZDxGLXCBfgpYu1ZuZiOxwqJ5Rs6t7wGK21OIRMcalNpm	\N	\N	\N	2023-08-23 10:27:09.427887	2023-08-23 10:27:09.427887	\N	300150	t	\N	\N
168	kurniafriya@gmail.com	$2a$12$TaDwg4Sk6s/l43x4xxqsZ.jh5jRi8oxZTilnLt4ggMBOx0WW0MQba	\N	\N	\N	2023-08-23 10:27:09.848529	2023-08-23 10:27:09.848529	\N	300151	t	\N	\N
169	dimaswahab30@gmail.com	$2a$12$d8./Iuyq2BL7cukq/Y9apeny34naKd0BuOWa2Cz/840Bpqd.g0ESi	\N	\N	\N	2023-08-23 10:27:10.289549	2023-08-23 10:27:10.289549	\N	300152	t	\N	\N
170	muhammadbagusgunawan@gmail.com	$2a$12$Lf0CnjJopRPkeYjJvu07teMCUzAWIF4K4KdZgvmA6mEuKo4a5dZtC	\N	\N	\N	2023-08-23 10:27:10.701059	2023-08-23 10:27:10.701059	\N	300153	t	\N	\N
171	taufik.iskandar@pt-sena.co.id	$2a$12$1Po2JHiqmFJDJvW6psD.S.CCH0mpCDIsKr0iPd9lXz4b2IBfpQVw.	\N	\N	\N	2023-08-23 10:27:11.123225	2023-08-23 10:27:11.123225	\N	300154	t	\N	\N
172	faezaamella@gmail.com	$2a$12$/oaCvAZx.NIGS9Im18q8Y.VzVj1XY9X05njH9qVXJ5eoc/w9PqJfa	\N	\N	\N	2023-08-23 10:27:11.523766	2023-08-23 10:27:11.523766	\N	300155	t	\N	\N
173	eman.koswara@pt-sena.co.id	$2a$12$GgH/K2qRJhOgzH1S1ifwL.a1ft.H8rcAuvCEnSr4pqWscQlEQk7V6	\N	\N	\N	2023-08-23 10:27:11.931724	2023-08-23 10:27:11.931724	\N	300156	t	\N	\N
174	ikram@pt-sena.co.id	$2a$12$5rwdEinjBA5VuxGJMJan3u4OluHyfYlr3.vb38M0jgu/LmRnyDaBW	\N	\N	\N	2023-08-23 10:27:12.351465	2023-08-23 10:27:12.351465	\N	300157	t	\N	\N
175	ramlidennis@gmail.com	$2a$12$7uZxjb2rAChDr5V.mAa8k.t8P6rtU8O.zqZcojcV1tZ5EifiOrSMe	\N	\N	\N	2023-08-23 10:27:12.76943	2023-08-23 10:27:12.76943	\N	300158	t	\N	\N
176	bairuni@pt-sena.co.id	$2a$12$.YnIAW4TM9ypWhcutu5ttODLBFMT.ENhXq4WNoIzTgqEubFPfg4J6	\N	\N	\N	2023-08-23 10:27:13.205521	2023-08-23 10:27:13.205521	\N	300159	t	\N	\N
177	rabudin@pt-sena.co.id	$2a$12$DiYj//DdyUIJNh.2ia6DBuMf5Elm.SdDnblt2IXyNCS5hv3Qe9gd.	\N	\N	\N	2023-08-23 10:27:13.608542	2023-08-23 10:27:13.608542	\N	300160	t	\N	\N
178	soveni.sinaga@gmai.com	$2a$12$Zi2cAe4EFrmuENDqjRVwz.yJnZ4jvBfSPaQ5CQnX0zsmt63zI8Lfi	\N	\N	\N	2023-08-23 10:27:14.008791	2023-08-23 10:27:14.008791	\N	300162	t	\N	\N
179	wilijamaludin94@gmail.com	$2a$12$PnzBp2PAC6brGjQEMIA93eYDb8W7OuY62L5NDG68KFVrmX2bBujy6	\N	\N	\N	2023-08-23 10:27:14.44098	2023-08-23 10:27:14.44098	\N	300163	t	\N	\N
180	gandhiputra94@gmail.com	$2a$12$ING9vPt6tRlUZKybALzjauyEA6EDOMyWrdEWUv/JjB6EHrncJhiAu	\N	\N	\N	2023-08-23 10:27:14.840348	2023-08-23 10:27:14.840348	\N	300164	t	\N	\N
181	adithea.geovandi@gmail.com	$2a$12$1SI0lTn8VT3bLezShfTtD.rlYCPdxQSaa6wLgnb0.8P5AIS0HT0Fa	\N	\N	\N	2023-08-23 10:27:15.250027	2023-08-23 10:27:15.250027	\N	300165	t	\N	\N
182	adam@tikukur13.com	$2a$12$0yzZCHsCcdP8un1Jer1GK.SWKCCrHhFLzsWjy84DaRBzFFvN.9OlC	\N	\N	\N	2023-08-23 10:27:15.651402	2023-08-23 10:27:15.651402	\N	300166	t	\N	\N
183	ilham@tikukur13.com	$2a$12$6rxknh2N2E/khSAwoj9uXe.x50d0PhVMGMMkQJBfLdnRR8VHsQ3QC	\N	\N	\N	2023-08-23 10:27:16.050436	2023-08-23 10:27:16.050436	\N	300167	t	\N	\N
184	yoganur30@yahoo.com	$2a$12$GChjVtXoJdes1rZqlztk7OKibDpNL2fqQuQVnL4XybF4AGfIZym5i	\N	\N	\N	2023-08-23 10:27:16.462478	2023-08-23 10:27:16.462478	\N	300168	t	\N	\N
185	ruli@tikukur13.com	$2a$12$johaxvOulRd4oe1fG.kAr.Uw2Ig542puI4k01nn4gVc72xQ6rP3E6	\N	\N	\N	2023-08-23 10:27:16.864569	2023-08-23 10:27:16.864569	\N	300169	t	\N	\N
186	domu_marbun@ymail.com	$2a$12$dBygyGwPaGAyn/t.rA1.bO3RNIHkXjdcxrLH8hNjYYVqfMRRBmqYG	\N	\N	\N	2023-08-23 10:27:17.272533	2023-08-23 10:27:17.272533	\N	300170	t	\N	\N
187	arfannurhadi@gmail.com	$2a$12$7w4zjJUScLMsd0lxfT.7Au7dM8wENV9DQ/ulIyGVhaTx1zbuRFeae	\N	\N	\N	2023-08-23 10:27:17.681249	2023-08-23 10:27:17.681249	\N	300171	t	\N	\N
188	ardisnvadiany@gmail.com	$2a$12$FAxG96XbgoS4iZiK5Coig.pUfsnD5YUppr3t2CwOi9KRGX4MOXdpK	\N	\N	\N	2023-08-23 10:27:18.081688	2023-08-23 10:27:18.081688	\N	300172	t	\N	\N
189	mustikaayu425@gmail.com	$2a$12$dZIfUyfkc2kcAUSszmrq/.1OCNt9BPZl49H5nWAd1RLOO6Ke7qNxq	\N	\N	\N	2023-08-23 10:27:18.485558	2023-08-23 10:27:18.485558	\N	300173	t	\N	\N
190	setianineng24@gmail.com	$2a$12$LM9HkdI7KoEAbMCTSyKqe.HAwFf.bwRX2zT77wfNyxXN5cHDSPxyy	\N	\N	\N	2023-08-23 10:27:18.885029	2023-08-23 10:27:18.885029	\N	300174	t	\N	\N
191	arlan.budiman@pt-sena.co.id	$2a$12$IAcC3Xu4dSvxe5EG9cFli.avg7I1Bj3/QKttJxrDe2zyqelLPz82i	\N	\N	\N	2023-08-23 10:27:19.286258	2023-08-23 10:27:19.286258	\N	300175	t	\N	\N
192	karismarizkika@gmail.com	$2a$12$QD1jYX07JbIXHzE8vr.kouLXT4cTBmgBlmNp13VwFUBySLKKm/wUW	\N	\N	\N	2023-08-23 10:27:19.706948	2023-08-23 10:27:19.706948	\N	300176	t	\N	\N
193	muthmainnahnisaaul@gmail.com	$2a$12$5ZHoJRup6yHKshrddc3MfOTBbY.Ic3DKunyLfMLdY2/kK8ZsFMwM.	\N	\N	\N	2023-08-23 10:27:20.146432	2023-08-23 10:27:20.146432	\N	300177	t	\N	\N
194	hermansah@pt-sena.co.id	$2a$12$GGV.Sl4xgf2BA7YDWO1tv.vlVwlr9oTKFBp82D5FtM8j3dp6rlXjG	\N	\N	\N	2023-08-23 10:27:20.559753	2023-08-23 10:27:20.559753	\N	300178	t	\N	\N
195	r.indahwardani@gmail.com	$2a$12$Y0liY4K4w6AmO.rToMEQRu2BPQFQaCdVSx1/kEEZjUheW.R1PmAQa	\N	\N	\N	2023-08-23 10:27:20.967651	2023-08-23 10:27:20.967651	\N	300179	t	\N	\N
196	christiannugroho8071@gmail.com	$2a$12$TH0zwBWcE/H4cDLJeQcw9OJDWZcBz62WNNJ3qLJy7jDbJPcuhsMga	\N	\N	\N	2023-08-23 10:27:21.378844	2023-08-23 10:27:21.378844	\N	300180	t	\N	\N
197	shafiraputri@pt-sena.co.id	$2a$12$YObEk11WDi4oafhR5qVlBuP5Any5kh6eOgdnTV6T9EmdI48AVwHuK	\N	\N	\N	2023-08-23 10:27:21.79173	2023-08-23 10:27:21.79173	\N	300181	t	\N	\N
198	7bundaku@gmail.com	$2a$12$ND3MhrZw/qU8/leelQs3ruE8Ugh9Uvy7glSUUsbJRdTy6SaKprwxa	\N	\N	\N	2023-08-23 10:27:22.202866	2023-08-23 10:27:22.202866	\N	300182	t	\N	\N
199	aryaniyasrida@gmail.com	$2a$12$2eOqFdxAIT9wWlY4BPPx6.v9hIgH2gVtD7EKcGyvpvtxv0RUrv0k6	\N	\N	\N	2023-08-23 10:27:22.636097	2023-08-23 10:27:22.636097	\N	300183	t	\N	\N
200	ridhoarios@pt-sena.co.id	$2a$12$X4cKTv7lX35Dx5Ga8Tyf7.aFRihVoJ8i6dvSUnpxva31czuY/KdLm	\N	\N	\N	2023-08-23 10:27:23.069856	2023-08-23 10:27:23.069856	\N	300184	t	\N	\N
201	badinurahman25@gmail.com	$2a$12$XeLjF73M0Ql.QVx908v/P.NnVfFzsWsTldnG8f.JC5tsH8ihzRLpm	\N	\N	\N	2023-08-23 10:27:23.480738	2023-08-23 10:27:23.480738	\N	300185	t	\N	\N
202	arakadanbra@gmail.com	$2a$12$uZOA5hWh/zX73mzk4ytmSO6j8xByHhls1rhB0TYK37ja8JtZBJURC	\N	\N	\N	2023-08-23 10:27:23.887885	2023-08-23 10:27:23.887885	\N	300186	t	\N	\N
203	syafa.kansa@pt-sena.co.id	$2a$12$bdSzR9.RuaEQNmnYhpGKm.W1niIwGIevmCV9I6uT4wvapcWJOqHaC	\N	\N	\N	2023-08-23 10:27:24.297574	2023-08-23 10:27:24.297574	\N	300187	t	\N	\N
204	rosiajengkh@gmail.com	$2a$12$HGPcZbRbg1lK86g1lnfSUuWHh7Mm7cdP/rTnxcsExVRgXhRh2/tse	\N	\N	\N	2023-08-23 10:27:24.700634	2023-08-23 10:27:24.700634	\N	300188	t	\N	\N
205	300189@pt-sena.co.id	$2a$12$mKx.PSbXgIAlr3QiRB5FhOe.kMF/8yyQQ6wgUH1hBORRhf1qAHZzy	\N	\N	\N	2023-08-23 10:27:25.110143	2023-08-23 10:27:25.110143	\N	300189	t	\N	\N
206	pahrizan.abadi@pgn-solution.co.id	$2a$12$8vaYcJgRk9hfW5E1keQIYuHBxQjko4vIojOHvM3jDg2d9udZxLmzK	\N	\N	\N	2023-08-23 10:27:25.512623	2023-08-23 10:27:25.512623	\N	300190	t	\N	\N
207	finer889@gmail.com	$2a$12$phFMa2fU71krySbuRGecMuuobVVKCa7y86DI82zugNrn923/yeZ52	\N	\N	\N	2023-08-23 10:27:25.95565	2023-08-23 10:27:25.95565	\N	300191	t	\N	\N
208	im4m.muslim@gmail.com	$2a$12$DEfAwAPHZX1jWQkmv.NlP.pf7GZOrcpyEZFU5ai1ma5lA3Hm/E4du	\N	\N	\N	2023-08-23 10:27:26.355923	2023-08-23 10:27:26.355923	\N	300192	t	\N	\N
209	bpukuh@gmail.com	$2a$12$3uLmmSihFTJ.bejYjO7oMeG5H5iJ/aRSaHZP8EjYS8VMJDGBePCh.	\N	\N	\N	2023-08-23 10:27:26.818275	2023-08-23 10:27:26.818275	\N	300193	t	\N	\N
210	rohman13hdy@gmail.com	$2a$12$oLEMrWHU4TriWVL23g8zrukbPvah3.PVBO3L4FQsYa6rL73v9zJ96	\N	\N	\N	2023-08-23 10:27:27.238577	2023-08-23 10:27:27.238577	\N	300194	t	\N	\N
211	afiawan.malik@pt-sena.co.id	$2a$12$DOiJBA5Q6tNsfkvVLfIyNu3rm5p77eHOYNe/e5DRmAeW0xGvMj2JK	\N	\N	\N	2023-08-23 10:27:27.654232	2023-08-23 10:27:27.654232	\N	300195	t	\N	\N
212	hadisaiful89@gmail.com	$2a$12$/uLO0K.I9KPc1JTKUstBke6bb.umIJNNC8zAHjTnRSdd3FMRkxe5y	\N	\N	\N	2023-08-23 10:27:28.068599	2023-08-23 10:27:28.068599	\N	300196	t	\N	\N
213	david.kosidi@gmail.com	$2a$12$XuPet3zb0yKyQ6nlxIZF5.xcHCSlTWrFpWi4dadkZq0Sppjb.MqZy	\N	\N	\N	2023-08-23 10:27:28.47329	2023-08-23 10:27:28.47329	\N	300197	t	\N	\N
215	jeffry.hotman@pt-sena.co.id	$2a$12$bZUhW6HIyqKD7JtbW8KYi.q28NkGxxS2InQnvqcak9RYSHDkQg4aa	\N	\N	\N	2023-08-23 10:27:28.880844	2023-08-23 10:27:28.880844	\N	400198	t	\N	\N
216	kurniasari.fatma@gmail.com	$2a$12$VFEp4dmc1lvkP7kcPkc28ulBKs5eLQvpXczdirs0Nqvf3VNPK4G0.	\N	\N	\N	2023-08-23 10:27:29.283208	2023-08-23 10:27:29.283208	\N	300199	t	\N	\N
217	marsella@pt-sena.co.id	$2a$12$jw3jS2XuWfvf2bXY1R8HQ.FEi5cH026CGTRE5bV2wrpp7W3Oah8CS	\N	\N	\N	2023-08-23 10:27:29.69349	2023-08-23 10:27:29.69349	\N	300200	t	\N	\N
218	wahyuprase08@gmail.com	$2a$12$.lTxr4cXlaebDIvgSGbcyOVvKj4w1i/OsF0SDrPsJxj7PffHt8EVG	\N	\N	\N	2023-08-23 10:27:30.112199	2023-08-23 10:27:30.112199	\N	300201	t	\N	\N
219	yosie.sulastri@pt-sena.co.id	$2a$12$vBtkvFAtfwGF3RJ5lDRIvuel/cj.5XBbpsPJuqn5S87lV3Vmu/Dea	\N	\N	\N	2023-08-23 10:27:30.568177	2023-08-23 10:27:30.568177	\N	300202	t	\N	\N
220	alfira.chuswardani@pt-sena.co.id	$2a$12$CzG66dKwPdiNn.k/FHgemuqCcvlmX/RyDrSnJ6eC1MsJM7P.wMDpK	\N	\N	\N	2023-08-23 10:27:30.968103	2023-08-23 10:27:30.968103	\N	300203	t	\N	\N
221	ekofakhriradifan@gmail.com	$2a$12$Ja5G7OTgl9RfZej4yYmize/SIP5aNA4ASXzZFkVR1u.zhwHyrcdRK	\N	\N	\N	2023-08-23 10:27:31.365836	2023-08-23 10:27:31.365836	\N	300204	t	\N	\N
222	intan.pdewin@pt-sena.co.id	$2a$12$TVFtWXNmbwfleOkDxg3vROpt2eymJ0bzAhPAWf5I5uIyLav5Oyf9i	\N	\N	\N	2023-08-23 10:27:31.769022	2023-08-23 10:27:31.769022	\N	300205	t	\N	\N
223	rauf.syafriyyin@pt-sena.co.id	$2a$12$eshwCW0b/SKVz6e/fah0COSNZrB4GY1pvzhQFWhueBeOW/Nj486xG	\N	\N	\N	2023-08-23 10:27:32.275829	2023-08-23 10:27:32.275829	\N	300206	t	\N	\N
224	taufiqqurrachman@pt-sena.co.id	$2a$12$fNUv3pOHXX7jNp8MWvHnJePb.NqmRAe/1kiZhhc1RfJvF6qabuCoW	\N	\N	\N	2023-08-23 10:27:32.693	2023-08-23 10:27:32.693	\N	300207	t	\N	\N
225	kholilah.saadah@pt-sena.co.id	$2a$12$KGJ9Jw4cEFG.y122ijGBVO5eEKzNe51IaK0v5LN8SArg4S4e66E4e	\N	\N	\N	2023-08-23 10:27:33.131213	2023-08-23 10:27:33.131213	\N	300208	t	\N	\N
226	agie.sugiri@pt-sena.co.id	$2a$12$jh/L2qwYJgBYpxLPAj7woOKGNMEfxuchu9UYPgRru7uLq/FxRbp9y	\N	\N	\N	2023-08-23 10:27:33.530702	2023-08-23 10:27:33.530702	\N	300209	t	\N	\N
227	pic-s.lestari@pt-sena.co.id	$2a$12$RCsz1PPm8NPCanQQZFGV5OUXUqZqIKpakCOClt6cqlBCGbgVMbG.6	\N	\N	\N	2023-08-23 10:27:33.933211	2023-08-23 10:27:33.933211	\N	500704	t	\N	\N
228	mirliansyah@pt-sena.id	$2a$12$ptKQGHoPUsApaX29JP9g9uC/fDGzjQjY1W/rYVAywgWILjtS5DGzm	\N	\N	\N	2023-08-23 10:27:34.342019	2023-08-23 10:27:34.342019	\N	500705	t	\N	\N
229	aninda.miftahdhiyar@gmail.com	$2a$12$MOLzZpTGodD.s3xy5n..1u2CL./pTCP9GfSFjYmIn5YJXwAPAvEke	\N	\N	\N	2023-08-23 10:27:34.759684	2023-08-23 10:27:34.759684	\N	300210	t	\N	\N
230	intan.oktasari@pt-sena.co.id	$2a$12$JCCSohQ355oS0UFywnxNYe7IUzvoCyuD7aIA7UcVVTwAnYHpq5Hvy	\N	\N	\N	2023-08-23 10:27:35.167055	2023-08-23 10:27:35.167055	\N	200211	t	\N	\N
231	frizca@pt-sena.co.id	$2a$12$rrhdV.FNSgJQCrOxxMjakOvAYi5wT4m64OCI0Tm8DF9Cmlo/5PkYe	\N	\N	\N	2023-08-23 10:27:35.615797	2023-08-23 10:27:35.615797	\N	300212	t	\N	\N
232	boris.turnip@pt-sena.co.id	$2a$12$T9euymLoD8.ZtNQd5zgPR.i/o7w1qKbhqUssBOqHnZY1uK29M8fv2	\N	\N	\N	2023-08-23 10:27:36.029595	2023-08-23 10:27:36.029595	\N	300213	t	\N	\N
233	ratno@pt-sena.co.id	$2a$12$jTHRqxnzLlHVOeuSBwcYUu3qVe6FxKsJYmsiB5EgE.wEFbdyiOS9G	\N	\N	\N	2023-08-23 10:27:36.441489	2023-08-23 10:27:36.441489	\N	300214	t	\N	\N
234	libert.sijabat@pt-sena.co.id	$2a$12$chhGJaQwogqVYqxifW9FfeZwTi2skgzRn2Bme6AWfcRTlv9n1pOrG	\N	\N	\N	2023-08-23 10:27:36.854337	2023-08-23 10:27:36.854337	\N	300215	t	\N	\N
235	aang.fatkhul@pt-sena.co.id	$2a$12$vmQKcO8glaiaotf6IsGB/u7AzYmXy4kyR5tAgZa..hOZqYREbGXhy	\N	\N	\N	2023-08-23 10:27:37.300878	2023-08-23 10:27:37.300878	\N	300216	t	\N	\N
236	yusuf.jamil@pt-sena.co.id	$2a$12$n1Ar6MpSGLZNOFeyIW4jl.oGlb8cxchBfboNQa33hvlxCDmAIYOcu	\N	\N	\N	2023-08-23 10:27:37.757465	2023-08-23 10:27:37.757465	\N	300217	t	\N	\N
237	mubaroksyahrul84@gmail.com	$2a$12$xURJIk7m3huHKMu/9J/cTez1V51xNOlpsFAbIYyOdkF3IFb5EYaO6	\N	\N	\N	2023-08-23 10:27:38.169443	2023-08-23 10:27:38.169443	\N	300218	t	\N	\N
238	petrus.as@pt-sena.co.id	$2a$12$vs8CtMZxjiDVLEWg.LrgJurH3RXflhEJFKxlXryEmIdFv6Y8qypEa	\N	\N	\N	2023-08-23 10:27:38.567649	2023-08-23 10:27:38.567649	\N	300219	t	\N	\N
239	rezabatubara@gmail.com	$2a$12$WvpFBoU1hJm/oO4DOGUAtuh6Lw1lcjYCCwpAbuDlLgux718PoCK0e	\N	\N	\N	2023-08-23 10:27:38.963584	2023-08-23 10:27:38.963584	\N	300220	t	\N	\N
240	lisa.novriyanti@pt-sena.co.id	$2a$12$EBpvUW54RmmJbw60QgvggufTxtRaMj3ZiT3UpOK7Uk4osxf2/8nmC	\N	\N	\N	2023-08-23 10:27:39.35852	2023-08-23 10:27:39.35852	\N	300221	t	\N	\N
241	sutomo2910@gmail.com	$2a$12$InvvLNcYvPJeaeMe8F/kG.TrzRI43GEI71vZd4oEht81MX7CPX9MS	\N	\N	\N	2023-08-23 10:27:39.758975	2023-08-23 10:27:39.758975	\N	500222	t	\N	\N
242	agung.pic@pt-sena.co.id	$2a$12$tW2P6fggAS8rGw9h3INiXuh440CPmBJeMAjGO/MsLA4e6nyrHPjMO	\N	\N	\N	2023-08-23 10:27:40.155668	2023-08-23 10:27:40.155668	\N	500706	t	\N	\N
243	achmadrudiyanto8931@gmail.com	$2a$12$66pBloAgRlBbngO84I/L6OcvxPptBUR7FuvNHaqbEFIHVM7Paox/G	\N	\N	\N	2023-08-23 10:27:40.548738	2023-08-23 10:27:40.548738	\N	300223	t	\N	\N
244	tri.wiatno@pt-sena.co.id	$2a$12$JuRNrM9nQ86MlqJIRlnJeOBpDLmMjuWqE98aVseLldxf.RH5D8v6O	\N	\N	\N	2023-08-23 10:27:40.944823	2023-08-23 10:27:40.944823	\N	300224	t	\N	\N
245	mirza.syahid@pt-sena.co.id	$2a$12$EpswZ9xEeafy9rtFJzeP.edraN34iGJQ8L/qxiEClMky65E.Sfuhi	\N	\N	\N	2023-08-23 10:27:41.348068	2023-08-23 10:27:41.348068	\N	300225	t	\N	\N
246	300226@pt-sena.co.id	$2a$12$Amj.OHbnjwZy4v5X3z4wF.tKFCk0hYZAZNJPu5RsgjHyGju/py7Cu	\N	\N	\N	2023-08-23 10:27:41.744341	2023-08-23 10:27:41.744341	\N	300226	t	\N	\N
247	mambo95tl@yahoo.com	$2a$12$YcwhZLcYaGKEDm5DnzdXo.mJKgkFNUjIuwpNNt4Xqxzq6bawfPJW2	\N	\N	\N	2023-08-23 10:27:42.145406	2023-08-23 10:27:42.145406	\N	300227	t	\N	\N
248	zefanya.christa@pt-sena.co.id	$2a$12$yqXroMwjhgKM/wJEgFCd2e5imfpGEOKmmYOw7/Cypg3.dk0AmknRe	\N	\N	\N	2023-08-23 10:27:42.565337	2023-08-23 10:27:42.565337	\N	300228	t	\N	\N
249	indrajayan@gmail.com	$2a$12$x2yMjGGIzilKa6PPsfKrWORbRtcr7GrWXpFPcg7uvT0BSdI0GDhsm	\N	\N	\N	2023-08-23 10:27:42.958379	2023-08-23 10:27:42.958379	\N	300229	t	\N	\N
250	300230@pt-sena.co.id	$2a$12$nc1GFFu/IDbG2QZPEYZwG.tCbKY2s7R28pdtsgOLaika3egdXSRCi	\N	\N	\N	2023-08-23 10:27:43.379368	2023-08-23 10:27:43.379368	\N	300230	t	\N	\N
251	ifrina.fadayanti@pt-sena.co.id	$2a$12$zgxtWY08GiuKr9ODZEz/ZOAS5QKgJYXyeTp2XZilS1Er4TGyvuhQO	\N	\N	\N	2023-08-23 10:27:43.776234	2023-08-23 10:27:43.776234	\N	300231	t	\N	\N
252	yayan.putra@pt-sena.co.id	$2a$12$oQmp5UsZQ7fGIsGqzKAOfuVMM3XaH7b2kwTlls9QPiNaSGhp.L.Ly	\N	\N	\N	2023-08-23 10:27:44.18644	2023-08-23 10:27:44.18644	\N	300232	t	\N	\N
253	boy.prayoga@pt-sena.co.id	$2a$12$DQ/.L1abzZow8V4ZhJzvYO01TnRBAXLXpoqt.aWZOlHRBGxE65auW	\N	\N	\N	2023-08-23 10:27:44.583653	2023-08-23 10:27:44.583653	\N	300233	t	\N	\N
254	eka.nofa@pt-sena.co.id	$2a$12$7SL/6D/bak1cXFMpTlyr6uSdtHypLD.qqg0r2SIwzkdRu9gn.tzUu	\N	\N	\N	2023-08-23 10:27:44.975716	2023-08-23 10:27:44.975716	\N	300234	t	\N	\N
255	ribut.suyanto@pt-sena.co.id	$2a$12$TXxjfYAwzVB6qXrwYsz7Beu7.hroE4msX8bB4RlAs02Nb08Fa1.7y	\N	\N	\N	2023-08-23 10:27:45.384239	2023-08-23 10:27:45.384239	\N	300235	t	\N	\N
256	septhiyopriyono16@gmail.com	$2a$12$3cGpgTdx2tt7CnnEmWeAveH/G00Y4WTxXtLwUeaiFHof0C0ZkXu0i	\N	\N	\N	2023-08-23 10:27:45.787243	2023-08-23 10:27:45.787243	\N	300236	t	\N	\N
257	aflidian@pt-sena.co.id	$2a$12$qeIALQ9RjHHuDQxQZ8df.e7meVAwsQbvArJFk2eEP.tzCtAx31xMe	\N	\N	\N	2023-08-23 10:27:46.18594	2023-08-23 10:27:46.18594	\N	300237	t	\N	\N
258	rezaaam95@gmail.com	$2a$12$vira9JPMm3vU/YOLEvrXoeexn5Od/ZXh3wcYpKs./KOF.0Hr43N7G	\N	\N	\N	2023-08-23 10:27:46.582469	2023-08-23 10:27:46.582469	\N	300238	t	\N	\N
259	andanifajrin@gmail.com	$2a$12$fK4CAAB7pdkcGzsD5QAwVuw8intQUOpY2ISlQKUQLYbS7jIVMLD62	\N	\N	\N	2023-08-23 10:27:46.973955	2023-08-23 10:27:46.973955	\N	300239	t	\N	\N
260	arie.masyaid@pt-sena.co.id	$2a$12$WIiikI9uvyW4nfdObGhin.1Q1lYB5k2SHscHFyPmPWWrCCa54zEDW	\N	\N	\N	2023-08-23 10:27:47.367187	2023-08-23 10:27:47.367187	\N	300240	t	\N	\N
261	ghazian.hazazi@pt-sena.co.id	$2a$12$Mz9R19inTtFTytO2J5RXiO0uYFHlW1GWr3zy.ev/4eSQ4XRTIRPCa	\N	\N	\N	2023-08-23 10:27:47.764451	2023-08-23 10:27:47.764451	\N	500241	t	\N	\N
262	arief.syachrial@pt-sena.co.id	$2a$12$FavEX8P8A2fLGWHzP3DyrOJ2.kNRbyEWppj1JlLOcCzqpN7ZiGZKC	\N	\N	\N	2023-08-23 10:27:48.161572	2023-08-23 10:27:48.161572	\N	300242	t	\N	\N
263	andika.dwi@pt-sena.co.id	$2a$12$uiUwXhe5ICa81ZTyE7kv7eMRmCISoOEjdcSI9v0eJhAw0NUxH1JJO	\N	\N	\N	2023-08-23 10:27:48.556573	2023-08-23 10:27:48.556573	\N	300243	t	\N	\N
264	hendy.marta@pt-sena.co.id	$2a$12$fvwHnP8ogjk8s36ojPUYkevI/xfn9uEcFhfXknYvuLn4MfojQ/Gxm	\N	\N	\N	2023-08-23 10:27:48.96925	2023-08-23 10:27:48.96925	\N	300244	t	\N	\N
265	fighter88.at@gmail.com	$2a$12$sUHwFDSXYpW1JlbPA1pzyulueDveafOQ3wT6aKjSQsoxlY9rByZ0q	\N	\N	\N	2023-08-23 10:27:49.362114	2023-08-23 10:27:49.362114	\N	300245	t	\N	\N
266	warhadi645@gmail.com	$2a$12$5TXQiIPeTslgC/ZxQrsMROqItOvJgioYyUnbg8D4vuxtkuNorswgW	\N	\N	\N	2023-08-23 10:27:49.76246	2023-08-23 10:27:49.76246	\N	300246	t	\N	\N
267	fahmi.fazlur@pt-sena.co.id	$2a$12$JdAmDfpOUt6arXTfPnHCse417nkrMdbGhaHO0HCtW4jaBxqjV.Rqi	\N	\N	\N	2023-08-23 10:27:50.162381	2023-08-23 10:27:50.162381	\N	300247	t	\N	\N
268	yoga.hermawan@pt-sena.co.id	$2a$12$QxycefDDmhOM3sZ1wrQjsOrVgQ4qBINfyb/xyn4wjp.Q6wqZgXw02	\N	\N	\N	2023-08-23 10:27:50.559584	2023-08-23 10:27:50.559584	\N	500248	t	\N	\N
269	ruslan.hamzah@pt-sena.co.id	$2a$12$P9Qdj/jXipt/A8oES4eo.ODrIiPfdfStaeDpMc0m7ZMmbeSDErSn.	\N	\N	\N	2023-08-23 10:27:50.956967	2023-08-23 10:27:50.956967	\N	500249	t	\N	\N
270	arief.firmansyah@pt-sena.co.id	$2a$12$Czjvry5LALmaDdyrcsHv8e5wOieD/./edNJtwCUULgevp7GLZ4P0S	\N	\N	\N	2023-08-23 10:27:51.351212	2023-08-23 10:27:51.351212	\N	500251	t	\N	\N
271	irfandi.adiatama@pt-sena.co.id	$2a$12$bua74JtqTNV3OKASUBT4EO5P0cwJVUA1oiN3Hl5bVITdXyWiRSWYq	\N	\N	\N	2023-08-23 10:27:51.746765	2023-08-23 10:27:51.746765	\N	500252	t	\N	\N
272	devan.cesar@pt-sena.co.id	$2a$12$qDfNYcfHZ8GEoVeSZtK3humfYbwx4eVFTv.z7RyAP206P2VfqeFh2	\N	\N	\N	2023-08-23 10:27:52.138685	2023-08-23 10:27:52.138685	\N	500254	t	\N	\N
273	500255@pt-sena.co.id	$2a$12$qbDa5L9We1Hz0VkFm7Q63u5cLDIJbxVxWLZsx3mzmiSxZ65kKIbly	\N	\N	\N	2023-08-23 10:27:52.540969	2023-08-23 10:27:52.540969	\N	500255	t	\N	\N
274	wawan.setyawan91@gmail.com	$2a$12$8t4JGFB1bj6Ga9kz5Xsy.ur5qAs6p8TfOv3F7MqMEXwZmwEol7Syi	\N	\N	\N	2023-08-23 10:27:52.939775	2023-08-23 10:27:52.939775	\N	300256	t	\N	\N
275	dede.mubarak@gmail.com	$2a$12$bnCnFTtrUidpWBhHWJ6hjOkHTcY91wImE9FA6pT4AX7lOy732vmni	\N	\N	\N	2023-08-23 10:27:53.353386	2023-08-23 10:27:53.353386	\N	300257	t	\N	\N
276	busyra_abdi@yahoo.com	$2a$12$1uuEs/HMOtdzXKdDKjPORe/4NYBaKNlF5XtiQP44qFvkaILKP/FE2	\N	\N	\N	2023-08-23 10:27:53.748435	2023-08-23 10:27:53.748435	\N	300258	t	\N	\N
277	andri.rosli028@gmail.com	$2a$12$MiqvxlQjGKz1Y0u1JLY8O.LCtM7KMqpRo9.Y/sWzcewbLhfVk6UAO	\N	\N	\N	2023-08-23 10:27:54.144329	2023-08-23 10:27:54.144329	\N	300259	t	\N	\N
278	yaqub@pt-sena.co.id	$2a$12$F8zbNWShk9BXFVU7XtG2z.Q7Jh/MdhJ5w6JPp.i0Egni8H66iRmOa	\N	\N	\N	2023-08-23 10:27:54.539426	2023-08-23 10:27:54.539426	\N	400261	t	\N	\N
279	akbar.maulid@pt-sena.co.id	$2a$12$TCODgOjq3hwZbar1xx7jh.dwRJEZbpBYVsOOtgA4/M.ZoXZ5CHRji	\N	\N	\N	2023-08-23 10:27:54.949924	2023-08-23 10:27:54.949924	\N	300262	t	\N	\N
280	500263@pt-sena.co.id	$2a$12$Q.c/Yo9j76odgVKbAKU6o.7NrKUq9F2cncyHvJhY9SnGceL0LTDn6	\N	\N	\N	2023-08-23 10:27:55.34572	2023-08-23 10:27:55.34572	\N	500263	t	\N	\N
281	rosmalia@pt-sena.co.id	$2a$12$EEO26Why2z5PaIDV8CpRSu/YEtVJ.heSpUp7ScaS3lSrzv/pCdf4u	\N	\N	\N	2023-08-23 10:27:55.74086	2023-08-23 10:27:55.74086	\N	500264	t	\N	\N
282	irasarinatasya@gmail.com	$2a$12$mylhBdp9ITeApOjiK2Jj6O90LtDT8H7Sfp8uguWlGx0Av6YMdk/xe	\N	\N	\N	2023-08-23 10:27:56.162386	2023-08-23 10:27:56.162386	\N	500265	t	\N	\N
283	keziajhn@gmail.com	$2a$12$KijF0dU9kCFHV4Tv5XzDZOxhckdPO1f0kKx3iZXAy3e/qAAzTQC8u	\N	\N	\N	2023-08-23 10:27:56.561036	2023-08-23 10:27:56.561036	\N	200266	t	\N	\N
284	adhasari@pt-sena.co.id	$2a$12$uby1nVbKPv8VEZTnwXvHhOOOfKYl7Btmo/aLUC0xDOnOqq/4zToKq	\N	\N	\N	2023-08-23 10:27:56.959875	2023-08-23 10:27:56.959875	\N	200267	t	\N	\N
285	sinta.widyanisa@pt-sena.co.id	$2a$12$U4W6yeElwoDWd89OBsilpecrc1yRf1uDQqKvNr0qCQokZJDJFpRO2	\N	\N	\N	2023-08-23 10:27:57.353815	2023-08-23 10:27:57.353815	\N	300268	t	\N	\N
286	apang.nugroho@pt-sena.co.id	$2a$12$TF7L9C7LRDfTyO4IseFic.HNOptsfcIFbMfbGhr1uArinNHuzpoPa	\N	\N	\N	2023-08-23 10:27:57.757897	2023-08-23 10:27:57.757897	\N	300269	t	\N	\N
287	listyo.nugroho@pgn-solution.co.id	$2a$12$cJbZIrRlh4/R.C88i7uzieBLvInQmU1gGbOECXOE0GTxv112Le2c2	\N	\N	\N	2023-08-23 10:27:58.151543	2023-08-23 10:27:58.151543	\N	300270	t	\N	\N
288	paundrayahyal@gmail.com	$2a$12$VAu1NogirfjtRYvzxz8gIOciRvWrF5P1YYTgFxJWPG4VHkoMZWvPC	\N	\N	\N	2023-08-23 10:27:58.55074	2023-08-23 10:27:58.55074	\N	300271	t	\N	\N
289	prabowo.ikhsan@pt-sena.co.id	$2a$12$Ef9I2J5dxAtPCV1mQyAt0.kyNFX2byeRTIOJCf4HaOUWjFok8J6LO	\N	\N	\N	2023-08-23 10:27:58.955531	2023-08-23 10:27:58.955531	\N	300272	t	\N	\N
290	nurmala@pt-sena.co.id	$2a$12$cANX8WerLfxJxdcffxxTg.4q3L9zSX010AtwTHNwZ1KKxm2xa9MxS	\N	\N	\N	2023-08-23 10:27:59.364547	2023-08-23 10:27:59.364547	\N	200273	t	\N	\N
291	ekowibisono2011@gmail.com	$2a$12$8YBTnf/GoOkNU3rDnCwFxezLBn3hQqi3Pxx6uXAeZBdQ9PXWdMIsW	\N	\N	\N	2023-08-23 10:27:59.818513	2023-08-23 10:27:59.818513	\N	500274	t	\N	\N
292	iman.firmansyah@pt-sena.co.id	$2a$12$MoKVVLHwV7Y3F6AEX9gIXu4YM116gzdgzXA9bfXH5UabAINAQiUxK	\N	\N	\N	2023-08-23 10:28:00.214553	2023-08-23 10:28:00.214553	\N	500275	t	\N	\N
293	hafizh@pt-sena.co.id	$2a$12$6bPmJUKGoX/6Yd79keM2lOC1joDICL4m4PtC2v8FjtOzXlcshdYfa	\N	\N	\N	2023-08-23 10:28:00.608309	2023-08-23 10:28:00.608309	\N	300276	t	\N	\N
294	okta.arianto@pt-sena.co.id	$2a$12$Dlu9r3hu8fQGo2NLueEFje2gGcXLSNMUeQOMkHcbJlvpe7E1S4o8C	\N	\N	\N	2023-08-23 10:28:01.012424	2023-08-23 10:28:01.012424	\N	300277	t	\N	\N
295	muharrir.pic@pt-sena.co.id	$2a$12$K4uXzDLu8r7s1iGi6xqyD.TITVuw0CFIxlP9sL4YqrsCA/sWVpTu2	\N	\N	\N	2023-08-23 10:28:01.412148	2023-08-23 10:28:01.412148	\N	500707	t	\N	\N
296	modi_sagita@yahoo.com	$2a$12$O8Yc2I51DVFBHCHGvCMYVubjt0xEhHF2tpKDnHOhemDdlZicRUaUS	\N	\N	\N	2023-08-23 10:28:01.86499	2023-08-23 10:28:01.86499	\N	500278	t	\N	\N
297	hadiwibowo.bagus@gmail.com	$2a$12$rQOy8c7.ftKHjry3TAepu.mQ.Dfkaf0Cq6FTS1icHPrfzNyoCiCyG	\N	\N	\N	2023-08-23 10:28:02.326894	2023-08-23 10:28:02.326894	\N	200279	t	\N	\N
298	hafiana.syafitri@pt-sena.co.id	$2a$12$8uCewEQGqCWVYLHhGPMXzO7RMAz/TCAKSxao4sqGH4vn68ZGxAtOG	\N	\N	\N	2023-08-23 10:28:02.730559	2023-08-23 10:28:02.730559	\N	200280	t	\N	\N
299	admin.dominica@pt-sena.co.id	$2a$12$LQCjdOWcm74zwqmtlYGD3evHJzE0knXpfbX91I6FEUOaud0tLc9Ce	\N	\N	\N	2023-08-23 10:28:03.139059	2023-08-23 10:28:03.139059	\N	500708	t	\N	\N
300	dhani18.marianda@gmail.com	$2a$12$r.8US2nv461wwWxvb/YhVutKQrRfSL7LHBvnhqrB.HSXEjY5yQ8Du	\N	\N	\N	2023-08-23 10:28:03.551191	2023-08-23 10:28:03.551191	\N	300281	t	\N	\N
301	yenni.maulida06@gmail.com	$2a$12$jnWHnFaelhdzVWDx4I55D.C7HAooh7Sq8brdnHrYP18RrFZchelji	\N	\N	\N	2023-08-23 10:28:03.957906	2023-08-23 10:28:03.957906	\N	500282	t	\N	\N
302	hidayat@pt-sena.co.id	$2a$12$l1jornC2JgRd9mlRwOCRJ.QQmhkGsivODxNL56RXytPWS8HrWgreu	\N	\N	\N	2023-08-23 10:28:04.376595	2023-08-23 10:28:04.376595	\N	400283	t	\N	\N
303	raymond.lukas@pt-sena.co.id	$2a$12$5lNUm/FgwJiaorLtwT.4.OATlkLWHh765kZhF4NhyLEWyiClBnvJu	\N	\N	\N	2023-08-23 10:28:04.879839	2023-08-23 10:28:04.879839	\N	300284	t	\N	\N
304	irwan.indrawijaya@pt-sena.co.id	$2a$12$fgojhx0e/PBrtrav9neHuuL/0ynZ9DLvzYn4T46BHQof2bRSTFt7C	\N	\N	\N	2023-08-23 10:28:05.408265	2023-08-23 10:28:05.408265	\N	400285	t	\N	\N
305	muzrin@pt-sena.co.id	$2a$12$RNjTo8ZUkkYZ4GFDz/TK..tuJrtHWFNkSyFNuHZUqpjT8JBjJ/nhy	\N	\N	\N	2023-08-23 10:28:05.824231	2023-08-23 10:28:05.824231	\N	400286	t	\N	\N
306	micha.farid@pt-sena.co.id	$2a$12$tsKZtVAtbsw2dHqfMlXZx.S8lO2uWnJgzJjuh1HlB5DWP5g2igY2K	\N	\N	\N	2023-08-23 10:28:06.247465	2023-08-23 10:28:06.247465	\N	400287	t	\N	\N
307	adi.gunawan@pt-sena.co.id	$2a$12$izyD/cEAPp5oiHtrFYupuO3bS.gsWJ2WopBh37uQL0iA1VFlbAmZG	\N	\N	\N	2023-08-23 10:28:06.666481	2023-08-23 10:28:06.666481	\N	300288	t	\N	\N
308	firdausilyasa@gmail.com	$2a$12$/wOdABSXmTM8737ExM1NZuAkjB.CRgA8bHqogM3RFmRJVIeIgu8Gm	\N	\N	\N	2023-08-23 10:28:07.081779	2023-08-23 10:28:07.081779	\N	500289	t	\N	\N
309	kaniayurengganis@gmail.com	$2a$12$6nC72649OdyPDWLqP/jGE.vzv/fYGxopOEN2W/j059b5OZ55SVxj6	\N	\N	\N	2023-08-23 10:28:07.493777	2023-08-23 10:28:07.493777	\N	500292	t	\N	\N
310	hari.pratoyo@pt-sena.co.id	$2a$12$UjhYNpdZWTGoLJTFt33cR.Qbzw5yubDHqPU.vqDfQuEuBAa1I8f26	\N	\N	\N	2023-08-23 10:28:07.907383	2023-08-23 10:28:07.907383	\N	400293	t	\N	\N
311	ketuthadi@yahoo.com	$2a$12$0.b312dcZAy9eUZzVcPSfeaP9PXJXo2MaThdCccur32kV6xZ2OH8m	\N	\N	\N	2023-08-23 10:28:08.315209	2023-08-23 10:28:08.315209	\N	400294	t	\N	\N
312	raka.indro@pt-sena.co.id	$2a$12$I68xFG9e/qyzgqpclvqqPuZJysU5ZDrvGEnjBS53rQDtwBSH12IdK	\N	\N	\N	2023-08-23 10:28:08.726543	2023-08-23 10:28:08.726543	\N	400295	t	\N	\N
313	ibnu.asturrachman@pt-sena.co.id	$2a$12$cr2xGaubCCYReWZPH2U6den9DfSkHNHwp83XsFVXwfhYllyBME0cW	\N	\N	\N	2023-08-23 10:28:09.132814	2023-08-23 10:28:09.132814	\N	400296	t	\N	\N
314	agung@pt-sena.co.id	$2a$12$QcWD.LfWkfrs7bvzh3Ck/eAIAhGYDuY2Yds1ETCkDts6wSwN4gm/K	\N	\N	\N	2023-08-23 10:28:09.543521	2023-08-23 10:28:09.543521	\N	100297	t	\N	\N
315	dominica@pt-sena.co.id	$2a$12$liqyMTWUpIPQV1I9K30PTOMCesrllgk7SAx7MdWF6BpvFg97is4Ii	\N	\N	\N	2023-08-23 10:28:09.954464	2023-08-23 10:28:09.954464	\N	400298	t	\N	\N
316	nico@pt-sena.co.id	$2a$12$DaBCZMbBOpJhlvgu.eEgh.p/mh4iHz2n8Eh5eUeN/ujFL2OaNdtqe	\N	\N	\N	2023-08-23 10:28:10.365442	2023-08-23 10:28:10.365442	\N	100299	t	\N	\N
317	jonatan@pt-sena.co.id	$2a$12$fwQw09vvqt9OEkZWbs8kGetdn.49aHc8YTs.KSHN2QWaz8UvTvvHC	\N	\N	\N	2023-08-23 10:28:10.773333	2023-08-23 10:28:10.773333	\N	100300	t	\N	\N
318	jecky@pt-sena.co.id	$2a$12$1cza2os/iuR3.gtQdbeIAumXlNqXpOtOTdcvNVTXKjrlrwDCmxVL2	\N	\N	\N	2023-08-23 10:28:11.176011	2023-08-23 10:28:11.176011	\N	100301	t	\N	\N
319	dedy@pt-sena.co.id	$2a$12$vEp5SWWBYTl8zbqbsjf6TO8DQ8H10stHqr15Jq2Ee9yW70l85cAaq	\N	\N	\N	2023-08-23 10:28:11.610735	2023-08-23 10:28:11.610735	\N	100302	t	\N	\N
320	agafir@pt-sena.co.id	$2a$12$G/QkP2N5TBgHXekxTlzPJ.DXse0McrXBbHV6AHlxgU4p2ANSoxpe.	\N	\N	\N	2023-08-23 10:28:12.013349	2023-08-23 10:28:12.013349	\N	100303	t	\N	\N
321	dito@pt-sena.co.id	$2a$12$KGVxqV06z10kmG5cd2KNq.OLiPIH0LRnqTYRDxk0O.pLc3I47xJXW	\N	\N	\N	2023-08-23 10:28:12.511719	2023-08-23 10:28:12.511719	\N	100304	t	\N	\N
322	yosa_hamdani@yahoo.com	$2a$12$AEYlnOVwFAoYS6R/GjYpIeGsNtvFAcw9yJavKGwsT5lSa3GtgM1BW	\N	\N	\N	2023-08-23 10:28:12.920114	2023-08-23 10:28:12.920114	\N	200305	t	\N	\N
323	muharrir@pt-sena.co.id	$2a$12$5itCfxC2m/4sAYJAQfR3Xe7KNqMhjA16P1ZrKOxci7MOcJvr6cjT.	\N	\N	\N	2023-08-23 10:28:13.324558	2023-08-23 10:28:13.324558	\N	400306	t	\N	\N
324	400307@pt-sena.co.id	$2a$12$PfTkpQ4iqD5w/dQkdrjhFee9tGkE7cljv/jguFkPvV7mYRgRhs82S	\N	\N	\N	2023-08-23 10:28:13.740026	2023-08-23 10:28:13.740026	\N	400307	t	\N	\N
325	achmad.mirza@pt-sena.co.id	$2a$12$Af/x0T.zKdxCwR5gspUOte.S4XgAln0fbOwK0SqFssBDBQCLbYpZC	\N	\N	\N	2023-08-23 10:28:14.151639	2023-08-23 10:28:14.151639	\N	400308	t	\N	\N
326	fajar.ramdani89@gmail.com	$2a$12$SeP3JwN4iND0fREt9vw1p.728VEiBGgt55JJClPXJ48frOU8QndUi	\N	\N	\N	2023-08-23 10:28:14.554246	2023-08-23 10:28:14.554246	\N	300309	t	\N	\N
327	falih.muhtadi@gmail.com	$2a$12$ftoVwfyKLNV6L3kn3Ghe1..E3cSCFGz3YRGqMjaFL86lCxzZIa9km	\N	\N	\N	2023-08-23 10:28:14.957661	2023-08-23 10:28:14.957661	\N	300310	t	\N	\N
328	reza.armeynaldo@pt-sena.co.id	$2a$12$u33tEIOzux1qiJ0..6hCDuaU4jnwLpGljKLs.JdYIqFy0JCpYSwd.	\N	\N	\N	2023-08-23 10:28:15.375441	2023-08-23 10:28:15.375441	\N	300311	t	\N	\N
329	nurcahyo@pt-sena.co.id	$2a$12$9UlmzTvaYOkFXOpchxPCdOtNi2a2y.8qm0KNLxP9lxh3R6Ag3rRMC	\N	\N	\N	2023-08-23 10:28:15.790093	2023-08-23 10:28:15.790093	\N	300312	t	\N	\N
330	rijajuarsa@gmail.com	$2a$12$YjdKzjASex30PNIdjbaSVeIxEO6r3/0rvPDbDhQ5ytuSO6Rk7OxJS	\N	\N	\N	2023-08-23 10:28:16.208754	2023-08-23 10:28:16.208754	\N	300313	t	\N	\N
331	300314@pt-sena.co.id	$2a$12$aCKNbHfNBfOXzGcKrEYJwOZmP.oOMP2StpXKaSG9d8nNbsRFfsRoe	\N	\N	\N	2023-08-23 10:28:16.634667	2023-08-23 10:28:16.634667	\N	300314	t	\N	\N
332	triutama@pt-sena.co.id	$2a$12$L6jaQLEtSpXBPCVwlLej7eWdTi2fMErz4bEaAU/skfUgPQnwi0e6S	\N	\N	\N	2023-08-23 10:28:17.041351	2023-08-23 10:28:17.041351	\N	300315	t	\N	\N
333	300316@pt-sena.co.id	$2a$12$I6Nb2HJszzL6yfaBkoZV7umlc8RuBW9apQlVzjBFJ9bUv/Kj68nWy	\N	\N	\N	2023-08-23 10:28:17.446552	2023-08-23 10:28:17.446552	\N	300316	t	\N	\N
334	dedy.pic@pt-sena.co.id	$2a$12$6ccLREGCZgAheOldvZpRxeBCQUdnEFI9o0NbkhHLE9LNRR.t/9WHy	\N	\N	\N	2023-08-23 10:28:17.856667	2023-08-23 10:28:17.856667	\N	500709	t	\N	\N
335	fithratullahhabibie16@yahoo.com	$2a$12$nhyssI88/pR89uX3VDg0tuoPp.a2/koa0e0jS4Cz62N5UpUCblUte	\N	\N	\N	2023-08-23 10:28:18.263497	2023-08-23 10:28:18.263497	\N	300318	t	\N	\N
337	hamid.sobirin@pt-sena.co.id	$2a$12$lus3zwAjFNW/3pPRV6fEBu8odddmZhZKnOHqy3kTGTkv//yKwrsuG	\N	\N	\N	2023-08-23 10:28:18.670966	2023-08-23 10:28:18.670966	\N	300319	t	\N	\N
338	syaiful.pic@pt-sena.co.id	$2a$12$FHb8gIenoCYt7oRCldZih.ealZJGGerc//vAn9Jri3eRNs1aAtBgy	\N	\N	\N	2023-08-23 10:28:19.06375	2023-08-23 10:28:19.06375	\N	500710	t	\N	\N
339	andri.pic@pt-sena.co.id	$2a$12$CggsoqGYYwCbbWEbOXPcxeSCNszI.0npQf.JaF7DSbhHe10f9/7dq	\N	\N	\N	2023-08-23 10:28:19.458071	2023-08-23 10:28:19.458071	\N	500711	t	\N	\N
340	muzrin.pic@pt-sena.co.id	$2a$12$ApifhH2.xnaqg75BJA6I.OkYgZ4FsY..WWvY5SUVEpJkKW5rCmCgS	\N	\N	\N	2023-08-23 10:28:19.865132	2023-08-23 10:28:19.865132	\N	500712	t	\N	\N
341	ryan.pic@pt-sena.co.id	$2a$12$0rMnTZqXXjTkJ0tg2RZFsutsHnuq1.X2tDSM0G/PSGKiCT.SGf0OO	\N	\N	\N	2023-08-23 10:28:20.263118	2023-08-23 10:28:20.263118	\N	500713	t	\N	\N
342	gunawan.pic@pt-sena.co.id	$2a$12$sJjYQJfvW9tKpCpZXTkzy.O7v9a8Uq7vzHr3tkcOHcP3jPe0aTH3u	\N	\N	\N	2023-08-23 10:28:20.660135	2023-08-23 10:28:20.660135	\N	500714	t	\N	\N
343	anis.pic@pt-sena.co.id	$2a$12$VDP3FjcDyit3t/FMrPCiR.jA.wuZ2r.n6/X6sKturAawEn9iiXyIa	\N	\N	\N	2023-08-23 10:28:21.051201	2023-08-23 10:28:21.051201	\N	500715	t	\N	\N
344	micha.pic@pt-sena.co.id	$2a$12$ClrIbJBUNNOaDZ8jp8NXYOEisaTxeFpDZoc0LYnjd5emyQPop.vzC	\N	\N	\N	2023-08-23 10:28:21.446469	2023-08-23 10:28:21.446469	\N	500716	t	\N	\N
345	harland.pic@pt-sena.co.id	$2a$12$6PwYfU4SKEvcL1/ObusypOVGObYh/jYI6kexwvBAl1fbz.aVyCOAm	\N	\N	\N	2023-08-23 10:28:21.84268	2023-08-23 10:28:21.84268	\N	500717	t	\N	\N
346	ghani.pic@pt-sena.co.id	$2a$12$y0qnJKtaCMJJwwR7G2rAOe.hK6C0NEmHm8N7yGKPd/zpGtEVRabSi	\N	\N	\N	2023-08-23 10:28:22.250618	2023-08-23 10:28:22.250618	\N	500718	t	\N	\N
347	ronald.pic@pt-sena.co.id	$2a$12$C4Xk50naXB/J0EaDfnsPFe9lj9rIwz0Dw1OAJmiQRPWlu8n1vCxN6	\N	\N	\N	2023-08-23 10:28:22.684348	2023-08-23 10:28:22.684348	\N	500719	t	\N	\N
348	kemas.process@gmail.com	$2a$12$sIkXJo8XVXCeLsN8VeVXsuJLvgeSs2zeqheBASpaSC.yJarz02zny	\N	\N	\N	2023-08-23 10:28:23.085445	2023-08-23 10:28:23.085445	\N	500320	t	\N	\N
349	rury.dwi.nurhadi@gmail.com	$2a$12$w92Lo55YDtRCf0QhiCOjjOfFNe4XRk1zEWUEJBH1PWf4Fsv5LN7w2	\N	\N	\N	2023-08-23 10:28:23.479732	2023-08-23 10:28:23.479732	\N	500321	t	\N	\N
350	imamil.ibil@gmail.com	$2a$12$33bxqxIPu95c8pYSn8bn3.JYuWRjsjzMzVdz8X.Krzgj0eyamb872	\N	\N	\N	2023-08-23 10:28:23.880193	2023-08-23 10:28:23.880193	\N	300322	t	\N	\N
351	angradianpratama11@gmail.com	$2a$12$eGgn8Mwk1I7DzY3HBMGJLeCMJP1JaG1lfON7haXpKCqinJEwA2sOS	\N	\N	\N	2023-08-23 10:28:24.275732	2023-08-23 10:28:24.275732	\N	300323	t	\N	\N
352	akbar.m.benjamin@gmail.com	$2a$12$h5906hr6L8pnbkR5daSNR.11ecDrPfV56U.xt2dTyf89iXQb3zSp6	\N	\N	\N	2023-08-23 10:28:24.673914	2023-08-23 10:28:24.673914	\N	300324	t	\N	\N
353	fakhrurrahman2@gmail.com	$2a$12$PhFC6m/Ov6AWQfR8PaRtI.GOFzwovUW4AypPbMejIWXKeKt/YuGgy	\N	\N	\N	2023-08-23 10:28:25.074859	2023-08-23 10:28:25.074859	\N	300325	t	\N	\N
354	wendiseptian5@gmail.com	$2a$12$C9dRubOi7MQc7kZT48mv9OKXohy7y.6Dgyz53z4YLjGrjzwsgtDuW	\N	\N	\N	2023-08-23 10:28:25.468945	2023-08-23 10:28:25.468945	\N	300326	t	\N	\N
355	500327@pt-sena.co.id	$2a$12$OMyZEklDcgVzCzIlXWDdCeslwG4K8mIJ8pDTeoBnidcHMrPLSod9a	\N	\N	\N	2023-08-23 10:28:25.865179	2023-08-23 10:28:25.865179	\N	500327	t	\N	\N
356	tutur@pgn-solution.co.id	$2a$12$Fqs06Acf2p5eNiwSv02MpeSQfIqewGKWNb.oNpqjvRF7rpvLwVKQq	\N	\N	\N	2023-08-23 10:28:26.263345	2023-08-23 10:28:26.263345	\N	300328	t	\N	\N
357	subagja@pt-sena.co.id	$2a$12$8x7F6lVMOg4.CZw.t/B7h.ynVcI2/BEZi1vPaH8ztoMrAwv/OcG0i	\N	\N	\N	2023-08-23 10:28:26.657065	2023-08-23 10:28:26.657065	\N	300329	t	\N	\N
358	putu.dharma@pt-sena.co.id	$2a$12$eY1wIXoNPGM6rqvMItGyheMPtY1pv0hjMY3ruNytNl2AZbmnJWJ5.	\N	\N	\N	2023-08-23 10:28:27.072637	2023-08-23 10:28:27.072637	\N	500330	t	\N	\N
359	anthony@pt-sena.co.id	$2a$12$HVuo7etZpSxKJRoDy/xXpO59n0wzmd/i0a/VVDJbWhgXWwuLw3coW	\N	\N	\N	2023-08-23 10:28:27.47707	2023-08-23 10:28:27.47707	\N	500331	t	\N	\N
360	dienceph.chandra@pt-sena.co.id	$2a$12$K5vkvmIek1RR2hlFMUNS7OTCGi0y1Z8f47Z5U0eEgoJ/4mD3puGca	\N	\N	\N	2023-08-23 10:28:27.884771	2023-08-23 10:28:27.884771	\N	500332	t	\N	\N
361	muhammad.huda@pt-sena.co.id	$2a$12$z9QpAZscVy5cyey1RrByE.MHQ5E7QIq.FYZgQl4dcD6aggJKNYfXW	\N	\N	\N	2023-08-23 10:28:28.280948	2023-08-23 10:28:28.280948	\N	500333	t	\N	\N
362	avianto21@pt-sena.co.id	$2a$12$BhRqe5j32gA7zM9aOQwmMu7DFtn5nH9Z062MXSVxEclk6l0rgBEBK	\N	\N	\N	2023-08-23 10:28:28.68034	2023-08-23 10:28:28.68034	\N	500334	t	\N	\N
363	hadira.salmi@pt-sena.co.id	$2a$12$IoHXEM5ewAKc7uPv5gNUa.4dt8aI7zUmGnQLZJtanoUJseUbSOe9q	\N	\N	\N	2023-08-23 10:28:29.083724	2023-08-23 10:28:29.083724	\N	500335	t	\N	\N
364	muhammad.gilang@pt-sena.co.id	$2a$12$1JOq5pEYtrghkOIko5cyseteOVaW7Iq9IoEkYqi2mU3DV/cksbpNC	\N	\N	\N	2023-08-23 10:28:29.478669	2023-08-23 10:28:29.478669	\N	500337	t	\N	\N
365	monica@pt-sena.co.id	$2a$12$1iEdPEUAbOz/pwPHmhEX9O2pygF/ufngy4HEfTmybQHCYqfmETp96	\N	\N	\N	2023-08-23 10:28:29.873184	2023-08-23 10:28:29.873184	\N	300338	t	\N	\N
366	budiaryanto411@gmail.com	$2a$12$KR5.klE0QsSRRtcKlX882.eBo9DiaUrdHgaW/G6GXzpzyVw1BCjs6	\N	\N	\N	2023-08-23 10:28:30.269629	2023-08-23 10:28:30.269629	\N	500339	t	\N	\N
367	ariyandi.yuda@pt-sena.co.id	$2a$12$6i5Yve5rAf1dqqmTTExUqOa0uRJIBpG6ikQ5WJS0Ew47gq7Jt5/Oe	\N	\N	\N	2023-08-23 10:28:30.667163	2023-08-23 10:28:30.667163	\N	300340	t	\N	\N
368	andang_2010@yahoo.com	$2a$12$.VqnNrEn2rkWXQy12yKM2.dnXG.8SC6wUOwNxpgXEHRAty4NzyMrW	\N	\N	\N	2023-08-23 10:28:31.073505	2023-08-23 10:28:31.073505	\N	500341	t	\N	\N
369	rahmantyo.erlangga@pt-sena.co.id	$2a$12$owJr0Ce0hAMZFGcdA8LisOUDUisFm9u/zbGVphehOVx7t637/pdNi	\N	\N	\N	2023-08-23 10:28:31.469083	2023-08-23 10:28:31.469083	\N	500342	t	\N	\N
370	500343@pt-sena.co.id	$2a$12$4trluMrnYB2LQpL6WDhdXOFq142WhX5r0OoeTo1iBa5mAOHkewB/C	\N	\N	\N	2023-08-23 10:28:31.92261	2023-08-23 10:28:31.92261	\N	500343	t	\N	\N
371	edi.effendi@pt-sena.co.id	$2a$12$.L9z19obOBLFjvAG65Ul/OQkGoVCfBLnGZjsFyHDf1Z9oBSx1BvQy	\N	\N	\N	2023-08-23 10:28:32.336507	2023-08-23 10:28:32.336507	\N	500344	t	\N	\N
372	achmadato1616@gmail.com	$2a$12$y6lGlOB3M9C9CguK.zxSb.s0JWcxSjfHHagXiQZS3D1GdpZ7vRx7u	\N	\N	\N	2023-08-23 10:28:32.7389	2023-08-23 10:28:32.7389	\N	500345	t	\N	\N
373	rahma@pt-sena.co.id	$2a$12$IVUzhd.CitKMvqcFWMRIH.XflnHUusjQDgDh1HuKy5eIyBeV3fFfC	\N	\N	\N	2023-08-23 10:28:33.139681	2023-08-23 10:28:33.139681	\N	200346	t	\N	\N
374	heri.kurniawan@pt-sena.co.id	$2a$12$PknY4UgnViKFHg7K/OK3YejjWI5aHGIQ1Dkxoo.GzNFDp7SH2TC.O	\N	\N	\N	2023-08-23 10:28:33.555952	2023-08-23 10:28:33.555952	\N	500347	t	\N	\N
375	arimbi.sabatini@pt-sena.co.id	$2a$12$I0WQz47N0Gu89veufjMblOEdJDLhg1rZeIKhew.W3C3YXLEKhmbgy	\N	\N	\N	2023-08-23 10:28:33.972452	2023-08-23 10:28:33.972452	\N	500348	t	\N	\N
376	dzikri@pt-sena.co.id	$2a$12$uzKrqVxbTmBKBiBN/A/h3uVuNJqUof2/lQjjy8n2IMxNAlwLWAHfa	\N	\N	\N	2023-08-23 10:28:34.380307	2023-08-23 10:28:34.380307	\N	500349	t	\N	\N
377	herry.yusuf@pt-sena.co.id	$2a$12$RAtZTH.94NDqDmWgI8G1..qiRmXhmzjSn/LTUqpzub8Nvaze68RJu	\N	\N	\N	2023-08-23 10:28:34.77439	2023-08-23 10:28:34.77439	\N	500350	t	\N	\N
378	raflianur@pt-sena.co.id	$2a$12$Q9xCiaNM35VhC5XDieXyT.2ELT8mvQDf5tROVBFJv.FWV0Cu4OWxi	\N	\N	\N	2023-08-23 10:28:35.172852	2023-08-23 10:28:35.172852	\N	500351	t	\N	\N
379	200352@pt-sena.co.id	$2a$12$xv.xLMgHWqn2UDk0wYEmVuFCIIa3tGAgsk0ggpTFAHQlovJlSI3Su	\N	\N	\N	2023-08-23 10:28:35.571172	2023-08-23 10:28:35.571172	\N	200352	t	\N	\N
380	andrean@pt-sena.co.id	$2a$12$0S3HSQh8VdFpuVJ063WuQeGOTBoGAOcLiA6501ZFrCCKGWDMrvW2i	\N	\N	\N	2023-08-23 10:28:35.963855	2023-08-23 10:28:35.963855	\N	300353	t	\N	\N
381	m.nurichsan@pt-sena.co.id	$2a$12$5xAnyJdSGYiGGtLOyLPH7OKeoWXu/SS9N/pSgiUihf6A3Ljlfgd/u	\N	\N	\N	2023-08-23 10:28:36.360746	2023-08-23 10:28:36.360746	\N	300354	t	\N	\N
382	wulida@pt-sena.co.id	$2a$12$ml.BoXqMhvWo7FF5WYkxWObYPWDHu1jeqNOgKHMSraQpy6e1zXrCu	\N	\N	\N	2023-08-23 10:28:36.75789	2023-08-23 10:28:36.75789	\N	500355	t	\N	\N
383	irma.olivia@pt-sena.co.id	$2a$12$mcEPkjLGnb03uc8F7ViZkOWKeo8s4bGXBniXdwq2ky9pz4WD/jPd.	\N	\N	\N	2023-08-23 10:28:37.158012	2023-08-23 10:28:37.158012	\N	500356	t	\N	\N
384	adjipuspakartanegara@gmail.com	$2a$12$PJdVvjWO2BfRAOwKRW6RQuPGB0Ki6GKnaRPqwpIs..CfheBkLMpvi	\N	\N	\N	2023-08-23 10:28:37.560676	2023-08-23 10:28:37.560676	\N	500357	t	\N	\N
385	fadhillah.yudi@gmail.com	$2a$12$Syk.z.xGtW2kqeU3QVYuSeHicey1SfxdvpCHxB4BUGBXS8xdLgTxW	\N	\N	\N	2023-08-23 10:28:37.958146	2023-08-23 10:28:37.958146	\N	300358	t	\N	\N
386	jokomul17@gmail.com	$2a$12$gb03.K9iK2Sh8AxK2C9BoOCAC5qHPyzZL00t9h.Ao9R1PLgLiR.iK	\N	\N	\N	2023-08-23 10:28:38.356838	2023-08-23 10:28:38.356838	\N	500359	t	\N	\N
387	m.rony@pt-sena.co.id	$2a$12$3LudSlIxEp3zrN9w942iheFHw80ORb90/TmykxSDCypZjjA0u.1jG	\N	\N	\N	2023-08-23 10:28:38.755239	2023-08-23 10:28:38.755239	\N	500360	t	\N	\N
388	gamler@pt-sena.co.id	$2a$12$gTuZwUHninokqAmiPMzj5.w2W6LRkpWdWbHM8O41V/pIwFQpwP0ce	\N	\N	\N	2023-08-23 10:28:39.157093	2023-08-23 10:28:39.157093	\N	300361	t	\N	\N
389	purwanto@pt-sena.co.id	$2a$12$iIrU0KlBelFFOHDkTdeo4u2PaW2cZ30RtaYhmeB3JAof8BiKiIKaS	\N	\N	\N	2023-08-23 10:28:39.552626	2023-08-23 10:28:39.552626	\N	200362	t	\N	\N
390	adji@pt-sena.co.id	$2a$12$1czw.pCgIoCbdHOeWiocjeXO7Ljf2wvCDNAd68zq6kNXNZejdUtD.	\N	\N	\N	2023-08-23 10:28:39.963701	2023-08-23 10:28:39.963701	\N	200363	t	\N	\N
391	300364@pt-sena.co.id	$2a$12$0Bl033FmpecBoLke5HYLJuDHmFRvk0giLl36WjklVL83TddQfJKBy	\N	\N	\N	2023-08-23 10:28:40.360804	2023-08-23 10:28:40.360804	\N	300364	t	\N	\N
392	tika9363@gmail.com	$2a$12$/XFqtiQ7n6EHYVUiVaKdDePtoPPdzRJkm370iR5TMFHHQodYY4Yr.	\N	\N	\N	2023-08-23 10:28:40.805928	2023-08-23 10:28:40.805928	\N	300365	t	\N	\N
393	300366@pt-sena.co.id	$2a$12$fWA/YPOy5I49YUFOiNjNZ.9byQBYfRvZbMSxarj0efimor54rqP7a	\N	\N	\N	2023-08-23 10:28:41.226921	2023-08-23 10:28:41.226921	\N	300366	t	\N	\N
394	ade.kodrat@pt-sena.co.id	$2a$12$nwOEJRNRRCTjuzgBq56Jf.CzMfQQMYWjQ3TpipgSUNMWNVU7YQmg2	\N	\N	\N	2023-08-23 10:28:41.627827	2023-08-23 10:28:41.627827	\N	500367	t	\N	\N
395	hisayafajri@gmail.com	$2a$12$0GPVwvy7utf42WVH5huW2.z7qedrE3u.dI/3acaUGDjGpvYgYPwZy	\N	\N	\N	2023-08-23 10:28:42.029667	2023-08-23 10:28:42.029667	\N	500368	t	\N	\N
396	edianukasep@gmail.com	$2a$12$9xThM2g0c/WDHMg78D6i5e9PIRnxMeqBfWRa1zbEg6OQIQzKZVj7O	\N	\N	\N	2023-08-23 10:28:42.435093	2023-08-23 10:28:42.435093	\N	500369	t	\N	\N
397	ahmad@pt-sena.co.id	$2a$12$/611xV.1X4XwwxXvzxyAm.MVFZRovcuDMbETsDtXUtuMQ.mLh//ou	\N	\N	\N	2023-08-23 10:28:42.832738	2023-08-23 10:28:42.832738	\N	300370	t	\N	\N
398	handyta.anindyasarathi@pt-sena.co.id	$2a$12$lj8RNc6iMLCxkyuWIYigF.mI9tDR7nV2Mw8XXFViztn/MlMyMInSO	\N	\N	\N	2023-08-23 10:28:43.238784	2023-08-23 10:28:43.238784	\N	500371	t	\N	\N
399	300372@pt-sena.co.id	$2a$12$SzGx52q7KEBBbVFwfIu4eu5z8zXlKVQV0FVAxPECeJGqdpLkbjvgu	\N	\N	\N	2023-08-23 10:28:43.648176	2023-08-23 10:28:43.648176	\N	300372	t	\N	\N
400	300373@pt-sena.co.id	$2a$12$lHT61KzLsg.tFLq3iOQHZeNNVi.b51eqleQkcpWv2StdsxIxeWavW	\N	\N	\N	2023-08-23 10:28:44.08202	2023-08-23 10:28:44.08202	\N	300373	t	\N	\N
401	siti.fathimah@pt-sena.co.id	$2a$12$DA3hUa8cL1yT2VikokJUTO5Ys4m6KNQmRuj77sJ/Q5e0KHakCrbGa	\N	\N	\N	2023-08-23 10:28:44.477052	2023-08-23 10:28:44.477052	\N	300374	t	\N	\N
402	riandiasa@gmail.com	$2a$12$Oosn4X4glLSv16jn5rqyaugJDJfTS/Mcv1Abe0EXBTgSCpl8ulx3a	\N	\N	\N	2023-08-23 10:28:44.92235	2023-08-23 10:28:44.92235	\N	500375	t	\N	\N
403	moch.ardiansyah@pgn-solution.co.id	$2a$12$/WAS5eVkUTOkLew6LaPIBOGmpQoQlizrF2xxGFK6xf/yUd4rs7UsW	\N	\N	\N	2023-08-23 10:28:45.359243	2023-08-23 10:28:45.359243	\N	300376	t	\N	\N
404	deni.fahamsyah@pt-sena.co.id	$2a$12$H1sp/3AsKB8aOtfCYM59Q.bkaHt4CPaucv9pMW.WRewTuzXNim8tq	\N	\N	\N	2023-08-23 10:28:45.769973	2023-08-23 10:28:45.769973	\N	500377	t	\N	\N
405	hasinabasa@gmail.com	$2a$12$l.w0sSOVGlTUEsn.XUb.Nul0HTM30fX6OPmGfM4xBurvsE/ENAB.2	\N	\N	\N	2023-08-23 10:28:46.181193	2023-08-23 10:28:46.181193	\N	500378	t	\N	\N
406	firdaulfatunnikmah22@gmail.com	$2a$12$OVegNRLO3bEiLql10Rr1T.qXUYxd4rSu6Y/jIKQsdztchu2t4UU8S	\N	\N	\N	2023-08-23 10:28:46.591146	2023-08-23 10:28:46.591146	\N	300379	t	\N	\N
407	m.charischakim@gmail.com	$2a$12$JF/AqkBi/XyV9Hi8KLHck.I4xJR7xjr5s5X7HgKtjDzdTtJlMMJ/G	\N	\N	\N	2023-08-23 10:28:46.995621	2023-08-23 10:28:46.995621	\N	500380	t	\N	\N
408	znalkonstruksi@gmail.com	$2a$12$dT8fj.aIzcauIOABz7Q2tOlrMTPuqOcc/bmdLqlajrGg7QcxaVMga	\N	\N	\N	2023-08-23 10:28:47.391542	2023-08-23 10:28:47.391542	\N	300381	t	\N	\N
409	astidhita@pt-sena.co.id	$2a$12$CbbEVaM7.loM04O9v0STEOWdA9mLLY2yDdFHFeeA7yw816UFBxmcy	\N	\N	\N	2023-08-23 10:28:47.799103	2023-08-23 10:28:47.799103	\N	300382	t	\N	\N
410	fabry@pt-sena.co.id	$2a$12$XY8P9FJvsf/wC8XyaqNUP.2WdMkkUwHqwCSXwVSoPQrtHr/aVElw2	\N	\N	\N	2023-08-23 10:28:48.195022	2023-08-23 10:28:48.195022	\N	500383	t	\N	\N
411	asharilepeng@gmail.com	$2a$12$owqcGng4raotU5Bcd2TKcuvGw5f6.ZJ8wRxrRAgLmVxHhzY1Q/Tl.	\N	\N	\N	2023-08-23 10:28:48.599218	2023-08-23 10:28:48.599218	\N	500384	t	\N	\N
412	art_br99@yahoo.co.id	$2a$12$u7CgrCfARF72UaBHxUQ/Gu.tRrd5a4Jx3ajGz7eMIUQOLdCciB1g2	\N	\N	\N	2023-08-23 10:28:48.996192	2023-08-23 10:28:48.996192	\N	300385	t	\N	\N
413	sapto.bayu889@gmail.com	$2a$12$OE.Wi8E2wxfekYdLu0d7juhgHtWGiu3etslNW1E1EMJOrzocbaPay	\N	\N	\N	2023-08-23 10:28:49.392895	2023-08-23 10:28:49.392895	\N	500386	t	\N	\N
414	nurul.hidayat@pt-sena.co.id	$2a$12$TeeVJVege7KhCcE9q1vLO.ZgYHkfk4BuJB0tD.LJYeeudd0km2bcu	\N	\N	\N	2023-08-23 10:28:49.802439	2023-08-23 10:28:49.802439	\N	300387	t	\N	\N
415	rizkyyuniawan.work@gmail.com	$2a$12$JONGTcH9OOIHwYzvVr0aoOnfCk5UIZbPtITrg.yLLT6JLo.oIKQXi	\N	\N	\N	2023-08-23 10:28:50.209301	2023-08-23 10:28:50.209301	\N	500388	t	\N	\N
416	rudisir77@gmail.com	$2a$12$oZ1blC1ZyqoeNVBlgh./.e2lxZzfZI69OlRlqeuIRSw22bSVphoPC	\N	\N	\N	2023-08-23 10:28:50.603097	2023-08-23 10:28:50.603097	\N	300389	t	\N	\N
417	500390@pt-sena.co.id	$2a$12$TmqtmQlfSAAUb4znrrjFfeTCjukKZfW/gQ31cmtQowv3eA4xqmLi6	\N	\N	\N	2023-08-23 10:28:51.001915	2023-08-23 10:28:51.001915	\N	500390	t	\N	\N
418	500391@pt-sena.co.id	$2a$12$5rTlh/mAqbNatTqPgDjFHuxE4K79VVrFjdX0jRyUquzDePqVKjNlu	\N	\N	\N	2023-08-23 10:28:51.397615	2023-08-23 10:28:51.397615	\N	500391	t	\N	\N
419	500392@pt-sena.co.id	$2a$12$J58tcltjtIQvhV/YnGebQOyyXbyt8RB9o8PyrdyJ.ARpNX8sO7qdq	\N	\N	\N	2023-08-23 10:28:51.797654	2023-08-23 10:28:51.797654	\N	500392	t	\N	\N
420	ajiearibowo@gmail.com	$2a$12$spGbK5at7qhVZYWLJcokeew4HLHkBC4ufvM/DPer5iUjVmG5LfKkG	\N	\N	\N	2023-08-23 10:28:52.198256	2023-08-23 10:28:52.198256	\N	200393	t	\N	\N
421	firman.wahyudi@pt-sena.co.id	$2a$12$n8Uirf8ZBEyaSefJ5b0jtOeoff8U8nm02vi8tp29ZrW7Fv1coPh0.	\N	\N	\N	2023-08-23 10:28:52.602631	2023-08-23 10:28:52.602631	\N	300394	t	\N	\N
422	500395@pt-sena.co.id	$2a$12$3ti3F0BUuUYBWT.jl29LeOAYPkrvSfQOG1FqIcfhIkDCVNUXwCGyy	\N	\N	\N	2023-08-23 10:28:53.012142	2023-08-23 10:28:53.012142	\N	500395	t	\N	\N
423	firdaus20.mf@gmail.com	$2a$12$HXgkXpU8vZTTtkUlgynWZeYWjWBfvalyy6Suuj9ap0Klj7un2bdvS	\N	\N	\N	2023-08-23 10:28:53.427303	2023-08-23 10:28:53.427303	\N	300396	t	\N	\N
424	firdausamirullah01@gmail.com	$2a$12$anMPN4XpPf1tJ9Xwm1j5buNaaY6X25NpWahvbqUsGJV5S82inrHFK	\N	\N	\N	2023-08-23 10:28:53.830756	2023-08-23 10:28:53.830756	\N	500397	t	\N	\N
425	yabdraman@gmail.com	$2a$12$na22wpBn1U5ZDdmjBhRs1e9M3k.OtNDFci.YYnpyczi5FfbEfKx4a	\N	\N	\N	2023-08-23 10:28:54.243101	2023-08-23 10:28:54.243101	\N	300398	t	\N	\N
426	irwan.indrawijayapic@pt-sena.co.id	$2a$12$zwPvGPti.Jv//1cASOpjC.UstOwB/Z//lSMQ.Qyx9Byn5P5Ugahqq	\N	\N	\N	2023-08-23 10:28:54.644896	2023-08-23 10:28:54.644896	\N	500720	t	\N	\N
427	ikram.pic@pt-sena.co.id	$2a$12$XyycQpRMKWtwsYa9gN4cYeZf8F5..0ZQuHsv.tmQ/TJSByNevTjVW	\N	\N	\N	2023-08-23 10:28:55.063564	2023-08-23 10:28:55.063564	\N	500721	t	\N	\N
428	anne.thesya@pt-sena.co.id	$2a$12$mbQZnxnGuiaVccvX32Ji3ePBtVm/v/sb8yt0MWwlgB1H1ME/ytCVm	\N	\N	\N	2023-08-23 10:28:55.50965	2023-08-23 10:28:55.50965	\N	300399	t	\N	\N
429	500400@pt-sena.co.id	$2a$12$dSzqnOFwe74.Urfgo0hD2O6g1dLH.TzRDcE406achavwi9Ic2rcQS	\N	\N	\N	2023-08-23 10:28:55.906979	2023-08-23 10:28:55.906979	\N	500400	t	\N	\N
430	moedayat.pic@pt-sena.co.id	$2a$12$rOpLWWPyBInYzMkF1bsEP.f/dA.U9L9ZAPqB/3L5woifoNr7CIUY2	\N	\N	\N	2023-08-23 10:28:56.305288	2023-08-23 10:28:56.305288	\N	500722	t	\N	\N
431	apangpic@pt-sena.co.id	$2a$12$fnXwQwsuEUyj/CRLlp4fG./N.SrEduliAo0g68ToTr85vgvdJha2e	\N	\N	\N	2023-08-23 10:28:56.702683	2023-08-23 10:28:56.702683	\N	500723	t	\N	\N
432	wijcharles@gmail.com	$2a$12$MoHkvYlzNBaRS/M14WDhvuHO09gkwhqkdEIEJULREOZsM58GRVVG6	\N	\N	\N	2023-08-23 10:28:57.098582	2023-08-23 10:28:57.098582	\N	300401	t	\N	\N
433	500402@pt-sena.co.id	$2a$12$oQnNL4dKLISAdVq3qSIWROgQ60w7HNjWJJqgKtZdrWMO5u0PsCs76	\N	\N	\N	2023-08-23 10:28:57.490396	2023-08-23 10:28:57.490396	\N	500402	t	\N	\N
434	hendyeng@gmail.com	$2a$12$b65C8ERlT.GZz4Ny8eLuYOs944GwfNe0Bp26XwGRF0dYY2P2gswou	\N	\N	\N	2023-08-23 10:28:57.885665	2023-08-23 10:28:57.885665	\N	300403	t	\N	\N
435	jetty.ervianto@gmail.com	$2a$12$GibucP5PMnJ5I.mC1D/r/u6c3LT2I1RToEznNKdgjmo77kdm9BUou	\N	\N	\N	2023-08-23 10:28:58.282847	2023-08-23 10:28:58.282847	\N	300404	t	\N	\N
436	geovani.susanto@gmail.com	$2a$12$R83/ma8p/43S8XKGa3yk3eX49YWm.ic/1xANY4p04ECYdZjW5c9Sy	\N	\N	\N	2023-08-23 10:28:58.679747	2023-08-23 10:28:58.679747	\N	300405	t	\N	\N
437	ahmadfaizin2003@yahoo.com	$2a$12$lRO.nHJvs2790m2oMHrkGe8RDlpvRK9LFG0WISELCbQ2eaQYDTJZa	\N	\N	\N	2023-08-23 10:28:59.082715	2023-08-23 10:28:59.082715	\N	300406	t	\N	\N
438	500407@pt-sena.co.id	$2a$12$W9dqUTEwID.HWaCq2AONLOvHF/PbPBFaf63czOoEu3yX6Up358Q0O	\N	\N	\N	2023-08-23 10:28:59.481626	2023-08-23 10:28:59.481626	\N	500407	t	\N	\N
439	susanto.isus@gmail.com	$2a$12$jwMWZRK.FoR0sSR9kdESreXXYxViXdpFov9zvdpVG5r7nGCjnNY.u	\N	\N	\N	2023-08-23 10:28:59.878239	2023-08-23 10:28:59.878239	\N	300408	t	\N	\N
440	syafira@pt-sena.co.id	$2a$12$6CnXXwr2pGWJkxPMUdHsc.iplckBKJG4dQ6Y35nfNT34d1Znkd6NO	\N	\N	\N	2023-08-23 10:29:00.278845	2023-08-23 10:29:00.278845	\N	300409	t	\N	\N
441	doddy.rossi@pt-sena.co.id	$2a$12$4JnRRyb/THlnhFUft4Fv4OWYY1t.13EVsEKhSZUUe2McSf3s98oka	\N	\N	\N	2023-08-23 10:29:00.685906	2023-08-23 10:29:00.685906	\N	400410	t	\N	\N
442	angela.natasya@pt-sena.co.id	$2a$12$eaE96drwmGaUevN0KS/1oOrbLpVTqHjKvTm8hWZ3QiJKhTogIEtNG	\N	\N	\N	2023-08-23 10:29:01.083237	2023-08-23 10:29:01.083237	\N	200411	t	\N	\N
443	500412@pt-sena.co.id	$2a$12$L7DC5lvTitQdKs4oz3ovsudUYHD4X/JZSmlXA52uTqh3yX5yqI33O	\N	\N	\N	2023-08-23 10:29:01.484993	2023-08-23 10:29:01.484993	\N	500412	t	\N	\N
444	septianfirdaus229@gmail.com	$2a$12$SnL2B8/iPyB7fiTtWtjsIeibkxZaMPCBw3IvPjAyBiFdCgSCaP69m	\N	\N	\N	2023-08-23 10:29:01.893619	2023-08-23 10:29:01.893619	\N	200413	t	\N	\N
445	m.yusuf@pt-sena.co.id	$2a$12$nE/7KOnEHsMhvohDeb5xFeh5YZo48XhONE.myUhnSvIYJw.fiENG6	\N	\N	\N	2023-08-23 10:29:02.307541	2023-08-23 10:29:02.307541	\N	300414	t	\N	\N
446	rauf.pic@pt-sena.co.id	$2a$12$IOozQwuabNbj1lVLw8GmlOiF2NO4b0W1CVEaqayxzJjYx4tCHzReW	\N	\N	\N	2023-08-23 10:29:02.716442	2023-08-23 10:29:02.716442	\N	500724	t	\N	\N
447	rpribadis90@gmail.com	$2a$12$a591sQGBWwJsP1MCp8wvz.3pPBGJHvttTguXCUnTxAX6MQ7mQqUh.	\N	\N	\N	2023-08-23 10:29:03.124151	2023-08-23 10:29:03.124151	\N	300415	t	\N	\N
448	boedipranowo@gmail.com	$2a$12$3oP4tNwVIVfDLpBX8Y6Ca.ZXVBpHDkW9r5jw.C.ewerVHuDywhnIO	\N	\N	\N	2023-08-23 10:29:03.526538	2023-08-23 10:29:03.526538	\N	300416	t	\N	\N
449	ismailpiliang007@gmail.com	$2a$12$oeB5aPdtm53I0JNN7AMsEeVzYUjeW0s/DqoV1eh.6f1uvCdN.60T.	\N	\N	\N	2023-08-23 10:29:03.930322	2023-08-23 10:29:03.930322	\N	300417	t	\N	\N
450	de.electron@gmail.com	$2a$12$dPksAqxC6Wj/q2IRtbYPG.mZ91BV2fnZWhrKHuYnYuZBGp4EvtMsO	\N	\N	\N	2023-08-23 10:29:04.351221	2023-08-23 10:29:04.351221	\N	300418	t	\N	\N
451	300419@pt-sena.co.id	$2a$12$/pzSL7oNkNq2.J5lVLVQqOPO64nIEuMYwSHcc2FzD.7mWGFByF6DW	\N	\N	\N	2023-08-23 10:29:04.76957	2023-08-23 10:29:04.76957	\N	300419	t	\N	\N
452	abu.khanifah@pt-sena.co.id	$2a$12$5tkrUR.uVSf6v117ENSBHO0mmGjrPlEhpMdM9dfsUrB8hNe7XaWvW	\N	\N	\N	2023-08-23 10:29:05.194671	2023-08-23 10:29:05.194671	\N	300420	t	\N	\N
453	300421@pt-sena.co.id	$2a$12$oAZS8ADI9wUsfKQTtotpPuMH6H49pCs8V.qd5uY/os5PGKvGU2Xk.	\N	\N	\N	2023-08-23 10:29:05.661337	2023-08-23 10:29:05.661337	\N	300421	t	\N	\N
454	300422@pt-sena.co.id	$2a$12$eCU5YLcUsNKWmiV671.IVe./HutcsrbzT8oI9dQznDfMPgWpSv1jG	\N	\N	\N	2023-08-23 10:29:06.078206	2023-08-23 10:29:06.078206	\N	300422	t	\N	\N
455	300423@pt-sena.co.id	$2a$12$HY.oui99Klr/wvHbgMYpI.YziDrOVr94FFIPqOIssP3PXEITTMQMq	\N	\N	\N	2023-08-23 10:29:06.496046	2023-08-23 10:29:06.496046	\N	300423	t	\N	\N
456	300424@pt-sena.co.id	$2a$12$BfFSrg3WZJssFsaZXs0hHejlfJe47NAVCLgSgG.kNSxdVAJBhxchS	\N	\N	\N	2023-08-23 10:29:06.90416	2023-08-23 10:29:06.90416	\N	300424	t	\N	\N
457	300425@pt-sena.co.id	$2a$12$jhlYnFxl47fu6e4jR3EY9u69JGT7gXA2IVLgKUBlMc3H5O8rysOh2	\N	\N	\N	2023-08-23 10:29:07.327912	2023-08-23 10:29:07.327912	\N	300425	t	\N	\N
458	300426@pt-sena.co.id	$2a$12$yYuLKeLiIXC1RUw9LulD2uylwZ60fT5qS3MNlRaVLKUM9eO9YmjFe	\N	\N	\N	2023-08-23 10:29:07.742062	2023-08-23 10:29:07.742062	\N	300426	t	\N	\N
459	300427@pt-sena.co.id	$2a$12$QDo/dVqgkVYMqz.Lov8T8OLQVGVKFQasbA/63DkRO8pZ0Epq6HOWK	\N	\N	\N	2023-08-23 10:29:08.15002	2023-08-23 10:29:08.15002	\N	300427	t	\N	\N
460	300428@pt-sena.co.id	$2a$12$HVg.I6d7HUqtwc2fLe4.vu./Fhy7YuKCcCf52CvmzNDnC/PKhFj/G	\N	\N	\N	2023-08-23 10:29:08.560398	2023-08-23 10:29:08.560398	\N	300428	t	\N	\N
461	300429@pt-sena.co.id	$2a$12$IlYch.PAeq57BWIPD34aEOw7dP6tQHlrmZpA5AodB63LqqoSjB/Z2	\N	\N	\N	2023-08-23 10:29:08.967238	2023-08-23 10:29:08.967238	\N	300429	t	\N	\N
462	300430@pt-sena.co.id	$2a$12$LeaGobMk1tn2ncsT2tANXOtFOaTQDkr.apyIaW5TA9RV5n3mIG0V2	\N	\N	\N	2023-08-23 10:29:09.383756	2023-08-23 10:29:09.383756	\N	300430	t	\N	\N
463	indralawiharta@gmail.com	$2a$12$xakEYCaTcWXRf6kthU4t7OXkWH5GqF5qegB5hG5Vqd764snEXhHo.	\N	\N	\N	2023-08-23 10:29:09.824496	2023-08-23 10:29:09.824496	\N	300431	t	\N	\N
464	ady.nugroho@pt-sena.co.id	$2a$12$xowTDBknSfwsvDU71gzB1u0Nu4CcrBXx.WfoiLVGS08PanM3r4wjC	\N	\N	\N	2023-08-23 10:29:10.241116	2023-08-23 10:29:10.241116	\N	300432	t	\N	\N
465	rely.mulja@pt-sena.co.id	$2a$12$ikMdl47v9wK1c9IU5VtHO.21e70k...jTg6IqVeSKwf6j/FOxT3Ta	\N	\N	\N	2023-08-23 10:29:10.655065	2023-08-23 10:29:10.655065	\N	300433	t	\N	\N
466	aldemart.smuchtar@pt-sena.co.id	$2a$12$TgfaJV01Wsak3gddK6sOZeqmFs7xFG0WickEtv2gr25Esk00VKMK6	\N	\N	\N	2023-08-23 10:29:11.05995	2023-08-23 10:29:11.05995	\N	300434	t	\N	\N
467	syukur.alwan@pt-sena.co.id	$2a$12$S9sMh8hq1HdREscChmJzE.fMjvcQkQ47RglE6NspT2h6OFc1aKWBW	\N	\N	\N	2023-08-23 10:29:11.475	2023-08-23 10:29:11.475	\N	300435	t	\N	\N
468	sheila.noor@pt-sena.co.id	$2a$12$huhvPh3AhAeOKPYjKk8bpegTkpU76wBDu1qSiIvOu.zyulvoyL856	\N	\N	\N	2023-08-23 10:29:11.881648	2023-08-23 10:29:11.881648	\N	300436	t	\N	\N
469	balya.farras@pt-sena.co.id	$2a$12$1mDyK7rwBy0GEP.GIS/KyOKDOFgDr.xbIZTYOw4dkUror5wtjR9QO	\N	\N	\N	2023-08-23 10:29:12.313519	2023-08-23 10:29:12.313519	\N	300437	t	\N	\N
470	rasyad.azis@pt-sena.co.id	$2a$12$joBsA8iutJgGY29CtdImGeJSXRTuqZoGAZnT0h5w8E8SDFlFvUeBO	\N	\N	\N	2023-08-23 10:29:12.752044	2023-08-23 10:29:12.752044	\N	300438	t	\N	\N
471	tengku.fauzan.pic@pt-sena.co.id	$2a$12$FPL4MjBnCK55q0dRBH4nNeN6SzrkRL30izH60dq/29qw2NCxd6Ptu	\N	\N	\N	2023-08-23 10:29:13.151226	2023-08-23 10:29:13.151226	\N	500725	t	\N	\N
472	hidayat.pic@pt-sena.co.id	$2a$12$KjHSnl6237bE7jgnFus7uuVXqxv6JxxOUcuj.DXpJQlnevsegyZtm	\N	\N	\N	2023-08-23 10:29:13.556285	2023-08-23 10:29:13.556285	\N	500726	t	\N	\N
473	bayu.prasetyo@pt-sena.co.id	$2a$12$VNI4.Hwpu6B4ECXZxwi56Ow5dOjK4YhJ2R33JvjAp1AUVy/8xXi3y	\N	\N	\N	2023-08-23 10:29:13.954237	2023-08-23 10:29:13.954237	\N	300439	t	\N	\N
474	andri.tandjung@pt-sena.co.id	$2a$12$jOJVPW8v0eOqtNeDnjcer.piTN3ziCuRritdmTet5YM0/K7QlI8IO	\N	\N	\N	2023-08-23 10:29:14.359287	2023-08-23 10:29:14.359287	\N	300440	t	\N	\N
475	mahish3819@gmail.com	$2a$12$chD3UTZ3TV.ItBcNAAjaCu7vyz.uw0sPQezS77cvl8ps8egzVI8IS	\N	\N	\N	2023-08-23 10:29:14.768168	2023-08-23 10:29:14.768168	\N	300441	t	\N	\N
476	rizki.kurniawan@pt-sena.co.id	$2a$12$22ejuZc5B6VD4LmmGbex4.F1lNyShYDLCICMsMcPrBWhx7DDY.902	\N	\N	\N	2023-08-23 10:29:15.257035	2023-08-23 10:29:15.257035	\N	300442	t	\N	\N
477	muhamaddani891@yahoo.com	$2a$12$0RAG1bs0myXSquA7sDK05.HgUkn7LvBZfidKeTQjt5In4bty269L2	\N	\N	\N	2023-08-23 10:29:15.678362	2023-08-23 10:29:15.678362	\N	300443	t	\N	\N
478	surya.fajaruddin@pt-sena.co.id	$2a$12$iw2IBB45SdVdAvMcJzmr8eYJtp084dLlrkKFR59ncq71jNU58PcSm	\N	\N	\N	2023-08-23 10:29:16.085094	2023-08-23 10:29:16.085094	\N	300444	t	\N	\N
479	gorokhim@gmail.com	$2a$12$lvUFCBFByPxs5P2apHGm0eeoDE6m7HzvfGid3ktQ6TpjeMEWAf9Oe	\N	\N	\N	2023-08-23 10:29:16.517509	2023-08-23 10:29:16.517509	\N	300445	t	\N	\N
480	sri.yansen@pt-sena.co.id	$2a$12$O5ZAx4Gdvh3C0q6L3FPegu1br3/sGvGenssgumgz8eY5d5q9DOSt6	\N	\N	\N	2023-08-23 10:29:16.937409	2023-08-23 10:29:16.937409	\N	300446	t	\N	\N
481	syidik.wilesa@pt-sena.co.id	$2a$12$01.JYpEk7h7rTKb0bS04hek.i075/jKzoRBJFWBsftjxjIp0F9J/W	\N	\N	\N	2023-08-23 10:29:17.341572	2023-08-23 10:29:17.341572	\N	300447	t	\N	\N
482	irlianalunna@yahoo.com	$2a$12$tI7/3aBcbxk7Exbs4qdEwe7bjmdc8dfuHqUoqLZA.EkSGD1izt976	\N	\N	\N	2023-08-23 10:29:17.780422	2023-08-23 10:29:17.780422	\N	500448	t	\N	\N
483	dian.budi@pt-sena.co.id	$2a$12$i99as6qeIDetr3LPrhoOGuX1ouhL/c9q/5R7ZbhbG0UpGCA5Jp92e	\N	\N	\N	2023-08-23 10:29:18.191241	2023-08-23 10:29:18.191241	\N	500449	t	\N	\N
484	500450@pt-sena.co.id	$2a$12$DbUu.m0bPZsFgsZkyvojQO83Y1o95AsB22vsfTtsrYT928nHJTr8e	\N	\N	\N	2023-08-23 10:29:18.591468	2023-08-23 10:29:18.591468	\N	500450	t	\N	\N
485	adymainur@gmail.com	$2a$12$cLGUB7b.Gdfj24qDcQdak.GTxZh.iV84ub6V2bDUv3a6WXmX0AYfK	\N	\N	\N	2023-08-23 10:29:19.002534	2023-08-23 10:29:19.002534	\N	500451	t	\N	\N
486	m.oki.febiansyah@gmail.com	$2a$12$RzmyvhO4EDDbsNlDQ3F9x.Hbsofx721SnT6NBV4xbF5TXxjDbjMrC	\N	\N	\N	2023-08-23 10:29:19.40798	2023-08-23 10:29:19.40798	\N	500452	t	\N	\N
487	yogi.hindarmoko@gmail.com	$2a$12$g7mN10J7IfeNv0e/SqG7meByCJAHypjHh8LidasAzOd9P8qccFUfi	\N	\N	\N	2023-08-23 10:29:19.834913	2023-08-23 10:29:19.834913	\N	500453	t	\N	\N
488	abudiono65@gmail.com	$2a$12$mOD4VxquQUGjcukVpo5dref00KER5K7QazhvnEANjbG/h3DZPvqFy	\N	\N	\N	2023-08-23 10:29:20.253821	2023-08-23 10:29:20.253821	\N	300454	t	\N	\N
489	habiel.nazif@pt-sena.co.id	$2a$12$slipxxRPp7QYBZGesG5DmeTEHb3iG2ItO15IhdMOQ29LRtrPyZyIe	\N	\N	\N	2023-08-23 10:29:20.657038	2023-08-23 10:29:20.657038	\N	300455	t	\N	\N
490	yoga.hefrindo@pt-sena.co.id	$2a$12$/TEyVDJtOKjPXmATR8RH4e7bzIVQ8s5eNpdJJAnI5FEa.mzrmssN6	\N	\N	\N	2023-08-23 10:29:21.065838	2023-08-23 10:29:21.065838	\N	300456	t	\N	\N
491	ganiabdi80@gmail.com	$2a$12$T4/ulTBKkJlHAk5sbMddWOMgnlXWHilHXkRM8Gg2yyKymrUu8BFdK	\N	\N	\N	2023-08-23 10:29:21.469932	2023-08-23 10:29:21.469932	\N	300457	t	\N	\N
492	500458@pt-sena.co.id	$2a$12$3oWLH78ld6rr3DPEofGKAOhLP9dMb4AhNoXrW/4V7Obzz0Vn3EDhO	\N	\N	\N	2023-08-23 10:29:21.884079	2023-08-23 10:29:21.884079	\N	500458	t	\N	\N
493	nita.yuniati@pt-sena.co.id	$2a$12$QXr39B7f19HP97AjmKMB6utzidUTA5rY.zA4LYyuDMo0gNcgFVPT2	\N	\N	\N	2023-08-23 10:29:22.381139	2023-08-23 10:29:22.381139	\N	300459	t	\N	\N
494	ryantriananda@gmail.com	$2a$12$BYlxaQGr.24HmM7/axIxSOIHAky3loNdzj3FKbdhEjZggEMpT75RK	\N	\N	\N	2023-08-23 10:29:22.784103	2023-08-23 10:29:22.784103	\N	500460	t	\N	\N
495	fikri.achmad@pt-sena.co.id	$2a$12$2Y/d9SEeNfzB1syCjYzPB.iDyCr2RyXLYtMcCJG60tSg2ATvDNxrO	\N	\N	\N	2023-08-23 10:29:23.187503	2023-08-23 10:29:23.187503	\N	500461	t	\N	\N
496	mdotmukhlis@gmail.com	$2a$12$3VUYCWCKoCWrGTYUXs0FTuTMiGCoC4xVurNgVU7Ca2Tq36nlINNYq	\N	\N	\N	2023-08-23 10:29:23.585659	2023-08-23 10:29:23.585659	\N	500462	t	\N	\N
497	jessica.eda@pt-sena.co.id	$2a$12$njhPgTsW6gcbCrFr4wNgxOp7qbcvT2SsEH2oepwFEP9OSesGmnUnu	\N	\N	\N	2023-08-23 10:29:23.987166	2023-08-23 10:29:23.987166	\N	500463	t	\N	\N
498	asep.sumarna4384@gmail.com	$2a$12$D612bMtHtSC9C3.WvFW9cui5WTvNiVt76hpu6DP/1Llk1gvn.ikBa	\N	\N	\N	2023-08-23 10:29:24.395554	2023-08-23 10:29:24.395554	\N	300464	t	\N	\N
499	herup@me.com	$2a$12$o72HIPlSmL7bA7joz8m4ju0qSdYjlI5fWU/EkNCErCc..WkGYkH7m	\N	\N	\N	2023-08-23 10:29:24.815661	2023-08-23 10:29:24.815661	\N	500465	t	\N	\N
500	donimr12152@gmail.com	$2a$12$gnFV2y7jyWgnSIlJdOj/juvGbN5VsF9o4aQxa3YBBViCzyyqp4j5O	\N	\N	\N	2023-08-23 10:29:25.224665	2023-08-23 10:29:25.224665	\N	500466	t	\N	\N
501	agafir.pic@pt-sena.co.id	$2a$12$HYAGaJ2FFDcXJMzlNjApIO.JgL6l02YHD9bKTpcAPVhkPMekIBOoK	\N	\N	\N	2023-08-23 10:29:25.640341	2023-08-23 10:29:25.640341	\N	500727	t	\N	\N
502	mm.fachri@gmail.com	$2a$12$psqMNQZ4t1udiGzvrOoCreebc3NHdVKSUMrEhqnEy0fILyKwvwWX6	\N	\N	\N	2023-08-23 10:29:26.055278	2023-08-23 10:29:26.055278	\N	300467	t	\N	\N
503	arifansar@yahoo.co.id	$2a$12$QJSneM/JmPAg7xZiYlsrEetMSVXVJ46N.Rp3BhCs30qN.fij6kvki	\N	\N	\N	2023-08-23 10:29:26.472521	2023-08-23 10:29:26.472521	\N	300468	t	\N	\N
504	rizalriana.yuki@gmail.com	$2a$12$hwT4.oHFAnStQMYh5wylwOTJiQqFPuDKmOXsWiu2UbXDjdftzErly	\N	\N	\N	2023-08-23 10:29:26.907543	2023-08-23 10:29:26.907543	\N	300469	t	\N	\N
505	eddojusri@gmail.com	$2a$12$VozYLM1fwWHk/s89smoMNeN9IBJAkLZu91LCP2uLvBB88ivC7lkNq	\N	\N	\N	2023-08-23 10:29:27.360806	2023-08-23 10:29:27.360806	\N	300470	t	\N	\N
506	muis_86@yahoo.com	$2a$12$oBFSNdGhYPXuW1C2sD1kIeJ7VC3YgMxBbz.KmgsfKtnpkzU3pUgR.	\N	\N	\N	2023-08-23 10:29:27.767743	2023-08-23 10:29:27.767743	\N	500471	t	\N	\N
507	muharisuharja@gmail.com	$2a$12$U7hbOkwv0OZ1cso/4aHdqe8IcV01IBGs3GwWCIGT/k4wKH2xjm98O	\N	\N	\N	2023-08-23 10:29:28.17821	2023-08-23 10:29:28.17821	\N	200472	t	\N	\N
508	beny.ti97@gmail.com	$2a$12$up1kQT7xYAMNIP0GVGS.ue6VrbOt/UVlS.exZrA2kj0ybtcTgGGey	\N	\N	\N	2023-08-23 10:29:28.577733	2023-08-23 10:29:28.577733	\N	500473	t	\N	\N
509	harpatria@gmail.com	$2a$12$n96FGh5O3VZhLBHHJbBz9.pbmDn4ASBibqeR0ryJdo6kof9HhOUT.	\N	\N	\N	2023-08-23 10:29:28.98684	2023-08-23 10:29:28.98684	\N	500474	t	\N	\N
510	siti.muflikah@pt-sena.co.id	$2a$12$Fm5AEye2yuUBobGWn1RKge6jTdTU9QMQnTCb214GnOoT2METScqoG	\N	\N	\N	2023-08-23 10:29:29.387225	2023-08-23 10:29:29.387225	\N	300475	t	\N	\N
511	yosafat.eden@gmail.com	$2a$12$Lvh2oIx8ECzJZjJOX1vKluTOe1Yp5SE7y1ocJV2bVtG.Z8PcGgauO	\N	\N	\N	2023-08-23 10:29:29.80653	2023-08-23 10:29:29.80653	\N	500476	t	\N	\N
512	ekasudiyanto@gmail.com	$2a$12$oGJdePEou9J9g7nKQ8Dc0.d400Uae/x1hEaMKtOaz3DRyVLptsCqG	\N	\N	\N	2023-08-23 10:29:30.240146	2023-08-23 10:29:30.240146	\N	300477	t	\N	\N
513	ekopurwanto37457@gmail.com	$2a$12$PiLX6Jq4v.ryARwfRyrwJ.VhPJf2DuDuFvygZN1Fqk45JlaqHmZDu	\N	\N	\N	2023-08-23 10:29:30.664243	2023-08-23 10:29:30.664243	\N	300478	t	\N	\N
514	astra.multitek@gmail.com	$2a$12$fzJfx2QOrYEC1RzRGGM3Uuu1UQQFnSE82pYZsL0cAyIbvN2MxH0EK	\N	\N	\N	2023-08-23 10:29:31.14359	2023-08-23 10:29:31.14359	\N	500479	t	\N	\N
515	danieljuliolitamahuputty@gmail.com	$2a$12$uegTLR.DemFvw9XXxBzB.OHjIrY1AkRTrASEjdxQIuZqlVQ3sOp9m	\N	\N	\N	2023-08-23 10:29:31.579346	2023-08-23 10:29:31.579346	\N	300480	t	\N	\N
516	eko.edi92@gmail.com	$2a$12$Elmm1q.gWCvU.P5b73PceemDXpDFawMQSeTdEk34P2o2YUfcbskke	\N	\N	\N	2023-08-23 10:29:31.998089	2023-08-23 10:29:31.998089	\N	500481	t	\N	\N
517	s.emi23@yahoo.com	$2a$12$XG0SCR6Dn2KC8cgQxoZdf.f.ReUWGsWx9vgY.0a3ipe9yPI85xdtq	\N	\N	\N	2023-08-23 10:29:32.451395	2023-08-23 10:29:32.451395	\N	500482	t	\N	\N
518	panjiismisaputra@gmail.com	$2a$12$t4zIe9jkk3cYv71KXYD3YeGNjIbhqeon45xZ1y07kRfUjcWc0km2K	\N	\N	\N	2023-08-23 10:29:32.86754	2023-08-23 10:29:32.86754	\N	300483	t	\N	\N
519	yelfiana.linda@gmail.com	$2a$12$d.W.laqWZGAua.TRqHxkGuzf0ZlifDnb77Cc9tg/sZdKUa0TUt.NS	\N	\N	\N	2023-08-23 10:29:33.280226	2023-08-23 10:29:33.280226	\N	300484	t	\N	\N
520	septian.odi@pt-sena.co.id	$2a$12$w50Q3ccEu/LEk.3LMGZc9.qmo/gHRqK0JHjYWUvwADQWd6fly0N8S	\N	\N	\N	2023-08-23 10:29:33.692535	2023-08-23 10:29:33.692535	\N	300485	t	\N	\N
521	rechtdianwp@gmail.com	$2a$12$e245DJFboQnRDx/ytRY7iO4wMJ3qz7yxTnJl21hk41wSMXbjPBSAq	\N	\N	\N	2023-08-23 10:29:34.129285	2023-08-23 10:29:34.129285	\N	300486	t	\N	\N
522	mike_andaro@yahoo.com	$2a$12$6I/5JsetHI5I5NJvy2W83e2rgOAKcJVaczNAmNpNcire01yaJN20G	\N	\N	\N	2023-08-23 10:29:34.541552	2023-08-23 10:29:34.541552	\N	300487	t	\N	\N
523	meiril.basir@pt-sena.co.id	$2a$12$CUo2oslwT8hFk.2brs2SkupI9FB5CNzTOGkh96t9sWNDn3yVtqFYu	\N	\N	\N	2023-08-23 10:29:34.965767	2023-08-23 10:29:34.965767	\N	500730	t	\N	\N
525	info.it@pt-sena.co.id	$2a$12$T3xbknj5a9o2.s19rye0EelNc92HObpuahjDIxNNPB66G3KXeAmOq	\N	\N	\N	2023-08-23 10:29:35.380297	2023-08-23 10:29:35.380297	\N	500729	t	\N	\N
526	yuri.pangestu@pt-sena.co.id	$2a$12$frENuCytqjS7VxTOqlYDOultmNwyPb9hPhK7TcLr4HGg8nlKk/pf6	\N	\N	\N	2023-08-23 10:29:35.796043	2023-08-23 10:29:35.796043	\N	300488	t	\N	\N
527	sesep.sianturi@pt-sena.co.id	$2a$12$10e82AAIXy4FSv7LPHyDIOQ5tz0u8nXAZnLE6kFMIqyh2FWaFMaWm	\N	\N	\N	2023-08-23 10:29:36.202113	2023-08-23 10:29:36.202113	\N	300489	t	\N	\N
528	bungaran.surya@gmail.com	$2a$12$d5TaDanH6omvE.g.niqxyeTq36uGPftoQ5TZgLPmglvQ2XCI4XyeC	\N	\N	\N	2023-08-23 10:29:36.60264	2023-08-23 10:29:36.60264	\N	300490	t	\N	\N
529	ellangga17@gmail.com	$2a$12$j9p1M55bXGSjXgNM6l2/BOnttt4EMR//wAucDCGVQ1tlMLZna1CUq	\N	\N	\N	2023-08-23 10:29:36.997601	2023-08-23 10:29:36.997601	\N	300491	t	\N	\N
530	muh.hasim.asari@gmail.com	$2a$12$gfXQEb6cQ3jgPQ46Ib4FNeeZVUGZhF.kIBwW1OK0si/TGDHbUOLi2	\N	\N	\N	2023-08-23 10:29:37.391576	2023-08-23 10:29:37.391576	\N	300492	t	\N	\N
531	ainun.rahmania3@gmail.com	$2a$12$RO/egdkqxftIXjw66pIGb.abLBtdu1AFNeHK.q91vbaG1zdN0O6ni	\N	\N	\N	2023-08-23 10:29:37.797817	2023-08-23 10:29:37.797817	\N	300493	t	\N	\N
532	fanyutr@gmail.com	$2a$12$dT6LcdOaVvAPC/XD6RfBcuqVYc95UGuY.6E/A2qC3cS3LYSffXcWi	\N	\N	\N	2023-08-23 10:29:38.229353	2023-08-23 10:29:38.229353	\N	300494	t	\N	\N
533	500496@pt-sena.co.id	$2a$12$dFZhOHOZe5dKaWXAmTYT6.5Vfa8QbHMFaxnFpJEVA6oemScroCj1K	\N	\N	\N	2023-08-23 10:29:38.624535	2023-08-23 10:29:38.624535	\N	500496	t	\N	\N
534	roy.santos.ophir@gmail.com	$2a$12$9ZKYSmdGFDKFliNYjq/VY.Atxy1YmzSpr.4WEixqHvE4pY09tULMm	\N	\N	\N	2023-08-23 10:29:39.016935	2023-08-23 10:29:39.016935	\N	500497	t	\N	\N
535	ario.dwi@pt-sena.co.id	$2a$12$4TsF6S3VESg4I/qWT9v6yO8W8xU/Uls3.xVWaolDth7bqXfazaa8C	\N	\N	\N	2023-08-23 10:29:39.410896	2023-08-23 10:29:39.410896	\N	300498	t	\N	\N
536	ilham.anugrah@pt-sena.co.id	$2a$12$V4aJ1Sapg1CcPFUCF1/.GO8PByWPTRG0rApJDvsaQezZ64O7IX8R2	\N	\N	\N	2023-08-23 10:29:39.822313	2023-08-23 10:29:39.822313	\N	300499	t	\N	\N
537	silla.syafira@pt-sena.co.id	$2a$12$lW8eAgSvrJ84bbWF4tigWeJ7iXMJKMA/d3T6AK/DO3GzRAAGVB8mu	\N	\N	\N	2023-08-23 10:29:40.233311	2023-08-23 10:29:40.233311	\N	300500	t	\N	\N
538	bobby.fariansa@pt-sena.co.id	$2a$12$9/eE9W.84JYBkFg5LFlDn.C1aVeD5gbNvHDtUcuNOD951FIAKQbfa	\N	\N	\N	2023-08-23 10:29:40.647697	2023-08-23 10:29:40.647697	\N	300501	t	\N	\N
539	aqil.syahrial@pt-sena.co.id	$2a$12$F.qvoE3Th84yKBXDpMzgXOcxJ/wm43fqjBZ9g1BbAXt7tuvFJgIHy	\N	\N	\N	2023-08-23 10:29:41.077117	2023-08-23 10:29:41.077117	\N	300502	t	\N	\N
540	dzaki.fatchur@pt-sena.co.id	$2a$12$3scjB3HtcM04Xrp1wY4FP.uCwA1Yllv2k8et05MCF7goYi2GfAmXu	\N	\N	\N	2023-08-23 10:29:41.475108	2023-08-23 10:29:41.475108	\N	300503	t	\N	\N
541	putriya.wiena@gmail.com	$2a$12$oz2s3nq3zkmbN/Px9uc0XOZAU6rFE9c1YRkirJr737jXUIXRRv1ia	\N	\N	\N	2023-08-23 10:29:41.885506	2023-08-23 10:29:41.885506	\N	300504	t	\N	\N
542	lutfiana.damayanti@pt-sena.co.id	$2a$12$Xnr4pw9oz4PJ49sflEdR3.e0kjkXfaLDEUscJem/MNlbJ0eLjCTeq	\N	\N	\N	2023-08-23 10:29:42.337689	2023-08-23 10:29:42.337689	\N	300505	t	\N	\N
543	hanindito.hanindito@energibiz.com	$2a$12$iyQE4ncjYGPRIdlbxbO8yuI5.b9YUepn5Ix45tDRcTVC8FoJRuviS	\N	\N	\N	2023-08-23 10:29:42.757983	2023-08-23 10:29:42.757983	\N	500506	t	\N	\N
544	farekh.huzair@pt-sena.co.id	$2a$12$ydmFrpJMrpZNTJ/LwEiBTusNuO6CrFbQrakB5WWLO0ylk5fnjJ/fe	\N	\N	\N	2023-08-23 10:29:43.158413	2023-08-23 10:29:43.158413	\N	600507	t	\N	\N
545	ahmad.kafin@pt-sena.co.id	$2a$12$CKGztGTmfS9aRKKpQGdPvuKAiprmxWs7TF3YKGk2UZgIm1IuaWHZm	\N	\N	\N	2023-08-23 10:29:43.560708	2023-08-23 10:29:43.560708	\N	300508	t	\N	\N
546	ika.nurdianasari@pt-sena.co.id	$2a$12$.lD6tapkUX8OOu.QIbNmc.mCcN86C9ugBGk2xziLiWrFTuZGiNNmW	\N	\N	\N	2023-08-23 10:29:43.966707	2023-08-23 10:29:43.966707	\N	300509	t	\N	\N
547	hariseff@gmail.com	$2a$12$MGNDrKNT3yosFvVqVOIsk.IZQeG8WEEOhOEiJoOApKtcbmSOeoqcS	\N	\N	\N	2023-08-23 10:29:44.365256	2023-08-23 10:29:44.365256	\N	300510	t	\N	\N
548	adeyohanda@gmail.com	$2a$12$W.U4ohoyn5lcZfmsxEmkUuRZfM7HbaTxJ.YXm9a5F.Vb0zdrOg8eW	\N	\N	\N	2023-08-23 10:29:44.760526	2023-08-23 10:29:44.760526	\N	500511	t	\N	\N
549	500512@pt-sena.co.id	$2a$12$BgKEOBgTWOEL0yXSpDG39.12tEHfrckGMkLpFBK726yABwors3ZAS	\N	\N	\N	2023-08-23 10:29:45.157971	2023-08-23 10:29:45.157971	\N	500512	t	\N	\N
550	alvin.habara@pt-sena.co.id	$2a$12$wCI3Putj1FCOGVl3ilCUMuOMJvooy0HhtO.QbQIMHYcXQPgLTeJ2.	\N	\N	\N	2023-08-23 10:29:45.550187	2023-08-23 10:29:45.550187	\N	300513	t	\N	\N
551	ganesh.wicaksono@pt-sena.co.id	$2a$12$cXrjn/sAxCBIC.SWPHNcB.tYX4S3iLckD6ZpY7Wyg9jeeXJdpukX6	\N	\N	\N	2023-08-23 10:29:45.944667	2023-08-23 10:29:45.944667	\N	300514	t	\N	\N
552	viandimaz@yahoo.com	$2a$12$qSGLksuduh/f4uGnQTT6v.YdRMCR.YhUitrybE.e42nMPTCjHwGPO	\N	\N	\N	2023-08-23 10:29:46.338517	2023-08-23 10:29:46.338517	\N	300515	t	\N	\N
553	freddy.chandraa@gmail.com	$2a$12$TTFYnzyoWmyC3rEoi0p3HOwfB7Rt2koSeXUWFxnHbgmunqJV1gdVC	\N	\N	\N	2023-08-23 10:29:46.74261	2023-08-23 10:29:46.74261	\N	300516	t	\N	\N
554	agus.pratama@pt-sena.co.id	$2a$12$zma4nS4A2glMCVsclZR4eu0cBClIZ0zowuDbzY1Dhb7YCfZn22yxy	\N	\N	\N	2023-08-23 10:29:47.138274	2023-08-23 10:29:47.138274	\N	300517	t	\N	\N
555	ali.nurdin@pt-sena.co.id	$2a$12$qgRev5gmuPFHEao8u/NpweVnHAMqo73ty5ALowbj/aDvTkVpYeWuW	\N	\N	\N	2023-08-23 10:29:47.540248	2023-08-23 10:29:47.540248	\N	300518	t	\N	\N
556	ahmad.syukri@pt-sena.co.id	$2a$12$TtW9rjPVRaOU4inRTBmI2uQXH/v9l6GVx.JKyT96JcynwaS.AB8mK	\N	\N	\N	2023-08-23 10:29:47.939691	2023-08-23 10:29:47.939691	\N	300519	t	\N	\N
557	agung.kurniawan@pt-sena.co.id	$2a$12$oSidWZkK.ua77Lwv0eC/yORrfkebCoIvfSo3BafSoDQNeRVa4GYFS	\N	\N	\N	2023-08-23 10:29:48.333611	2023-08-23 10:29:48.333611	\N	300520	t	\N	\N
558	karyanto@pt-sena.co.id	$2a$12$IJ7JvjcZBjO5fK89LB3hBOHSN3t9Olykhxj/Ch3rkRfW66bQ3/Sj2	\N	\N	\N	2023-08-23 10:29:48.74719	2023-08-23 10:29:48.74719	\N	300521	t	\N	\N
559	achmadirfannss@hotmail.com	$2a$12$vyfvQuHQ3gYAMrDYBsoOu.oz0Qq9uTxXTSINq3j0zwfnVlBAM/BNS	\N	\N	\N	2023-08-23 10:29:49.153568	2023-08-23 10:29:49.153568	\N	300522	t	\N	\N
560	ridho.anggoro@pt-sena.co.id	$2a$12$VKu/6TlzrqMZacZZj5zF3u5Kxqn19VgH.ZSRWqpgoJO.Ne8h1RImq	\N	\N	\N	2023-08-23 10:29:49.547777	2023-08-23 10:29:49.547777	\N	300523	t	\N	\N
561	m.syihabuddin@pt-sena.co.id	$2a$12$OOUjo.dGqqqdO6VJRIKZj.VYDN1.0olACf333tN1fsECbyec4KjgS	\N	\N	\N	2023-08-23 10:29:49.978204	2023-08-23 10:29:49.978204	\N	700524	t	\N	\N
562	arepinlyuswa@gmail.com	$2a$12$qYUKEJ5w2vGHEqpaKiF7Lesk94yrKQi5F6YrNXuS9AA4uAByiFa4a	\N	\N	\N	2023-08-23 10:29:50.38806	2023-08-23 10:29:50.38806	\N	300525	t	\N	\N
563	wakhidrufi02@gmail.com	$2a$12$3qW2lT7LUegg6yEpoMHFcOmKSH6L07ICtwGlbiwiqfH/SBd5dGVwG	\N	\N	\N	2023-08-23 10:29:50.795212	2023-08-23 10:29:50.795212	\N	300526	t	\N	\N
564	muhammad.saepudin@pt-sena.co.id	$2a$12$HKgAWK9V0TzKGTmlP30osO5Fy3PNTIiuvCcF5uQahH5z5gTQLL57W	\N	\N	\N	2023-08-23 10:29:51.196051	2023-08-23 10:29:51.196051	\N	300527	t	\N	\N
565	yudhistirobagus0@gmail.com	$2a$12$qaPNbJBTTt7YSImBaCgfUOAsUj2wg/PThtDci9.ihoXJ78wZKUcA.	\N	\N	\N	2023-08-23 10:29:51.59346	2023-08-23 10:29:51.59346	\N	300528	t	\N	\N
566	topanahmadj@gmail.com	$2a$12$rWXnjetUJFK3tD16BME4Iu0nxt0JwexRtONw4zM19jh5tUWYUppkW	\N	\N	\N	2023-08-23 10:29:52.005341	2023-08-23 10:29:52.005341	\N	300529	t	\N	\N
567	ifirmansyh@gmail.com	$2a$12$fdCe5M/c30cOwPIodMQgGOyYTD9.EYEGZKRhq2WoW7Pi0I5UMdItO	\N	\N	\N	2023-08-23 10:29:52.410633	2023-08-23 10:29:52.410633	\N	300530	t	\N	\N
568	ludiushuludin15@gmail.com	$2a$12$uAZw2BPlEmmYt.hPFqsIbuBFB3x5SBoxwrsIksaFEbTFy2e5q1RSy	\N	\N	\N	2023-08-23 10:29:52.806368	2023-08-23 10:29:52.806368	\N	300531	t	\N	\N
569	iren22anggrian@gmail.com	$2a$12$Pwmino3DPo6X.qu.HbKJdukt8xjJwvsVHInLqGX.YVdC8UDLPTCym	\N	\N	\N	2023-08-23 10:29:53.204829	2023-08-23 10:29:53.204829	\N	300532	t	\N	\N
570	aslanest15@gmail.com	$2a$12$eilZqkBrO4TAtmkPnDGyKOmUn3kjHDpg1CP48IcYffY2r1QFjt8mm	\N	\N	\N	2023-08-23 10:29:53.598995	2023-08-23 10:29:53.598995	\N	300533	t	\N	\N
571	syubannulmajdub98@upi.edu	$2a$12$hzBhq1yX3QIy7TO1FauV2evJissTPlgTmbBcjDStQLFscnb.wooQC	\N	\N	\N	2023-08-23 10:29:53.998367	2023-08-23 10:29:53.998367	\N	300534	t	\N	\N
572	mochammad.hadi@pt-sena.co.id	$2a$12$ZL5F3V5NwPqE.E7EnjJNdePHXaln/y/.RIUbKcheoZC5ikq8ZcjdC	\N	\N	\N	2023-08-23 10:29:54.394754	2023-08-23 10:29:54.394754	\N	300535	t	\N	\N
573	aligazali@yahoo.com	$2a$12$6M5Ep0gelhzah/GH6qoBl.zCr/77hV9ljzH9b/OcHp8XjfcbjS3q6	\N	\N	\N	2023-08-23 10:29:54.801776	2023-08-23 10:29:54.801776	\N	300536	t	\N	\N
574	dea.noer@pt-sena.co.id	$2a$12$snk7XHU/ZRk0HTC8wuV2UOs7nihmnXEevKO4DP0EkpgVfHJ6rJAem	\N	\N	\N	2023-08-23 10:29:55.211405	2023-08-23 10:29:55.211405	\N	300537	t	\N	\N
575	rakshi.lestaluhu@gmail.com	$2a$12$1ogai//KKOj2AdWNVVZR6u72sHp98CoNDQJMdshznEXUHBMQjA1ne	\N	\N	\N	2023-08-23 10:29:55.622511	2023-08-23 10:29:55.622511	\N	300538	t	\N	\N
576	heru.ppce@gmail.com	$2a$12$FoLFpOzPuMpDwWw6jMlNrOmQnlbL6EVph25Mn/EDEB1HxGSCAuhoG	\N	\N	\N	2023-08-23 10:29:56.018856	2023-08-23 10:29:56.018856	\N	500539	t	\N	\N
577	novaaryani.st@gmail.com	$2a$12$ts0IRKt9VjzqPDqUhXfka.xxMahSuyUBExHs9dxAydTQT/zS3./Nu	\N	\N	\N	2023-08-23 10:29:56.414296	2023-08-23 10:29:56.414296	\N	300540	t	\N	\N
578	vellandya@pt-sena.co.id	$2a$12$xdlPI0FekHyFrWvCTlvgMuJgwP7Eu.ppmiyCNCk915U2leM6IA6eG	\N	\N	\N	2023-08-23 10:29:56.812037	2023-08-23 10:29:56.812037	\N	300541	t	\N	\N
579	fuad.hasyim@pt-sena.co.id	$2a$12$QYcvss.W2Knhx0CH6ZS8meGyemwXYSDp3pP3pJuNvVz8TGcWweX1K	\N	\N	\N	2023-08-23 10:29:57.207904	2023-08-23 10:29:57.207904	\N	600542	t	\N	\N
580	suhartawan.bambang@pt-sena.co.id	$2a$12$L31Q4lIlI8jwQv91jfJ1M.e2Tv0J/XFFgJUpTRGxxHVlBJvKdhEeC	\N	\N	\N	2023-08-23 10:29:57.60703	2023-08-23 10:29:57.60703	\N	600543	t	\N	\N
581	edi.purnomo@pt-sena.co.id	$2a$12$hRwQPyDj/03fQWSltvrR8.WrhYYbQCabfafSERtnKjy3mb2qW9rye	\N	\N	\N	2023-08-23 10:29:58.006189	2023-08-23 10:29:58.006189	\N	300544	t	\N	\N
582	sudjono.suhardjo@pt-sena.co.id	$2a$12$ukaxPa1QgeR1X.Z6Z00WIuskGY7PpLzM9/JRUiAfxOT.N24arYJZC	\N	\N	\N	2023-08-23 10:29:58.402732	2023-08-23 10:29:58.402732	\N	700545	t	\N	\N
583	muhammad.arief@pt-sena.co.id	$2a$12$.DizfVuwhsm4H3FVkDxcW.tNHk/mL4rLWSqDKgsWkYKxKERz6fHZK	\N	\N	\N	2023-08-23 10:29:58.83745	2023-08-23 10:29:58.83745	\N	300546	t	\N	\N
584	bungaveriena13@gmail.com	$2a$12$wEai1TxBXp11Ms6kaEIxu.Ud80gS4k8ozihggMKf0BD6sF.tsmzlS	\N	\N	\N	2023-08-23 10:29:59.230706	2023-08-23 10:29:59.230706	\N	500547	t	\N	\N
585	sheillarizky020@gmail.com	$2a$12$Nl.blZuLXV23/NQNJtMg7eAz2Wqne76o2fi5ostTFChR4cA86JrJe	\N	\N	\N	2023-08-23 10:29:59.625517	2023-08-23 10:29:59.625517	\N	500548	t	\N	\N
586	asmi.wahyuni@pt-sena.co.id	$2a$12$RAHH/vizk4rHTwND7bpvXuE4SBmSQNp32tRutxxW77O6FrQZK3rfe	\N	\N	\N	2023-08-23 10:30:00.028249	2023-08-23 10:30:00.028249	\N	300549	t	\N	\N
587	rianabdul73@gmail.com	$2a$12$zuFjMfcNn05/Y8oV3FxKQ.JyezDblOO2GKW.tKdDoki8KCsuVRUrS	\N	\N	\N	2023-08-23 10:30:00.428423	2023-08-23 10:30:00.428423	\N	300550	t	\N	\N
588	prayetno@pt-sena.co.id	$2a$12$Ax62F/dLKW0x0lM.Mqv9NufyfGelzVMbofiBNSCYk5e2M6jZiq.kq	\N	\N	\N	2023-08-23 10:30:00.822116	2023-08-23 10:30:00.822116	\N	300551	t	\N	\N
589	rahmanfatah88@gmail.com	$2a$12$nGM8Vouy9Y/b4zXs1.mbUu975MFpLl0ShNb3FxZzo7GV0O3hlmnQ2	\N	\N	\N	2023-08-23 10:30:01.218476	2023-08-23 10:30:01.218476	\N	300552	t	\N	\N
590	robbi_sukardi@rajarafasamudra.com	$2a$12$zoIV.xFCSjL7eDGsnEryjuXhe6QL5zBH5zsZ17jSHdLBsBsErX8jq	\N	\N	\N	2023-08-23 10:30:01.626644	2023-08-23 10:30:01.626644	\N	500553	t	\N	\N
591	aprilly.ranthy@rajarafasamudra.com	$2a$12$/mwbPYga6snFpDaI76vjkuC6E95ON4IOJgQkb7IyM0p4gLwYqkHb6	\N	\N	\N	2023-08-23 10:30:02.036108	2023-08-23 10:30:02.036108	\N	500554	t	\N	\N
592	ari.priatama@rajarafasamudra.com	$2a$12$fMY/EhDmlCi7rwd7XDPi1.bwt5wReoJ1249s/8gMjfEXw//F8Yyqq	\N	\N	\N	2023-08-23 10:30:02.448093	2023-08-23 10:30:02.448093	\N	500555	t	\N	\N
593	melianawd6@gmail.com	$2a$12$y/HBWYsPQ2aRLPjBOl3cx.z4K49cDGIhbVjJnjRy5eZUGgnK6naDK	\N	\N	\N	2023-08-23 10:30:02.849056	2023-08-23 10:30:02.849056	\N	300556	t	\N	\N
594	siraitnaek@gmail.com	$2a$12$b39eVakSItp21SXfBGKG3eI.xPCxSzKmDlVVxYV4UDcY4u2.35U9a	\N	\N	\N	2023-08-23 10:30:03.248139	2023-08-23 10:30:03.248139	\N	500557	t	\N	\N
595	melaniaferawati@gmail.com	$2a$12$mup17EKe9ceCsyZ/Le5wzO4o6x43EU1dgP9er9JRBflf5ylJC0kuS	\N	\N	\N	2023-08-23 10:30:03.654761	2023-08-23 10:30:03.654761	\N	500558	t	\N	\N
596	muqtasidhashri@gmail.com	$2a$12$PCCeFr5FpKn1ACBLicV4D.1MBqs6LiJ1TyTNhdObcysvWmesTzDRq	\N	\N	\N	2023-08-23 10:30:04.072089	2023-08-23 10:30:04.072089	\N	300559	t	\N	\N
597	yusufram1404@gmail.com	$2a$12$Qqhk20SSSMK8rjEob70WKOiJa50Solz999A7YGXmQinvlbcJs3oG2	\N	\N	\N	2023-08-23 10:30:04.490422	2023-08-23 10:30:04.490422	\N	300560	t	\N	\N
598	windi.anis@pt-sena.co.id	$2a$12$5UOw/a7A1NZ6AS4YnlEVo.pI5kQ56rgXDYPpgi941obOnJnAxscI2	\N	\N	\N	2023-08-23 10:30:04.89846	2023-08-23 10:30:04.89846	\N	300561	t	\N	\N
599	faldy.alfian@pt-sena.co.id	$2a$12$mFECODFRDd7OW3X6S4xK8.fC/5DLYNB.tm6QMs592vf4.aoKX/UNC	\N	\N	\N	2023-08-23 10:30:05.324619	2023-08-23 10:30:05.324619	\N	300562	t	\N	\N
600	dela.amelia@pt-sena.co.id	$2a$12$mT9sMvM6jMb1e9UBJ6Czr.TyGcPR9DGQtUZLoGY2e0al0RfskCZQ6	\N	\N	\N	2023-08-23 10:30:05.755566	2023-08-23 10:30:05.755566	\N	300563	t	\N	\N
601	putrisandi.project@gmail.com	$2a$12$plHBXD.KoyQ2uGa/n8baEu9WIV6KnQKgQ5kB4FUjiPLMuRpeFM0ZK	\N	\N	\N	2023-08-23 10:30:06.320266	2023-08-23 10:30:06.320266	\N	300564	t	\N	\N
602	muhamad.agus@pt-sena.co.id	$2a$12$DfPOpl7iadtwS6Ti4C0NdebFRg6b3mEnWPRe/Mf8xbuK23JDXBv8y	\N	\N	\N	2023-08-23 10:30:06.789845	2023-08-23 10:30:06.789845	\N	300565	t	\N	\N
603	emil.fadilah@pt-sena.co.id	$2a$12$4GCtvT3PS6jPmWCd1nBcVuhmuUPTIsfVnq5xvS/hhoskSh79BvFK.	\N	\N	\N	2023-08-23 10:30:07.224551	2023-08-23 10:30:07.224551	\N	300566	t	\N	\N
604	herumujiono91@gmail.com	$2a$12$Lo3Mlx6Jkl7KfKg6Q4GoNOLWt6szqfDJ/l06vn3G1rwteh/vR31Ie	\N	\N	\N	2023-08-23 10:30:07.647876	2023-08-23 10:30:07.647876	\N	300567	t	\N	\N
605	arisdwi23@gmail.com	$2a$12$F/OKeDoXxySWvshcVYIAauMwawlZ4uGpDHaGp8Lfdlsl/w8YvkHUy	\N	\N	\N	2023-08-23 10:30:08.06856	2023-08-23 10:30:08.06856	\N	300568	t	\N	\N
606	bahryfadielansory@gmail.com	$2a$12$azIS9J5w/ypnqIyTkMZLauJFCmatNjx8df.UR7wGzsW1e4s.KPDwK	\N	\N	\N	2023-08-23 10:30:08.487291	2023-08-23 10:30:08.487291	\N	300569	t	\N	\N
607	chairunnisa@gmail.com	$2a$12$XkLrsmG5fhNC5j7qPN3h/uJwUdN9Kn2wR8d3IkrKPJiR9VB.lwh4u	\N	\N	\N	2023-08-23 10:30:08.903511	2023-08-23 10:30:08.903511	\N	300570	t	\N	\N
608	berryfitriandi@gmail.com	$2a$12$V4uvjWuzlaNnIhyD3XoM4uayB6WBG4DNOql3R8jc7NvzZD1nHsQ.O	\N	\N	\N	2023-08-23 10:30:09.371396	2023-08-23 10:30:09.371396	\N	300571	t	\N	\N
609	bobby.pramayudha@pt-sena.co.id	$2a$12$2cozme00cZWP4RNq.CujFOUy6zhjfGqOdHngC.K4306Dc2ZeMsOr2	\N	\N	\N	2023-08-23 10:30:09.79372	2023-08-23 10:30:09.79372	\N	300572	t	\N	\N
610	kardiman@pt-sena.co.id	$2a$12$Cpqtxrte/WD4y80mWWJZFeyDEnatXa2IgP4Nfu1nOr6Kh6UXmephm	\N	\N	\N	2023-08-23 10:30:10.197487	2023-08-23 10:30:10.197487	\N	300573	t	\N	\N
611	achmad.ilyasa@pt-sena.co.id	$2a$12$De0LFVK4vcaV.yfqrcuuFOh2LZcumUOs19MPGYc99a/gcCUIzns/q	\N	\N	\N	2023-08-23 10:30:10.617795	2023-08-23 10:30:10.617795	\N	300574	t	\N	\N
612	sugiri_sugiri@yahoo.com	$2a$12$dfwLL8e3k.jJ9VgQS58j.eiAfoYKrH2ixy2m/BvEi8NfLVudm3rIG	\N	\N	\N	2023-08-23 10:30:11.031697	2023-08-23 10:30:11.031697	\N	300575	t	\N	\N
613	anang.priambodo@pt-sena.co.id	$2a$12$V/vTAyxW1kO5D5sBcw25n.C9k8GMRsIMqYSOI/qhp/6b8NiNTjP1u	\N	\N	\N	2023-08-23 10:30:11.454413	2023-08-23 10:30:11.454413	\N	300576	t	\N	\N
614	khairul.khitam@pt-sena.co.id	$2a$12$MPXa5x.66vgLNTOjO2g1DuhO27w4snsAx5aLFmvD5OyFZPoNwW3zi	\N	\N	\N	2023-08-23 10:30:11.86232	2023-08-23 10:30:11.86232	\N	400577	t	\N	\N
615	gina.purwaningtias@pt-sena.co.id	$2a$12$056LzcqiuYNXZDbJg/kWsOqhdu88baw.BXTkyKJP8zQQlzW5qUoTi	\N	\N	\N	2023-08-23 10:30:12.30191	2023-08-23 10:30:12.30191	\N	300578	t	\N	\N
616	m.fauzi0909@gmail.com	$2a$12$6KzA4kHWI2r2XlPFJrSHZuYEG1LrGfj6nOPm06g7s1g9l2R6NdYhG	\N	\N	\N	2023-08-23 10:30:12.715378	2023-08-23 10:30:12.715378	\N	300579	t	\N	\N
617	aqilibnu96@gmail.com	$2a$12$uTy8gTaFsi4fP1x3wTyB1uCpsDd5sldimsGSwfUloKyn4zb6T9Te6	\N	\N	\N	2023-08-23 10:30:13.120875	2023-08-23 10:30:13.120875	\N	300580	t	\N	\N
618	farhanshidayat@gmail.com	$2a$12$y8Es6G2yf/wzb0Qbzbo1H.5retqjZ7d7RolhbST9GLKt1uyC8jidm	\N	\N	\N	2023-08-23 10:30:13.51988	2023-08-23 10:30:13.51988	\N	300581	t	\N	\N
619	achmadsholikhan21@gmail.com	$2a$12$okoxpGBuGewfQY97jPKYM.Tp7u2KqZpBaBguW3zmf5wNfQt.JFhJa	\N	\N	\N	2023-08-23 10:30:13.920062	2023-08-23 10:30:13.920062	\N	300582	t	\N	\N
620	silajasilatulh@gmail.com	$2a$12$jSz6XsxdEeXJileD1I4TQeYD2GnlapYcxshOKYvGewyTEkK/bKjQq	\N	\N	\N	2023-08-23 10:30:14.325383	2023-08-23 10:30:14.325383	\N	300583	t	\N	\N
621	indahhanggraini97@gmail.com	$2a$12$D6fHjKvBxnsy9ocgkQyXFe4uFWCkWwkEmVQtWNyRv8DyPezpGWz/.	\N	\N	\N	2023-08-23 10:30:14.724622	2023-08-23 10:30:14.724622	\N	300584	t	\N	\N
622	mulyana.mukti@gmail.com	$2a$12$3ay5ttbfCpAUanZVOR84J.ZMCe7199l.QE46RFCxq5V2N1vcoHx7i	\N	\N	\N	2023-08-23 10:30:15.129023	2023-08-23 10:30:15.129023	\N	300585	t	\N	\N
623	my_arizal@yahoo.com	$2a$12$oGReoLAfqEpJAuO5AUP0XuvsCNm8VqkpspdxkGn5rFFVVfe/GpyL2	\N	\N	\N	2023-08-23 10:30:15.534623	2023-08-23 10:30:15.534623	\N	300586	t	\N	\N
624	mohammad.darwis@pt-sena.co.id	$2a$12$o2gd1ZG2.KTcEIEDySwEC.kikoBSq6xOhcwddsu8.KU8D366c13lO	\N	\N	\N	2023-08-23 10:30:15.938733	2023-08-23 10:30:15.938733	\N	300587	t	\N	\N
625	r.setyo.utomo@gmail.com	$2a$12$z4qm6.00jk0Xcgj9vvZssuP/oRrTM3tPskfIbNbaW1F56/yeCNrcO	\N	\N	\N	2023-08-23 10:30:16.352872	2023-08-23 10:30:16.352872	\N	500588	t	\N	\N
626	noerpurwa99@gmail.com	$2a$12$nVyply06e/5TErCq9bMV7uUd4G2qjlZy.rJi4RpJKovk7bOioEu..	\N	\N	\N	2023-08-23 10:30:16.765277	2023-08-23 10:30:16.765277	\N	300589	t	\N	\N
627	sufrandarian@gmail.com	$2a$12$6bM35B9R4SOo.hZtSbUVIuHvvWIsi7coLjYFiFrPCz37nFULUiyAS	\N	\N	\N	2023-08-23 10:30:17.174546	2023-08-23 10:30:17.174546	\N	300590	t	\N	\N
628	ruthwardani@gmail.com	$2a$12$y0fDLn2JStWRcfUAUESgkeoT3UgNge5eGa4Tlg9g6zTtcnEj4eAzu	\N	\N	\N	2023-08-23 10:30:17.581216	2023-08-23 10:30:17.581216	\N	300591	t	\N	\N
629	deadasdevn@gmail.com	$2a$12$WyaUFoP9mPb8.cyMoMnq7OBr.wqzGj5BQxQfe1WQEPU7IjWP0B/6W	\N	\N	\N	2023-08-23 10:30:17.989663	2023-08-23 10:30:17.989663	\N	500592	t	\N	\N
630	veemaw@gmail.com	$2a$12$WMF/UvcyQVuDiuk200LymOjHn9SXmaG0taf0uexozXymTNX/3P47u	\N	\N	\N	2023-08-23 10:30:18.393852	2023-08-23 10:30:18.393852	\N	300593	t	\N	\N
631	aris.irajudin@pt-sena.co.id	$2a$12$E.NGPY1lXLkSK/NtI4piNutQNKWbw75XlgdPI4abrjBbDxaJF6KVq	\N	\N	\N	2023-08-23 10:30:18.794298	2023-08-23 10:30:18.794298	\N	300594	t	\N	\N
632	nofrizon@pt-sena.co.id	$2a$12$kgiSviX/yqOUxgPi3WPllu0wIEaraaMh5sG6fRshogJsLiWqw7UQK	\N	\N	\N	2023-08-23 10:30:19.20045	2023-08-23 10:30:19.20045	\N	300595	t	\N	\N
633	choerul.crohman@pt-sena.co.id	$2a$12$QkHWu.h8ow5huiPbeVU47Ocgx3oZQFjPIur0kXVacKgvt6j/kokLm	\N	\N	\N	2023-08-23 10:30:19.620717	2023-08-23 10:30:19.620717	\N	300596	t	\N	\N
634	poppy.meris@pt-sena.co.id	$2a$12$cNmNiHgGXI84AhNW4rKx1OjjHKbHMiIcm1cBvk6qmUm1S6pzUe0yu	\N	\N	\N	2023-08-23 10:30:20.04828	2023-08-23 10:30:20.04828	\N	300597	t	\N	\N
635	fauziakmal063@gmail.com	$2a$12$odkPc5RwZvz7NrcJxLVwT.wdCyzhhwd.JzFafT182pvqjnuR8OlWy	\N	\N	\N	2023-08-23 10:30:20.453592	2023-08-23 10:30:20.453592	\N	300598	t	\N	\N
636	fuadyumar16@gmail.com	$2a$12$ayLOavfPQ2xN0P6g/WN/hOHmzQ6L5MJq.fBUUzgpRi7Jjltv66aGW	\N	\N	\N	2023-08-23 10:30:20.862244	2023-08-23 10:30:20.862244	\N	300599	t	\N	\N
637	alfindra@pt-sena.co.id	$2a$12$o3Dg/fVTa/lD/mKeiDrrdeW7Y8PMkP18h9H7L75aRR9FQyN8xEVfm	\N	\N	\N	2023-08-23 10:30:21.265277	2023-08-23 10:30:21.265277	\N	700600	t	\N	\N
638	irvandwicahyanto@gmail.com	$2a$12$0iXgleAmvGK.EFbcPXj7LuwJqzdNOUDFsTWfkt/xyEMXItdxFccA2	\N	\N	\N	2023-08-23 10:30:21.667651	2023-08-23 10:30:21.667651	\N	300601	t	\N	\N
639	nadhimtaufiqarrahman@gmail.com	$2a$12$nDGO.mbHFF9/Ym1qiWLTPuZCe.8A./MkoCKqiKgoE0aFYhXCvtwrC	\N	\N	\N	2023-08-23 10:30:22.074127	2023-08-23 10:30:22.074127	\N	300602	t	\N	\N
640	nuridinrg6@gmail.com	$2a$12$WPCq3Z9dtHiM.xRQ6JBLAO1WKatxf7xsjFDQFYpwh5H8hSRjmw2A.	\N	\N	\N	2023-08-23 10:30:22.479717	2023-08-23 10:30:22.479717	\N	300603	t	\N	\N
641	fadilmuhammad1933@gmail.com	$2a$12$D1ZHIHjBHRvaxfAQQVOczOoTkUygd5rvUvxNJaHT5ksybhTPdGO56	\N	\N	\N	2023-08-23 10:30:22.88156	2023-08-23 10:30:22.88156	\N	300604	t	\N	\N
642	giie.geo91@gmail.com	$2a$12$pq1aEPkKhMrztNED8yqBBekid.AJ/A946vP9qZ/PWS1DbD2znkhH2	\N	\N	\N	2023-08-23 10:30:23.285604	2023-08-23 10:30:23.285604	\N	300605	t	\N	\N
643	nurohman.rosyad@gmail.com	$2a$12$HMpvnYMYZNJbEWdkHn6k3ONvmaLC7ewrMXPkLRefmwujzm7XF72wq	\N	\N	\N	2023-08-23 10:30:23.686048	2023-08-23 10:30:23.686048	\N	300606	t	\N	\N
644	mahmudrafter1965@gmail.com	$2a$12$EGpMUeXl1AI953oQmiYK5.pC3XElSZmVUtULTWWEJxCNG.Ij897SK	\N	\N	\N	2023-08-23 10:30:24.093105	2023-08-23 10:30:24.093105	\N	300607	t	\N	\N
645	muhammad.zamzam@pt-sena.co.id	$2a$12$q/kbjZIo2oJxpV6F.LXvqOcLoDMlfH5h6Fe/AzFsDklBPCFzUM2p6	\N	\N	\N	2023-08-23 10:30:24.501568	2023-08-23 10:30:24.501568	\N	300608	t	\N	\N
646	melanie.petricia@pt-sena.co.id	$2a$12$84pxGJGZz3tfhAYoz8tkxeOf96ffp7WYB0Z7uUaxITX/F8WdQ9wJu	\N	\N	\N	2023-08-23 10:30:24.901972	2023-08-23 10:30:24.901972	\N	300609	t	\N	\N
647	stedon.jatmiko@gmail.com	$2a$12$NBc9wa6.yYGyRIKQoCgu.u6fiYcYXAkhkxD4KHJ1FqjoXC4KoMup6	\N	\N	\N	2023-08-23 10:30:25.307378	2023-08-23 10:30:25.307378	\N	300610	t	\N	\N
648	mfebryanwardhana@gmail.com	$2a$12$jgao.ragTQTowRZv7kcHxe7j0BF94mfn4pocn1t.iCEWIwb9KXELC	\N	\N	\N	2023-08-23 10:30:25.708859	2023-08-23 10:30:25.708859	\N	300611	t	\N	\N
649	tioaudiosyahputra@gmail.com	$2a$12$rs9.Oanr8ehy/VYJBtf8neCF0IYY6anyDzZNobvVqh5PNdIhiJ5ti	\N	\N	\N	2023-08-23 10:30:26.112185	2023-08-23 10:30:26.112185	\N	300612	t	\N	\N
650	anggitwiratama86@gmail.com	$2a$12$bfUS1McuEu7O2s4X1frvmeyG8Jc0Z5D540syFzUAG6mbj1AzPdYgy	\N	\N	\N	2023-08-23 10:30:26.519118	2023-08-23 10:30:26.519118	\N	300613	t	\N	\N
651	aldilamuhammad8@gmail.com	$2a$12$WcuyYFv2A6pYkXV8Eh26ue5up7smgAXvT4YRpxJQ89Dai5PFab9VK	\N	\N	\N	2023-08-23 10:30:26.920641	2023-08-23 10:30:26.920641	\N	300614	t	\N	\N
652	muhammadvazra@gmail.com	$2a$12$WnVNEMJ3TROZdr7wsKCYiOxrmuKL2dPKP19u0X/skA/ndaUCsq8FC	\N	\N	\N	2023-08-23 10:30:27.323005	2023-08-23 10:30:27.323005	\N	300615	t	\N	\N
653	adesttt@gmail.com	$2a$12$Zsv3/Ezp.q7QWC22Y4KMsOSRK/pnTFfiRxZ3Uh3NR1B3Sq1GhOC2W	\N	\N	\N	2023-08-23 10:30:27.723912	2023-08-23 10:30:27.723912	\N	300616	t	\N	\N
654	zainzezen10533@gmail.com	$2a$12$BZf59aMRgv.iiHzCIcD1VeDIX0ARZ8nYD6Hn95t9T76dQZm3Wch42	\N	\N	\N	2023-08-23 10:30:28.123824	2023-08-23 10:30:28.123824	\N	300617	t	\N	\N
655	khoirulaslamjm@gmail.com	$2a$12$GS3a.mjxE8NxZBtYdi1pxeARYtwKSXAVxVr40HnT4hTG1CUTrR2ES	\N	\N	\N	2023-08-23 10:30:28.526682	2023-08-23 10:30:28.526682	\N	300618	t	\N	\N
656	bimagede896@gmail.com	$2a$12$Se/eOB5gJidD/V.2xMdU4.Ab4WYZKGKCtJecOMOE38sUYioyYkAnK	\N	\N	\N	2023-08-23 10:30:28.924941	2023-08-23 10:30:28.924941	\N	300619	t	\N	\N
657	lailatul.masruroh@pt-sena.co.id	$2a$12$VlcQZYiCZDMhM4vL.RH3ReebDlGaS3ETe5X5LI3EyF8aObQYuLpSq	\N	\N	\N	2023-08-23 10:30:29.32706	2023-08-23 10:30:29.32706	\N	300620	t	\N	\N
658	indria.sari@pt-sena.co.id	$2a$12$UtDiTB6ifE5YtGxwFaCfeuvijHd8GSOauBxwOLS./dtKUPOXPsksi	\N	\N	\N	2023-08-23 10:30:29.750428	2023-08-23 10:30:29.750428	\N	300621	t	\N	\N
659	wisnu.aditya@pt-sena.co.id	$2a$12$HorvmvnD4ZC8Gj1QmogvNux0dFj7pf/X88XVg05d7F82KvdmHSDv.	\N	\N	\N	2023-08-23 10:30:30.158882	2023-08-23 10:30:30.158882	\N	300622	t	\N	\N
660	lydia@pt-sena.co.id	$2a$12$im5aJ/nsrpf53jGUrvdgLOKTZ/XL5laW1vTCtV/46tO5D67kf9mG2	\N	\N	\N	2023-08-23 10:30:30.639468	2023-08-23 10:30:30.639468	\N	300623	t	\N	\N
661	dwi.hidayati@pt-sena.co.id	$2a$12$t/9mNUnozjoAm/qbd2EcZOZ2mcnRKMD08ZpJc7RIIdOdbwAWZPTda	\N	\N	\N	2023-08-23 10:30:31.065732	2023-08-23 10:30:31.065732	\N	300624	t	\N	\N
662	nandawidyawati14@gmail.com	$2a$12$VOnqiISWEs8kOnJGiexeA.j8Srj8dxhpypyqxuP9fJllZ0Mx2A5rO	\N	\N	\N	2023-08-23 10:30:31.50057	2023-08-23 10:30:31.50057	\N	500625	t	\N	\N
663	filiabestari204@gmail.com	$2a$12$O6B2vhWg6glCBgyUuT7d6O26gnEk8j/AwgxNV.Bea7mODRmBnH9Ru	\N	\N	\N	2023-08-23 10:30:31.910028	2023-08-23 10:30:31.910028	\N	300626	t	\N	\N
664	andika.dya@gmail.com	$2a$12$Gt4/0oFBRibQ0mmyuK1JjehxItHv8xLm.szhZMZcr1YzrMWBc8/K2	\N	\N	\N	2023-08-23 10:30:32.328616	2023-08-23 10:30:32.328616	\N	300627	t	\N	\N
665	mayafebrian@gmail.com	$2a$12$xBe9vadT/y0m.avsDWEh.uiG3yeFAbp5XpIr4oar/euLONQ07bnWq	\N	\N	\N	2023-08-23 10:30:32.747352	2023-08-23 10:30:32.747352	\N	300628	t	\N	\N
666	rifqirahmanda80@gmail.com	$2a$12$LDRsuJRZLheyqbQUtEgoUOhHI3n4TXz55CNdzjClVHa.bw1Xrfq1e	\N	\N	\N	2023-08-23 10:30:33.175449	2023-08-23 10:30:33.175449	\N	300629	t	\N	\N
667	devinaoktaviani95@gmail.com	$2a$12$g49iaKP3PewZS4BvMavore64Pk14VfdcTHBeUF2ZSSqpXRwzahdUO	\N	\N	\N	2023-08-23 10:30:33.587421	2023-08-23 10:30:33.587421	\N	300630	t	\N	\N
668	rhiyanti12@gmail.com	$2a$12$R/21xFdDp20A2izfDNnZLObUTglH73s7aE7YUOLHwhO333xVAUtvG	\N	\N	\N	2023-08-23 10:30:33.996835	2023-08-23 10:30:33.996835	\N	300631	t	\N	\N
669	ryandipramadhy.13@gmail.com	$2a$12$HYzeIrcfij9kue2KELPEv.q7AnCU2AEpFAVO0GRRyZXAxjyEnQGT6	\N	\N	\N	2023-08-23 10:30:34.401593	2023-08-23 10:30:34.401593	\N	300632	t	\N	\N
670	rhikasartika11@gmail.com	$2a$12$pfZVOOnCaDwxFab2gIRr/eI4Qp4TrhclEY/f3fXfhYqAAvnZMpk0K	\N	\N	\N	2023-08-23 10:30:34.810441	2023-08-23 10:30:34.810441	\N	300633	t	\N	\N
671	titorahmadhan27@gmail.com	$2a$12$fsxV9Wj8WykFDdjpUxHfWe7YpjciJtnd2stquEkZgqK0H.HmzvX7C	\N	\N	\N	2023-08-23 10:30:35.216539	2023-08-23 10:30:35.216539	\N	300634	t	\N	\N
673	ftrnurkholifah@gmail.com	$2a$12$UcrLvoULfYNfLuOFxd8fMesT.auYqG0ovNMbANVBFLVVln520Jr4u	\N	\N	\N	2023-08-23 10:30:35.626834	2023-08-23 10:30:35.626834	\N	300635	t	\N	\N
674	luthfi.estika@gmail.com	$2a$12$af5cZIN9wGvl.8Fep7jsqOermOa.87lEC9uF66lYocJiOtFTQ5wr6	\N	\N	\N	2023-08-23 10:30:36.023355	2023-08-23 10:30:36.023355	\N	300636	t	\N	\N
675	reyhanalfarezi3006@gmail.com	$2a$12$V1StE.0LjjR102wHO4rbmeYp26GxnT/iCGD.G8KytUmlVrxYbDFEa	\N	\N	\N	2023-08-23 10:30:36.425703	2023-08-23 10:30:36.425703	\N	300637	t	\N	\N
676	andinititis004@gmail.com	$2a$12$EiSohJwdZ5hd9uL4icr.W.e/YEYUu1Xcgg6KgZZcGRDFyYhMRLlvy	\N	\N	\N	2023-08-23 10:30:36.843523	2023-08-23 10:30:36.843523	\N	300638	t	\N	\N
677	aa8091707@gmail.com	$2a$12$ph/sEkX2aKh4QJrB0iSJOOkeZiiirIm5r8kJvO4gvTABb6CzXjRay	\N	\N	\N	2023-08-23 10:30:37.25224	2023-08-23 10:30:37.25224	\N	300639	t	\N	\N
678	andri.hermawan@pt-sena.co.id	$2a$12$SnX9bfDlSDzniZoCr5tOAesUzxNsUIYGwPpTYrpWgnZiUXkd6v/.W	\N	\N	\N	2023-08-23 10:30:37.654388	2023-08-23 10:30:37.654388	\N	300640	t	\N	\N
679	chuenk87@yahoo.com	$2a$12$0yke7Kmlv0Fu3CPa6VKxiuiRqghkbx/jJxZbnv3SFzUUx8mX24sZi	\N	\N	\N	2023-08-23 10:30:38.091933	2023-08-23 10:30:38.091933	\N	300641	t	\N	\N
680	alfiarkaan21@gmail.com	$2a$12$wK0swDDrzVveAWl4Ox6VA.QzrV2o/hHCZN9oMQlmhlsV5BccA9.W2	\N	\N	\N	2023-08-23 10:30:38.496881	2023-08-23 10:30:38.496881	\N	300642	t	\N	\N
681	nadiaapaz0000@gmail.com	$2a$12$hVGnWNifnNO4v2UGFq6HseYghSIEUMBSTPGtqWsOlz.F38JtZlkBO	\N	\N	\N	2023-08-23 10:30:38.930984	2023-08-23 10:30:38.930984	\N	500643	t	\N	\N
682	apryahmad8@gmail.com	$2a$12$5314k730tqtOBNIokAQ2ee0pF0VPNzE2YwlHCD08v7xTJ3YIjukHm	\N	\N	\N	2023-08-23 10:30:39.327615	2023-08-23 10:30:39.327615	\N	300644	t	\N	\N
683	borismanronald@gmail.com	$2a$12$TpT7b3vRdG1u9V3FgNfEQeQa8pTf0ZMvYd8qHbGdMRJaw3xlOr.R2	\N	\N	\N	2023-08-23 10:30:39.731006	2023-08-23 10:30:39.731006	\N	300645	t	\N	\N
684	mgioseffygifari96@gmail.com	$2a$12$nb03vqj4qo4e6aW4x5XfIOxL2xjHwH7VDCqzirnlZU6./17owK0xW	\N	\N	\N	2023-08-23 10:30:40.194121	2023-08-23 10:30:40.194121	\N	300646	t	\N	\N
685	rickylaurentio@gmail.com	$2a$12$OKRUPgzGxZoetdMeENgoe.yMqf8WqgVDYzEEdqi3vN.59w96ZwchG	\N	\N	\N	2023-08-23 10:30:40.591864	2023-08-23 10:30:40.591864	\N	300647	t	\N	\N
686	ichsan1197@gmail.com	$2a$12$xiDKO1djIjW6Y6blilSaAeYx5AmsSn5lfoK57sKnpJKFrbJiz.jqG	\N	\N	\N	2023-08-23 10:30:41.009157	2023-08-23 10:30:41.009157	\N	300648	t	\N	\N
687	dedesupriyatna08@gmail.com	$2a$12$lHs1r6yFe92i1VhlLutMqeC2yzqD8AycLMIyPpKp4EmhY9beY2ZdC	\N	\N	\N	2023-08-23 10:30:41.40182	2023-08-23 10:30:41.40182	\N	300649	t	\N	\N
688	samuel.fernando@pt-sena.co.id	$2a$12$ZUgz8ZS/8SdJsFLBNtY1he0.f988LgbDxq5PM/1HJrs7XFf8VbHXm	\N	\N	\N	2023-08-23 10:30:41.831	2023-08-23 10:30:41.831	\N	300650	t	\N	\N
689	muhammad.ramadhan@pt-sena.co.id	$2a$12$jwWdt5vHLfAWlGUDvGKgfuYLh4fZXJB.acKEWkhkXubusyEwf2CMW	\N	\N	\N	2023-08-23 10:30:42.239366	2023-08-23 10:30:42.239366	\N	300651	t	\N	\N
690	andifrydo45@gmail.com	$2a$12$W9vV5oNPz1ehHZk5nunTHun8KYQ9sia5mmZf.Ch5/iWQ08grUPyF2	\N	\N	\N	2023-08-23 10:30:42.640019	2023-08-23 10:30:42.640019	\N	300652	t	\N	\N
691	wildantzcriwil@gmail.com	$2a$12$UYPBFqHdF8lYHdXYIspFouwZZz5Mx4yWM6Ud5LbPmdOpChryCn49S	\N	\N	\N	2023-08-23 10:30:43.043805	2023-08-23 10:30:43.043805	\N	300653	t	\N	\N
692	abukhari684@gmail.com	$2a$12$SiMYy/ETC7/LnBWvbMJtFeL7qUEFR8Af2P/SPg3UEJudc4/qPpG12	\N	\N	\N	2023-08-23 10:30:43.441744	2023-08-23 10:30:43.441744	\N	500654	t	\N	\N
693	risdahutabarat91@gmail.com	$2a$12$t4Nr4pYyXyZ5oBstBOYb1Okr4D49CI0g5Q8U19dWffoooytWXJGRa	\N	\N	\N	2023-08-23 10:30:43.835673	2023-08-23 10:30:43.835673	\N	300655	t	\N	\N
694	dwisasongko1209@gmail.com	$2a$12$/9jwnx1N7fETkpfMLTqWZeY2G5W6EIwnszWW4QHMlWR0enKIZPjDu	\N	\N	\N	2023-08-23 10:30:44.253503	2023-08-23 10:30:44.253503	\N	500656	t	\N	\N
695	dietia.ayuningtyas@pt-sena.co.id	$2a$12$ORSJhGh1/kmJBnUFuHjisOOM70HRfpfhM5/lbTXW9FX8J3T9FUtHu	\N	\N	\N	2023-08-23 10:30:44.653253	2023-08-23 10:30:44.653253	\N	300659	t	\N	\N
696	ningtyastui.indah@gmail.com	$2a$12$NpIBuEdPhdPUrAXqdZ4dVusDefld2io2gLviLrI4/6sbXfz69OfLG	\N	\N	\N	2023-08-23 10:30:45.087937	2023-08-23 10:30:45.087937	\N	300660	t	\N	\N
697	andriyana.wiguna@pt-sena.co.id	$2a$12$U2ahi6YgwdaIPnc3IfRNkOSvrXTGyBs7ivPuGyTZmDgq0lrDNg.Qm	\N	\N	\N	2023-08-23 10:30:45.489584	2023-08-23 10:30:45.489584	\N	300661	t	\N	\N
698	ripsky.rayshanda@pt-sena.co.id	$2a$12$61mfp/x2J7pBeaMwfLoBcOp.AibK.itTwfliB18c.SKcVunyomW7u	\N	\N	\N	2023-08-23 10:30:45.895801	2023-08-23 10:30:45.895801	\N	300662	t	\N	\N
699	eky.misbahuddin@pt-sena.co.id	$2a$12$R/fWi7FIqQcZG.RT0VhppeFg4i.3Qu9pveIEsA2ghtPwwZgc4C8Bu	\N	\N	\N	2023-08-23 10:30:46.291475	2023-08-23 10:30:46.291475	\N	300663	t	\N	\N
700	dwi.ayu@pt-sena.co.id	$2a$12$dno8gBOVlXpySlDx45T0ZOZ2Z9vJAxt/vgiK10JkJJl7GLXq6sthm	\N	\N	\N	2023-08-23 10:30:46.684987	2023-08-23 10:30:46.684987	\N	300664	t	\N	\N
701	agung.bharoto@pt-sena.co.id	$2a$12$/7vy5XOsnF0LF1A.PRmkeeruiZ0s40F2oj3tsrPisu81jsdjdm03y	\N	\N	\N	2023-08-23 10:30:47.080288	2023-08-23 10:30:47.080288	\N	300665	t	\N	\N
702	baharuddin_buhari@yahoo.com	$2a$12$fEIqCukLfaS7qG44FJtF/uzGc0aDNPy7cur/bt82/gWcE.sl.271S	\N	\N	\N	2023-08-23 10:30:47.473909	2023-08-23 10:30:47.473909	\N	300666	t	\N	\N
703	harry.irianto@pt-sena.co.id	$2a$12$PP7P6WbhdC.auwL3b5rMRuqANMaT7S0vTcymKkE2fDxKVAdQWDyia	\N	\N	\N	2023-08-23 10:30:47.874031	2023-08-23 10:30:47.874031	\N	300667	t	\N	\N
704	hadiansyahhardi5@gmail.com	$2a$12$R3qXNE0D6EVlHUd0Os2bCOZg3z6xVi0BKdteeemtYBWKE/emF.IYK	\N	\N	\N	2023-08-23 10:30:48.27156	2023-08-23 10:30:48.27156	\N	300668	t	\N	\N
705	hazamfathoni@gmail.com	$2a$12$hMBJqO4cVYqnLZHkdYdI1u2rF1b.Z7JCPnA.um9057Vib/2DdaKmu	\N	\N	\N	2023-08-23 10:30:48.666675	2023-08-23 10:30:48.666675	\N	300669	t	\N	\N
706	prazzchenko@gmail.com	$2a$12$y3ab.ti3fSnm6V.Hm48tfO6yb2t9tPSIAo.J2RD1JtESN8UAFuUyO	\N	\N	\N	2023-08-23 10:30:49.060197	2023-08-23 10:30:49.060197	\N	300670	t	\N	\N
707	kemalprawiraputra@gmail.com	$2a$12$Z43JUZ4Ty19rAv32wiBxi.Kxi.aosPuUwRDrFC6bcav484kAMCmZ6	\N	\N	\N	2023-08-23 10:30:49.463088	2023-08-23 10:30:49.463088	\N	300671	t	\N	\N
708	petrokhanz@gmail.com	$2a$12$OMq6XBj77LTBm9SwSdEAXuWiYP1i2MyA2QxGWR6.qflB0BIpmmIVm	\N	\N	\N	2023-08-23 10:30:49.977199	2023-08-23 10:30:49.977199	\N	300672	t	\N	\N
709	arief.allam@gmail.com	$2a$12$ztxmE9MoUudj4cg/IohEu.pijeLUqAqQk6zYaKn.We2F25eXebBme	\N	\N	\N	2023-08-23 10:30:50.480018	2023-08-23 10:30:50.480018	\N	300673	t	\N	\N
710	permanabadri10@gmail.com	$2a$12$xBiveV0rHjRbfh2EyS3sfu4DOqiXjPXn02hfGGiBE9irOZkyE8dCm	\N	\N	\N	2023-08-23 10:30:50.883595	2023-08-23 10:30:50.883595	\N	300674	t	\N	\N
711	herryantoherry68@gmail.com	$2a$12$M/fTS.aGnl3y6W70hpguR.rkFfkoVZA3qUPv/Pc7Fwo/4265/A45O	\N	\N	\N	2023-08-23 10:30:51.283402	2023-08-23 10:30:51.283402	\N	300675	t	\N	\N
712	debyputrabeton2013@gmail.com	$2a$12$dREEH2mO4jLCeCvf79qGieZ8fVlALEf6MlKiGUVszzgP5qReRW4oq	\N	\N	\N	2023-08-23 10:30:51.677996	2023-08-23 10:30:51.677996	\N	300676	t	\N	\N
713	muhamadbaihaqi40@gmail.com	$2a$12$GVEua0oUOmNiTQTEBP01c.GaJCIt1PkE7o72zp7lYFTEqTdELsIpO	\N	\N	\N	2023-08-23 10:30:52.123757	2023-08-23 10:30:52.123757	\N	300677	t	\N	\N
714	zahranargya26@gmail.com	$2a$12$fhyDDtyHRKTv9KhQL4377uj5hzbTlh0w/ZMwEbtdYCauYilqIAxDW	\N	\N	\N	2023-08-23 10:30:52.593282	2023-08-23 10:30:52.593282	\N	300679	t	\N	\N
715	bambang.hadi@pt-sena.co.id	$2a$12$oCUxJbn19CkAp8or/oCimuhttNEjjBVv0P5EVxi2O/6/mwr88xIt6	\N	\N	\N	2023-08-23 10:30:53.029931	2023-08-23 10:30:53.029931	\N	300680	t	\N	\N
716	hilman.agustian@pt-sena.co.id	$2a$12$isD2YhRxn3cyllhyna0pKuMSml4G82EfN5kJPf44ctoKE4SD4ecO2	\N	\N	\N	2023-08-23 10:30:53.472631	2023-08-23 10:30:53.472631	\N	300681	t	\N	\N
717	subhan.cakcuk@gmail.com	$2a$12$itRQd2YQfDpHBw5ljJgR5.Gsl.5SwQjgpJxfFQkSKtDww.vrAaXPy	\N	\N	\N	2023-08-23 10:30:53.878163	2023-08-23 10:30:53.878163	\N	300682	t	\N	\N
718	desira.natalia@pt-sena.co.id	$2a$12$3X.eEiu1CjrMkqj33o6PuO4K6HZ2Ud871bsZ4mj3ByrNIKAxbD1Ea	\N	\N	\N	2023-08-23 10:30:54.283552	2023-08-23 10:30:54.283552	\N	300683	t	\N	\N
719	rachmatslamat36@gmail.com	$2a$12$DFDqb4Lq86KWhdLVQy9UjOv7To5aFpN2e/TGpOm0PzGVg.k7FwSaS	\N	\N	\N	2023-08-23 10:30:54.69364	2023-08-23 10:30:54.69364	\N	300684	t	\N	\N
720	rositajonatjan@gmail.com	$2a$12$i3IZyy97W1Itmk1u2cxO8OTJBHjAqIx6EffAThPhhcCtnyNxezqyK	\N	\N	\N	2023-08-23 10:30:55.098672	2023-08-23 10:30:55.098672	\N	500685	t	\N	\N
721	tri.ayu@pt-sena.co.id	$2a$12$SoA5nwBkAwWyOo26sRMQIeM8Udn2j0gS2wxFYuJzUvHanYRgALs0O	\N	\N	\N	2023-08-23 10:30:55.498064	2023-08-23 10:30:55.498064	\N	300687	t	\N	\N
722	tezar.fauzan@pt-sena.co.id	$2a$12$8x7dayGCUAdBpn8eckp7kuf0Rh/TQkuLt4d5G4qHwouX8NbZvnPXi	\N	\N	\N	2023-08-23 10:30:55.898329	2023-08-23 10:30:55.898329	\N	300688	t	\N	\N
723	asep.firmansyah@pt-sena.co.id	$2a$12$Nu6Us6Nm/xg2ILy2DXBoleRaQc3jOJx4P6I3lbA.9gC.jsbgO3Seu	\N	\N	\N	2023-08-23 10:30:56.29325	2023-08-23 10:30:56.29325	\N	300689	t	\N	\N
724	joni.oktavia@pt-sena.co.id	$2a$12$7DJTekgvOYP2f0Nm2wVFwuZLGko/Nc6UBbOIQgzZNHBaZAr6Ful1O	\N	\N	\N	2023-08-23 10:30:56.686619	2023-08-23 10:30:56.686619	\N	300690	t	\N	\N
725	iwan.gunawan@pt-sena.co.id	$2a$12$wY11LGz/vxr7I/Q1WWIkk.E/fvpR2cbcmteIoGee4xoITa2V0GbOm	\N	\N	\N	2023-08-23 10:30:57.080159	2023-08-23 10:30:57.080159	\N	300691	t	\N	\N
726	gunita.mila@pt-sena.co.id	$2a$12$Pd34CRtvEU0iG5b5oNhjzu4.x9kU33vkuC5Ja4i4f1o6Rgb2t3N2i	\N	\N	\N	2023-08-23 10:30:57.477281	2023-08-23 10:30:57.477281	\N	300692	t	\N	\N
727	chandra.barlean@pt-sena.co.id	$2a$12$P.8MRqJAW4Dl7irgYmOsM.L7dUyd9Yex6XH0.L1YoreEG14.f21um	\N	\N	\N	2023-08-23 10:30:57.873621	2023-08-23 10:30:57.873621	\N	300693	t	\N	\N
728	normansyah.firdauzie@pt-sena.co.id	$2a$12$S8Xyo2yVyOod./35ReJ3g.8keJTlzZlUx0RTQv3FS4kPHt8oQBeHO	\N	\N	\N	2023-08-23 10:30:58.275394	2023-08-23 10:30:58.275394	\N	300695	t	\N	\N
729	rahmad.santoso@pt-sena.co.id	$2a$12$27/wuwZQw5JVzr0li/PmMeQb8Ng.rwFKbT1yQCRRvt5XnEygGnMPS	\N	\N	\N	2023-08-23 10:30:58.677009	2023-08-23 10:30:58.677009	\N	300696	t	\N	\N
730	sofiramadhani14@gmail.com	$2a$12$KqRhPGvU18cbNOmufcAhQOYe6E3rvN8xsEF7Hvn/rpCuF0GGgp8sW	\N	\N	\N	2023-08-23 10:30:59.070644	2023-08-23 10:30:59.070644	\N	300697	t	\N	\N
731	lailyalviani25@gmail.com	$2a$12$56jqy1iAuzb0s2D2mJwlOu7.NRlI9BmFoe2dHPinZ8rLo.Xj0qIRO	\N	\N	\N	2023-08-23 10:30:59.462507	2023-08-23 10:30:59.462507	\N	300698	t	\N	\N
732	muhammadalfannoor@gmail.com	$2a$12$pZOK0U.EBJWs6/LkBYkn/OLu63rhGst5.EUOCc62y8t/JBIIUt0Du	\N	\N	\N	2023-08-23 10:30:59.87016	2023-08-23 10:30:59.87016	\N	300699	t	\N	\N
733	yose.maruf@pt-sena.co.id	$2a$12$erjB0YwsvMT4oDyzEEqeguXd89fzbSARMWVI5c/k1QfJ.g0XQ.rA.	\N	\N	\N	2023-08-23 10:31:00.290916	2023-08-23 10:31:00.290916	\N	300700	t	\N	\N
734	therlanggaa@gmail.com	$2a$12$e9zYx9RUao4MMj27VHtAVe7HIAUslMB6oe467PLnBg7nAAW7wBdWK	\N	\N	\N	2023-08-23 10:31:00.693781	2023-08-23 10:31:00.693781	\N	300701	t	\N	\N
735	arimerahputih@gmail.com	$2a$12$ythbLpt06EsFv6flDX7c..PoNOhzeMO7VGJWF0BkKON617OcF4bgW	\N	\N	\N	2023-08-23 10:31:01.090417	2023-08-23 10:31:01.090417	\N	500702	t	\N	\N
736	mazida.sh@gmail.com	$2a$12$KPoB0n5bZoKVU25o26NQYOttVAdrWxGXZOkkbYFXD8YKqfX3dCJv2	\N	\N	\N	2023-08-23 10:31:01.500106	2023-08-23 10:31:01.500106	\N	500703	t	\N	\N
737	300704@pt-sena.co.id	$2a$12$x0GaRlEpZ1XKqn4tZWcHke41s3cCjglzZqz0xXwQl.S5o.gBdNgme	\N	\N	\N	2023-08-23 10:31:01.932111	2023-08-23 10:31:01.932111	\N	300704	t	\N	\N
738	sonny.budiman17@gmail.com	$2a$12$p7/GmBw07rM0mbdIqv4pnup9ELrEvDMI0j2ouSpiMinXirgoLITSK	\N	\N	\N	2023-08-23 10:31:02.344858	2023-08-23 10:31:02.344858	\N	300705	t	\N	\N
739	didit.slamdunk@gmail.com	$2a$12$Zc04WJfIfIKV72x5k81RfeaMParTblqZQmGVUKRfNCMeZ3lx9u7Zm	\N	\N	\N	2023-08-23 10:31:02.751356	2023-08-23 10:31:02.751356	\N	300706	t	\N	\N
740	yoga.tristiyana0703@gmail.com	$2a$12$.1QAho3PzKe1Y97xcs4//.txMzaHz1/g6kNnodlTJUrwYCtMaWRHu	\N	\N	\N	2023-08-23 10:31:03.151139	2023-08-23 10:31:03.151139	\N	300707	t	\N	\N
741	gigih.pratomo@pt-sena.co.id	$2a$12$j4Laqn56WjhHVrkx8YMCgudS8bv66AFSANEx4sAFyz0fkTmh8XRE.	\N	\N	\N	2023-08-23 10:31:03.550408	2023-08-23 10:31:03.550408	\N	300708	t	\N	\N
742	danu.setiyadi@pt-sena.co.id	$2a$12$6QW/q76J5.Ao5zFpAUw9lO.nD.mvlnQcjTkG.8xj1JKvC1Cw6R1Re	\N	\N	\N	2023-08-23 10:31:03.959694	2023-08-23 10:31:03.959694	\N	300709	t	\N	\N
743	anwar.rosadi@pt-sena.co.id	$2a$12$AubbsGzc4aLdGO.7HhgEoOtZzbGYXQe64rzLapYQ5amoLiJPNCn8G	\N	\N	\N	2023-08-23 10:31:04.37285	2023-08-23 10:31:04.37285	\N	300710	t	\N	\N
744	afriandi@pt-sena.co.id	$2a$12$acb8MFBsPo2877BBh2PLPOcpK6AELsTJl19nljumlZSa15u05xLOy	\N	\N	\N	2023-08-23 10:31:04.806178	2023-08-23 10:31:04.806178	\N	300711	t	\N	\N
745	ghafiqi.jati@pt-sena.co.id	$2a$12$LYCHs8/5NauV/HzjBnr45upnqXx/0T6uh7nyvRPcSSO2SIhy0SSdG	\N	\N	\N	2023-08-23 10:31:05.253182	2023-08-23 10:31:05.253182	\N	300712	t	\N	\N
746	gresiktaufiq@gmail.com	$2a$12$SQTJF43hYafOLrEVgWBN.u9yqXObjB.uarqPvx0gR7C5jl5.Ledte	\N	\N	\N	2023-08-23 10:31:05.718222	2023-08-23 10:31:05.718222	\N	300713	t	\N	\N
747	hendyizaa@gmail.com	$2a$12$sYOBfLntHY1q3gnWudNqTu/2UUVmlDiLG6dl.qw/NumLNVTCq78Xm	\N	\N	\N	2023-08-23 10:31:06.163802	2023-08-23 10:31:06.163802	\N	300714	t	\N	\N
748	lulukgeol2008.lf@gmail.com	$2a$12$2GoL8bcLVWANxuFX2KQIyerX9Oe.1vWgnnWL1yg4AE4cldBG6TF0q	\N	\N	\N	2023-08-23 10:31:06.594247	2023-08-23 10:31:06.594247	\N	300715	t	\N	\N
749	firman.alimuddin@pt-sena.co.id	$2a$12$DrfsTFGuJazEHDgZRuaUCeMDCXM3mfuE9LLxcZFuW/tCh/FnWD8J.	\N	\N	\N	2023-08-23 10:31:07.036744	2023-08-23 10:31:07.036744	\N	300716	t	\N	\N
750	dipanegarabayu@gmail.com	$2a$12$PKxEVfYqJaOuZO1K5j8swOsuTn95tUR8/8yLf6f/7QAzJ1ntrgG2u	\N	\N	\N	2023-08-23 10:31:07.464815	2023-08-23 10:31:07.464815	\N	300717	t	\N	\N
751	riri.rizkiherdini@gmail.com	$2a$12$EprBvXww4sTDEB5vdg.gve/FLM3ZAwbiV061Cq2YXsT5xqYWCtvB.	\N	\N	\N	2023-08-23 10:31:07.906589	2023-08-23 10:31:07.906589	\N	300718	t	\N	\N
752	eggiemif98@gmail.com	$2a$12$e9vzOWxuBrtgEsO.DyTRj.NSv1ygA48Swc3/XX7CmU5rW6F9SvskC	\N	\N	\N	2023-08-23 10:31:08.328388	2023-08-23 10:31:08.328388	\N	300719	t	\N	\N
753	defriramadhani25@gmail.com	$2a$12$oyUktkU/Sa951RyYD6XvUuB48rPqsUednzqWblFf7mfdgi7S.mN7.	\N	\N	\N	2023-08-23 10:31:08.751746	2023-08-23 10:31:08.751746	\N	300720	t	\N	\N
754	hutajulureymon@gmail.com	$2a$12$9wXAy5xR/np6m2R2U/ZMQuleyK22HDCFckQor8ePXqmSmFiA4MUym	\N	\N	\N	2023-08-23 10:31:09.175321	2023-08-23 10:31:09.175321	\N	300721	t	\N	\N
755	aditadeva04@gmail.com	$2a$12$q3zexaVTTiBhqZ.NKrCq4.5rZQjc9JRmzCuoh7SWkvWYs4Y0jrG.a	\N	\N	\N	2023-08-23 10:31:09.608712	2023-08-23 10:31:09.608712	\N	300722	t	\N	\N
756	maesanipazriati28@gmail.com	$2a$12$190dPmxXmITXsXKHk06aTemllkp9rdF9xn77WDNHUAYVO44Eyp6Ni	\N	\N	\N	2023-08-23 10:31:10.033011	2023-08-23 10:31:10.033011	\N	300723	t	\N	\N
757	erishaauliapr@gmail.com	$2a$12$wTGL1Ev2PokqznviJbeqBeC9JyjtfZV1NKUnxgA9P209SuF/u6itO	\N	\N	\N	2023-08-23 10:31:10.484985	2023-08-23 10:31:10.484985	\N	300724	t	\N	\N
758	nanda.rizky@pt-sena.co.id	$2a$12$UCDQzwAabDdRzGQ6AUG.cOtOCJOyxwnR5p.spkRhYpeJanat6iMG2	\N	\N	\N	2023-08-23 10:31:10.899029	2023-08-23 10:31:10.899029	\N	300725	t	\N	\N
759	lpanggalih@gmail.com	$2a$12$y0jd6.XCPDwhAJqLStsbqOpfNWYpGwb84FxewtkWXtBVbDNIae7zG	\N	\N	\N	2023-08-23 10:31:11.310074	2023-08-23 10:31:11.310074	\N	300726	t	\N	\N
760	alam.saputra@pt-sena.co.id	$2a$12$Uu0xTj8CB7WiSzixX/70xuS9myjUgXBj7/ucNVyPjiG.5MMWgaAB2	\N	\N	\N	2023-08-23 10:31:11.711631	2023-08-23 10:31:11.711631	\N	300727	t	\N	\N
761	handoko.ramadhan97@gmail.com	$2a$12$QMse9EiP4O/RB3V91UnO6uLKJixa6N.EO2vllGFQN/yX.LMtT47eO	\N	\N	\N	2023-08-23 10:31:12.136214	2023-08-23 10:31:12.136214	\N	500728	t	\N	\N
762	vivie.sholichatin@pt-sena.co.id	$2a$12$KhjXgIYXIA6xVQaOiks9we9uKTimo7msIW66rdjcv.SJv23OpudWy	\N	\N	\N	2023-08-23 10:31:12.562845	2023-08-23 10:31:12.562845	\N	300729	t	\N	\N
763	andijafarwh0@gmail.com	$2a$12$vdUnOKB4bKQC/liT/y479O1xdn1z7ne.uiHe6umFZBGTTmjVTFX52	\N	\N	\N	2023-08-23 10:31:12.972558	2023-08-23 10:31:12.972558	\N	300730	t	\N	\N
764	sherly.gunawan@pt-sena.co.id	$2a$12$Cug2Hbtg62GLaK7p8LBP/.sjgjP0iKYBF4mHvhX1PgvcqavONgqi.	\N	\N	\N	2023-08-23 10:31:13.388574	2023-08-23 10:31:13.388574	\N	300731	t	\N	\N
765	shintya.arnia@pt-sena.co.id	$2a$12$ioU3a9OUsVMMW2wnBnyBR.rBR6afp1yNYGYlQuHuxdO3myGn6y6a2	\N	\N	\N	2023-08-23 10:31:13.804311	2023-08-23 10:31:13.804311	\N	300732	t	\N	\N
766	wahid.nurrohman@pt-sena.co.id	$2a$12$Cdo.btd4WyVpiaPJI/P1nu3CRZqZW2J6ITB7uYA.W3O0uAf3rT3te	\N	\N	\N	2023-08-23 10:31:14.219724	2023-08-23 10:31:14.219724	\N	300733	t	\N	\N
767	erick@pt-sena.co.id	$2a$12$K9DYqkhYg7vfdy9uRRlw3uY3eHfgnqQTBXPHlBlZ6ITYWVrYg/g/.	\N	\N	\N	2023-08-23 10:31:14.626965	2023-08-23 10:31:14.626965	\N	300734	t	\N	\N
768	maul.dwi@pt-sena.co.id	$2a$12$S1kqW3YKLJN9svQJKr.Oke7xrYHcDqakT0wOg30dU096E2uRAU8pK	\N	\N	\N	2023-08-23 10:31:15.042473	2023-08-23 10:31:15.042473	\N	300735	t	\N	\N
769	nazla.syafa@pt-sena.co.id	$2a$12$NjSnFuOcYp.R.fmFL3Jr.evjbX.c9BdAAoOP.t3HutAD8KsNtVW7e	\N	\N	\N	2023-08-23 10:31:15.455256	2023-08-23 10:31:15.455256	\N	300736	t	\N	\N
770	andy.setiyawan@pt-sena.co.id	$2a$12$mAN01iu9W/qSQHOg0bQg9e2lfMF7y6rVxFv0jC0FJ93SA2jjsSruq	\N	\N	\N	2023-08-23 10:31:15.868864	2023-08-23 10:31:15.868864	\N	300737	t	\N	\N
771	agri.kuswandani@pt-sena.co.id	$2a$12$/YxVJo2P6nHU6pLDfouIYOi3PTGJJfzGmsZe0mI4O1Jnz87LYlDja	\N	\N	\N	2023-08-23 10:31:16.287562	2023-08-23 10:31:16.287562	\N	300738	t	\N	\N
772	hanzalah.naufal@pt-sena.co.id	$2a$12$cLiHxc6qJ7SD4nyu4mBfiugPvtV7xQ56DeZ0dwIvVddq5KNH8gaDa	\N	\N	\N	2023-08-23 10:31:16.70429	2023-08-23 10:31:16.70429	\N	300739	t	\N	\N
773	lilineria.eria@gmail.com	$2a$12$51n7x2tHAl6TLyuIK.MKyO9QYhsY1Ou8Ouzlo4j8AU31wtc0OUH3a	\N	\N	\N	2023-08-23 10:31:17.119757	2023-08-23 10:31:17.119757	\N	300740	t	\N	\N
774	harry.priyulanda@pt-sena.co.id	$2a$12$qqa9Y84ody0iWq4S9B3GGukTNi6UBZJ8.MYqG4naCaOMP/2SUiD2S	\N	\N	\N	2023-08-23 10:31:17.528348	2023-08-23 10:31:17.528348	\N	300741	t	\N	\N
775	debby.chairubby@pt-sena.co.id	$2a$12$QkyoQCUcxdUkpEsth7js6ewuN/JTSmLPXmG2y6Z18PFirPGESCYFO	\N	\N	\N	2023-08-23 10:31:17.929125	2023-08-23 10:31:17.929125	\N	300743	t	\N	\N
776	rikza.zakiya@pt-sena.co.id	$2a$12$kHgv6W3z2tV/XLnZptxvvOAPMaAznv6UX6DqG/kOS4nt8z5BHr4Yu	\N	\N	\N	2023-08-23 10:31:18.332504	2023-08-23 10:31:18.332504	\N	300744	t	\N	\N
777	kaniaazzahra915@gmail.com	$2a$12$79eNO0xUWpawQVr9U5k9.OJkcYT909mp4dCidzaLfqJKAhC38c3U6	\N	\N	\N	2023-08-23 10:31:18.740042	2023-08-23 10:31:18.740042	\N	300745	t	\N	\N
778	ramadhanu@pt-sena.co.id	$2a$12$axba1ClspgkyKkFqAhu5veeZEMyDuTcMuhCUmdAaBgIigNcJcuAWK	\N	\N	\N	2023-08-23 10:31:19.159921	2023-08-23 10:31:19.159921	\N	300746	t	\N	\N
779	desy.natalia@pt-sena.co.id	$2a$12$yEyxToIkITu19U/WIvqc1uLZX7osKoLC80o/nxgyofZtjZi7QPdQ6	\N	\N	\N	2023-08-23 10:31:19.569364	2023-08-23 10:31:19.569364	\N	300747	t	\N	\N
780	rizkayoga123@gmail.com	$2a$12$BM5EGSdbtsdjw8AQhDsOreHLZKC47koBAKHoGmM8wMXr2LNDN2Fom	\N	\N	\N	2023-08-23 10:31:19.993879	2023-08-23 10:31:19.993879	\N	300748	t	\N	\N
781	rizkyneviwizanda@gmail.com	$2a$12$cPjm56i8mumBBxIMYwbhW.5vEH9ThSTzqX5ySHml01X5N/q.Ophh2	\N	\N	\N	2023-08-23 10:31:20.438895	2023-08-23 10:31:20.438895	\N	300749	t	\N	\N
782	bintaraadhicandraa@gmail.com	$2a$12$6g4qv.8R084NGxlbw3hTrOPX9QAqjpcPw0cJtr9h9JdcRi5YmylQS	\N	\N	\N	2023-08-23 10:31:20.850736	2023-08-23 10:31:20.850736	\N	300750	t	\N	\N
783	wandahidayah976@gmail.com	$2a$12$bwA2JVeCAaoFFjNHZxuD3OZjgmwp/PeRi78Ts3Y3j86S9fMtWCxk2	\N	\N	\N	2023-08-23 10:31:21.316934	2023-08-23 10:31:21.316934	\N	300751	t	\N	\N
784	abobo73@gmail.com	$2a$12$48xwdUSIUz10nNqOg/1VZe9uxUvfgLfRO7p94Ps8f2.S6PZ/ZP.PC	\N	\N	\N	2023-08-23 10:31:21.735128	2023-08-23 10:31:21.735128	\N	300752	t	\N	\N
785	afifahamar97@gmail.com	$2a$12$ZVDDPnur7EHFuHC3agu9Re9oMrBe37st1coPNc9qWUKJx7gDPu.uu	\N	\N	\N	2023-08-23 10:31:22.148049	2023-08-23 10:31:22.148049	\N	300753	t	\N	\N
786	alfianfuady23@gmail.com	$2a$12$Whw8Br6X9GUe/wSQnvmEEOn3gq3WxiskdNEP27Bm4PjBsr5XZOJ7a	\N	\N	\N	2023-08-23 10:31:22.572167	2023-08-23 10:31:22.572167	\N	300754	t	\N	\N
787	ulyazafira9@gmail.com	$2a$12$DOsu/cOd3J7NmFkuXs27CekyO8BXSYDVAW13tsDE0MWQqtI6b91Me	\N	\N	\N	2023-08-23 10:31:23.031275	2023-08-23 10:31:23.031275	\N	300755	t	\N	\N
788	wirawjynt@gmail.com	$2a$12$xSPocMsW9p.jPC1MG/2BAuGdJ/YMlRMjPcwPevsQ92LUjMIEeBywK	\N	\N	\N	2023-08-23 10:31:23.479193	2023-08-23 10:31:23.479193	\N	300756	t	\N	\N
789	affanumarul@gmail.com	$2a$12$SMjAcsVFm38ycFIBV89bP.OkgzdJhDxU/hKOwCd5UTqkvdL0OvT.y	\N	\N	\N	2023-08-23 10:31:23.967335	2023-08-23 10:31:23.967335	\N	300757	t	\N	\N
790	madzharianwar@gmail.com	$2a$12$h/nS/QDTb5JvRFsrU1dHseaBxXJMehyjjkZw9/K1aNwHCH8nE85Fy	\N	\N	\N	2023-08-23 10:31:24.41892	2023-08-23 10:31:24.41892	\N	300758	t	\N	\N
791	jokosan0686@gmail.com	$2a$12$qELnWU6xVzs/MZZLWvSTXukRyWkLLSXtaYUocbsQtr6XI.rta2EKW	\N	\N	\N	2023-08-23 10:31:24.897174	2023-08-23 10:31:24.897174	\N	300759	t	\N	\N
792	mkhosim91@gmail.com	$2a$12$bGzAz3MGYTzKSivbwq9rOuZm9CFOwQQkiEVlPL42ec12kIi85R42e	\N	\N	\N	2023-08-23 10:31:25.319178	2023-08-23 10:31:25.319178	\N	300760	t	\N	\N
793	irwanrusmawan097@gmail.com	$2a$12$bkhfqEzjTsx4mNVxVrFL1ebH.V8TCEPG9H4mzvviJJgy0eQSsrfZu	\N	\N	\N	2023-08-23 10:31:25.73419	2023-08-23 10:31:25.73419	\N	300761	t	\N	\N
794	300762@pt-sena.co.id	$2a$12$mATQPNgbuLWyw2mZDa0N1e/zFb2ZrVzwYQEtvoNuc9zClC1bV.1E6	\N	\N	\N	2023-08-23 10:31:26.143389	2023-08-23 10:31:26.143389	\N	300762	t	\N	\N
795	ahidayatullah56@gmail.com	$2a$12$ymG2f8IcuXM4z.uhXn3J1OoEV/eiiXxdLRDfTc6dwvWRjNiRggInW	\N	\N	\N	2023-08-23 10:31:26.584947	2023-08-23 10:31:26.584947	\N	300763	t	\N	\N
796	khinskimeitaratu@gmail.com	$2a$12$Q4qqhbRpc4iJuXhyqdo0YOp.lL0Bf0U7Xmk2vcx2bTE2JZ3CQTlru	\N	\N	\N	2023-08-23 10:31:26.996124	2023-08-23 10:31:26.996124	\N	300764	t	\N	\N
13	rinalfauzi@gmail.com	$2a$12$NlaKsDqg/nbfsY0xlHztSumNY3YAWEYE9lo9qqxhuqll77VTZVHpy	\N	\N	\N	2023-06-26 01:30:03.926707	2023-08-24 05:35:52.917171	pm.engineering	pm.engineering	t	\N	\N
\.


       3553.dat                                                                                            0000600 0004000 0002000 00000000566 14472000421 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Komersial	2023-06-12 06:56:33.070862	2023-06-12 06:56:33.070862
2	Divisi SDM & Umum	2023-06-15 00:57:06.963017	2023-06-15 00:57:06.963017
4	Keuangan	2023-06-24 08:06:31.338437	2023-06-24 08:06:31.338437
3	Engineering & Keproyekkan	2023-06-16 16:18:30.816658	2023-08-09 02:50:17.171145
5	Penilaian Kinerja & Hukum	2023-08-09 04:02:26.456135	2023-08-09 04:02:26.456135
\.


                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000132135 14472000421 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: sender_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sender_emails (
    id bigint NOT NULL,
    email_to character varying,
    parent_id integer,
    token integer,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sender_emails OWNER TO postgres;

--
-- Name: sender_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sender_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sender_emails_id_seq OWNER TO postgres;

--
-- Name: sender_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sender_emails_id_seq OWNED BY public.sender_emails.id;


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
    pause_respon boolean DEFAULT false,
    duration numeric,
    token integer
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
-- Name: tx_errors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tx_errors (
    id bigint NOT NULL,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    controller character varying,
    action character varying
);


ALTER TABLE public.tx_errors OWNER TO postgres;

--
-- Name: tx_errors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tx_errors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tx_errors_id_seq OWNER TO postgres;

--
-- Name: tx_errors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tx_errors_id_seq OWNED BY public.tx_errors.id;


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
    user_type character varying,
    token integer
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
-- Name: sender_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sender_emails ALTER COLUMN id SET DEFAULT nextval('public.sender_emails_id_seq'::regclass);


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
-- Name: tx_errors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tx_errors ALTER COLUMN id SET DEFAULT nextval('public.tx_errors_id_seq'::regclass);


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
COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM '$$PATH$$/3517.dat';

--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.
COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM '$$PATH$$/3519.dat';

--
-- Data for Name: approvals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM stdin;
\.
COPY public.approvals (id, issued_by, approve_level, date, created_at, updated_at, ticket_id, description) FROM '$$PATH$$/3521.dat';

--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
\.
COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM '$$PATH$$/3523.dat';

--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas (id, nama, created_at, updated_at) FROM stdin;
\.
COPY public.areas (id, nama, created_at, updated_at) FROM '$$PATH$$/3524.dat';

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, nama_kategori, created_at, updated_at) FROM stdin;
\.
COPY public.categories (id, nama_kategori, created_at, updated_at) FROM '$$PATH$$/3526.dat';

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM stdin;
\.
COPY public.employees (id, id_pegawai, nama, tempat_lahir, tanggal_lahir, alamat, id_identitas, nomor_telepon, email, jabatan, work_unit_id, created_at, updated_at) FROM '$$PATH$$/3528.dat';

--
-- Data for Name: inventories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM stdin;
\.
COPY public.inventories (id, kode, item_id, merek, tahun_perolehan, harga_perolehan, nilai_residu, masa_guna, lama_pakai, kondisi, lokasi, user_id, created_at, updated_at) FROM '$$PATH$$/3530.dat';

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, nama_item, created_at, updated_at) FROM stdin;
\.
COPY public.items (id, nama_item, created_at, updated_at) FROM '$$PATH$$/3532.dat';

--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM stdin;
\.
COPY public.loans (id, user_id, deskripsi, jumlah, from_date, to_date, penanggung_jawab, status, created_at, updated_at, inventory_id) FROM '$$PATH$$/3534.dat';

--
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM stdin;
\.
COPY public.positions (id, user_id, role_id, work_unit_id, punya_pm, created_at, updated_at) FROM '$$PATH$$/3536.dat';

--
-- Data for Name: role_assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM stdin;
\.
COPY public.role_assignments (id, user_id, role_id, created_at, updated_at) FROM '$$PATH$$/3538.dat';

--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM stdin;
\.
COPY public.roles (id, name, permissions, type, created_at, updated_at) FROM '$$PATH$$/3540.dat';

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
\.
COPY public.schema_migrations (version) FROM '$$PATH$$/3542.dat';

--
-- Data for Name: sender_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sender_emails (id, email_to, parent_id, token, status, created_at, updated_at) FROM stdin;
\.
COPY public.sender_emails (id, email_to, parent_id, token, status, created_at, updated_at) FROM '$$PATH$$/3558.dat';

--
-- Data for Name: slas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM stdin;
\.
COPY public.slas (id, category_id, period, status, created_at, updated_at) FROM '$$PATH$$/3543.dat';

--
-- Data for Name: sub_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM stdin;
\.
COPY public.sub_categories (id, category_id, nama_sub_kategori, created_at, updated_at, approval_berjenjang, template_ticket) FROM '$$PATH$$/3545.dat';

--
-- Data for Name: ticket_chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM stdin;
\.
COPY public.ticket_chats (id, sender, receiver, description, created_at, updated_at) FROM '$$PATH$$/3547.dat';

--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon, duration, token) FROM stdin;
\.
COPY public.tickets (id, category_id, sub_category_id, work_unit_id, issued_by, description, created_at, updated_at, area_id, status, assigned_by, no_ticket, approval_by, created_respon, inprogress_respon, closed_respon, pause_respon, duration, token) FROM '$$PATH$$/3549.dat';

--
-- Data for Name: tx_errors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tx_errors (id, description, created_at, updated_at, controller, action) FROM stdin;
\.
COPY public.tx_errors (id, description, created_at, updated_at, controller, action) FROM '$$PATH$$/3556.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type, token) FROM stdin;
\.
COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, username, state, user_type, token) FROM '$$PATH$$/3551.dat';

--
-- Data for Name: work_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.work_units (id, nama, created_at, updated_at) FROM stdin;
\.
COPY public.work_units (id, nama, created_at, updated_at) FROM '$$PATH$$/3553.dat';

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 54, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 55, true);


--
-- Name: approvals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.approvals_id_seq', 943, true);


--
-- Name: areas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_id_seq', 29, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 14, true);


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

SELECT pg_catalog.setval('public.role_assignments_id_seq', 802, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


--
-- Name: sender_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sender_emails_id_seq', 218, true);


--
-- Name: slas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slas_id_seq', 6, true);


--
-- Name: sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sub_categories_id_seq', 28, true);


--
-- Name: ticket_chats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tickets_id_seq', 509, true);


--
-- Name: tx_errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tx_errors_id_seq', 119, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 796, true);


--
-- Name: work_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.work_units_id_seq', 5, true);


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
-- Name: sender_emails sender_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sender_emails
    ADD CONSTRAINT sender_emails_pkey PRIMARY KEY (id);


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
-- Name: tx_errors tx_errors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tx_errors
    ADD CONSTRAINT tx_errors_pkey PRIMARY KEY (id);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   