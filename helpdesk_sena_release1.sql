toc.dat                                                                                             0000600 0004000 0002000 00000162224 14473017126 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            helpdesk_sena    14.8 (Debian 14.8-1.pgdg110+1)    14.8 (Debian 14.8-1.pgdg110+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    245       3553.dat            0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 58, true);
          public          postgres    false    210                    0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 59, true);
          public          postgres    false    212                    0    0    approvals_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.approvals_id_seq', 967, true);
          public          postgres    false    214                    0    0    areas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.areas_id_seq', 29, true);
          public          postgres    false    217                    0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 14, true);
          public          postgres    false    219                    0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          postgres    false    221                    0    0    inventories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventories_id_seq', 2, true);
          public          postgres    false    223                    0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 2, true);
          public          postgres    false    225         	           0    0    loans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.loans_id_seq', 1, false);
          public          postgres    false    227         
           0    0    positions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.positions_id_seq', 18, true);
          public          postgres    false    229                    0    0    role_assignments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.role_assignments_id_seq', 658, true);
          public          postgres    false    231                    0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
          public          postgres    false    233                    0    0    sender_emails_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sender_emails_id_seq', 235, true);
          public          postgres    false    249                    0    0    slas_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.slas_id_seq', 6, true);
          public          postgres    false    236                    0    0    sub_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_categories_id_seq', 28, true);
          public          postgres    false    238                    0    0    ticket_chats_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ticket_chats_id_seq', 1, false);
          public          postgres    false    240                    0    0    tickets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tickets_id_seq', 3, true);
          public          postgres    false    242                    0    0    tx_errors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tx_errors_id_seq', 119, true);
          public          postgres    false    247                    0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 613, true);
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
       public          postgres    false    224    3318    222                                                                                                                                                                                                                                                                                                                                                                                    3517.dat                                                                                            0000600 0004000 0002000 00000000005 14473017126 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3519.dat                                                                                            0000600 0004000 0002000 00000000005 14473017126 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3521.dat                                                                                            0000600 0004000 0002000 00000001310 14473017126 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        961	user.komersial	created	\N	2023-08-28 03:40:50.803803	2023-08-28 03:40:50.803803	2	create ticket
962	kadiv.komersial	approval3	\N	2023-08-28 03:41:37.701453	2023-08-28 03:41:37.701453	2	tiket disetujui
963	manajer.it	open	\N	2023-08-28 03:42:14.159199	2023-08-28 03:42:14.159199	2	tiket disetujui
964	user.komersial	created	\N	2023-08-28 03:43:14.356864	2023-08-28 03:43:14.356864	3	create ticket
965	kadiv.komersial	approval2	\N	2023-08-28 03:43:36.210295	2023-08-28 03:43:36.210295	3	tiket disetujui
966	kadiv.engineering	approval3	\N	2023-08-28 03:43:54.150985	2023-08-28 03:43:54.150985	3	tiket disetujui
967	manajer.it	open	\N	2023-08-28 03:44:11.611089	2023-08-28 03:44:11.611089	3	tiket disetujui
\.


                                                                                                                                                                                                                                                                                                                        3523.dat                                                                                            0000600 0004000 0002000 00000000123 14473017126 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        environment	development	2023-06-12 03:47:38.838361	2023-06-12 03:47:38.838361
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                             3524.dat                                                                                            0000600 0004000 0002000 00000000311 14473017126 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	Medan	2023-06-12 04:27:53.196575	2023-06-15 03:24:33.437799
2	Surabaya	2023-06-12 04:27:20.988036	2023-06-15 03:24:40.289321
5	Kantor Pusat	2023-06-15 10:47:24.595396	2023-06-15 10:47:24.595396
\.


                                                                                                                                                                                                                                                                                                                       3526.dat                                                                                            0000600 0004000 0002000 00000001022 14473017126 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	Layanan Aplikasi	2023-06-15 03:14:07.145211	2023-06-15 03:14:07.145211
9	Layanan Infrastruktur	2023-06-15 03:15:37.703227	2023-06-15 03:15:37.703227
10	Layanan Peminjaman Barang	2023-06-15 03:15:55.072237	2023-06-15 03:15:55.072237
11	Layanan Pengaturan Hak Akses	2023-06-15 03:16:06.72204	2023-06-15 03:16:06.72204
12	Layanan SDM	2023-07-03 03:51:16.263938	2023-07-03 03:51:16.263938
13	Timesheet	2023-07-13 07:16:27.303301	2023-07-13 07:16:27.303301
14	Layanan Asset	2023-08-18 02:53:28.416163	2023-08-18 02:53:28.416163
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3528.dat                                                                                            0000600 0004000 0002000 00000000005 14473017126 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3530.dat                                                                                            0000600 0004000 0002000 00000000422 14473017126 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1111	1	Lenovo	2023-06-13	13000000	10000000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 03:53:22.087578	2023-06-29 11:25:34.450188
2	1111	2	Universal HDMI	2023-06-13	200000	150000	2023-06-13	2 Bulan	baik	kantor	\N	2023-06-13 05:47:40.291028	2023-06-29 11:43:47.85018
\.


                                                                                                                                                                                                                                              3532.dat                                                                                            0000600 0004000 0002000 00000000202 14473017126 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Laptop	2023-06-13 03:52:25.600138	2023-06-13 03:52:25.600138
2	Kabel	2023-06-13 05:46:56.030759	2023-06-13 05:46:56.030759
\.


                                                                                                                                                                                                                                                                                                                                                                                              3534.dat                                                                                            0000600 0004000 0002000 00000000005 14473017126 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3536.dat                                                                                            0000600 0004000 0002000 00000000416 14473017126 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        15	596	3	1	f	2023-08-28 04:03:50.151761	2023-08-28 04:03:50.151761
16	563	3	4	f	2023-08-28 04:04:03.338898	2023-08-28 04:04:03.338898
17	184	3	2	f	2023-08-28 04:04:16.461008	2023-08-28 04:04:16.461008
18	42	3	3	t	2023-08-28 04:05:11.97425	2023-08-28 04:05:11.97425
\.


                                                                                                                                                                                                                                                  3538.dat                                                                                            0000600 0004000 0002000 00000114013 14473017126 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-06-12 03:56:24.579679	2023-06-12 03:56:24.579679
2	2	4	2023-06-14 08:54:38.008763	2023-06-14 08:54:38.008763
5	5	6	2023-06-15 05:01:36.488875	2023-06-15 05:01:36.488875
6	6	4	2023-06-15 06:31:48.07708	2023-06-15 06:31:48.07708
14	12	4	2023-06-24 16:38:19.22566	2023-06-24 16:38:19.22566
15	13	4	2023-06-26 01:30:03.945423	2023-06-26 01:30:03.945423
16	14	4	2023-06-26 01:35:30.283647	2023-06-26 01:35:30.283647
21	16	1	2023-07-17 00:40:57.375247	2023-07-17 00:40:57.375247
22	16	5	2023-07-17 00:40:57.383436	2023-07-17 00:40:57.383436
23	17	1	2023-07-18 01:01:57.072113	2023-07-18 01:01:57.072113
26	17	5	2023-07-18 04:50:48.850618	2023-07-18 04:50:48.850618
27	18	4	2023-07-20 01:04:53.809945	2023-07-20 01:04:53.809945
28	19	4	2023-08-28 02:21:09.361611	2023-08-28 02:21:09.361611
29	20	4	2023-08-28 02:21:09.762139	2023-08-28 02:21:09.762139
30	21	4	2023-08-28 02:21:10.164833	2023-08-28 02:21:10.164833
31	22	4	2023-08-28 02:21:10.550032	2023-08-28 02:21:10.550032
32	23	4	2023-08-28 02:21:10.942688	2023-08-28 02:21:10.942688
33	24	4	2023-08-28 02:21:11.335162	2023-08-28 02:21:11.335162
34	25	4	2023-08-28 02:21:11.729518	2023-08-28 02:21:11.729518
35	26	4	2023-08-28 02:21:12.116327	2023-08-28 02:21:12.116327
36	27	4	2023-08-28 02:21:12.505706	2023-08-28 02:21:12.505706
37	28	4	2023-08-28 02:21:12.900262	2023-08-28 02:21:12.900262
38	29	4	2023-08-28 02:21:13.295875	2023-08-28 02:21:13.295875
39	30	4	2023-08-28 02:21:13.681343	2023-08-28 02:21:13.681343
40	31	4	2023-08-28 02:21:14.065358	2023-08-28 02:21:14.065358
41	32	4	2023-08-28 02:21:14.457931	2023-08-28 02:21:14.457931
42	33	4	2023-08-28 02:21:14.842831	2023-08-28 02:21:14.842831
43	34	4	2023-08-28 02:21:15.241672	2023-08-28 02:21:15.241672
44	35	4	2023-08-28 02:21:15.644866	2023-08-28 02:21:15.644866
45	36	4	2023-08-28 02:21:16.041346	2023-08-28 02:21:16.041346
46	37	4	2023-08-28 02:21:16.439919	2023-08-28 02:21:16.439919
47	38	4	2023-08-28 02:21:16.839065	2023-08-28 02:21:16.839065
48	39	4	2023-08-28 02:21:17.225034	2023-08-28 02:21:17.225034
49	40	4	2023-08-28 02:21:17.613676	2023-08-28 02:21:17.613676
50	41	4	2023-08-28 02:21:18.001731	2023-08-28 02:21:18.001731
52	43	4	2023-08-28 02:21:18.782815	2023-08-28 02:21:18.782815
53	44	4	2023-08-28 02:21:19.180767	2023-08-28 02:21:19.180767
54	45	4	2023-08-28 02:21:19.574056	2023-08-28 02:21:19.574056
55	46	4	2023-08-28 02:21:20.004278	2023-08-28 02:21:20.004278
56	47	4	2023-08-28 02:21:20.403987	2023-08-28 02:21:20.403987
57	48	4	2023-08-28 02:21:20.789819	2023-08-28 02:21:20.789819
58	49	4	2023-08-28 02:21:21.176688	2023-08-28 02:21:21.176688
59	50	4	2023-08-28 02:21:21.570615	2023-08-28 02:21:21.570615
60	51	4	2023-08-28 02:21:21.968207	2023-08-28 02:21:21.968207
61	52	4	2023-08-28 02:21:22.357088	2023-08-28 02:21:22.357088
62	53	4	2023-08-28 02:21:22.748331	2023-08-28 02:21:22.748331
63	54	4	2023-08-28 02:21:23.13302	2023-08-28 02:21:23.13302
64	55	4	2023-08-28 02:21:23.525912	2023-08-28 02:21:23.525912
65	56	4	2023-08-28 02:21:23.911328	2023-08-28 02:21:23.911328
66	57	4	2023-08-28 02:21:24.296247	2023-08-28 02:21:24.296247
67	58	4	2023-08-28 02:21:24.685765	2023-08-28 02:21:24.685765
68	59	4	2023-08-28 02:21:25.075162	2023-08-28 02:21:25.075162
69	60	4	2023-08-28 02:21:25.520923	2023-08-28 02:21:25.520923
70	61	4	2023-08-28 02:21:25.912353	2023-08-28 02:21:25.912353
71	62	4	2023-08-28 02:21:26.299902	2023-08-28 02:21:26.299902
72	63	4	2023-08-28 02:21:26.688313	2023-08-28 02:21:26.688313
73	64	4	2023-08-28 02:21:27.072757	2023-08-28 02:21:27.072757
74	65	4	2023-08-28 02:21:27.458295	2023-08-28 02:21:27.458295
75	66	4	2023-08-28 02:21:27.858691	2023-08-28 02:21:27.858691
76	67	4	2023-08-28 02:21:28.246143	2023-08-28 02:21:28.246143
77	68	4	2023-08-28 02:21:28.635977	2023-08-28 02:21:28.635977
78	69	4	2023-08-28 02:21:29.037157	2023-08-28 02:21:29.037157
79	70	4	2023-08-28 02:21:29.426273	2023-08-28 02:21:29.426273
80	71	4	2023-08-28 02:21:29.824923	2023-08-28 02:21:29.824923
81	72	4	2023-08-28 02:21:30.216589	2023-08-28 02:21:30.216589
82	73	4	2023-08-28 02:21:30.602868	2023-08-28 02:21:30.602868
83	74	4	2023-08-28 02:21:30.9906	2023-08-28 02:21:30.9906
84	75	4	2023-08-28 02:21:31.374558	2023-08-28 02:21:31.374558
85	76	4	2023-08-28 02:21:31.765418	2023-08-28 02:21:31.765418
86	77	4	2023-08-28 02:21:32.152851	2023-08-28 02:21:32.152851
87	78	4	2023-08-28 02:21:32.536893	2023-08-28 02:21:32.536893
88	79	4	2023-08-28 02:21:32.932743	2023-08-28 02:21:32.932743
89	80	4	2023-08-28 02:21:33.330788	2023-08-28 02:21:33.330788
90	81	4	2023-08-28 02:21:33.743443	2023-08-28 02:21:33.743443
91	82	4	2023-08-28 02:21:34.153618	2023-08-28 02:21:34.153618
92	83	4	2023-08-28 02:21:34.557708	2023-08-28 02:21:34.557708
93	84	4	2023-08-28 02:21:34.955886	2023-08-28 02:21:34.955886
94	85	4	2023-08-28 02:21:35.360365	2023-08-28 02:21:35.360365
95	86	4	2023-08-28 02:21:35.752615	2023-08-28 02:21:35.752615
96	87	4	2023-08-28 02:21:36.197248	2023-08-28 02:21:36.197248
97	88	4	2023-08-28 02:21:36.587522	2023-08-28 02:21:36.587522
98	89	4	2023-08-28 02:21:36.981109	2023-08-28 02:21:36.981109
99	90	4	2023-08-28 02:21:37.365763	2023-08-28 02:21:37.365763
100	91	4	2023-08-28 02:21:37.749715	2023-08-28 02:21:37.749715
101	92	4	2023-08-28 02:21:38.137419	2023-08-28 02:21:38.137419
102	93	4	2023-08-28 02:21:38.524616	2023-08-28 02:21:38.524616
103	94	4	2023-08-28 02:21:38.918073	2023-08-28 02:21:38.918073
104	95	4	2023-08-28 02:21:39.316627	2023-08-28 02:21:39.316627
105	96	4	2023-08-28 02:21:39.70112	2023-08-28 02:21:39.70112
106	97	4	2023-08-28 02:21:40.088265	2023-08-28 02:21:40.088265
107	98	4	2023-08-28 02:21:40.477553	2023-08-28 02:21:40.477553
108	99	4	2023-08-28 02:21:40.864063	2023-08-28 02:21:40.864063
109	100	4	2023-08-28 02:21:41.252559	2023-08-28 02:21:41.252559
110	101	4	2023-08-28 02:21:41.644247	2023-08-28 02:21:41.644247
111	102	4	2023-08-28 02:21:42.027499	2023-08-28 02:21:42.027499
112	103	4	2023-08-28 02:21:42.415609	2023-08-28 02:21:42.415609
113	104	4	2023-08-28 02:21:42.801559	2023-08-28 02:21:42.801559
114	105	4	2023-08-28 02:21:43.188792	2023-08-28 02:21:43.188792
115	106	4	2023-08-28 02:21:43.582317	2023-08-28 02:21:43.582317
116	107	4	2023-08-28 02:21:43.974472	2023-08-28 02:21:43.974472
119	110	4	2023-08-28 02:21:45.135116	2023-08-28 02:21:45.135116
120	111	4	2023-08-28 02:21:45.530803	2023-08-28 02:21:45.530803
121	112	4	2023-08-28 02:21:45.925313	2023-08-28 02:21:45.925313
122	113	4	2023-08-28 02:21:46.317534	2023-08-28 02:21:46.317534
123	114	4	2023-08-28 02:21:46.708147	2023-08-28 02:21:46.708147
124	115	4	2023-08-28 02:21:47.092194	2023-08-28 02:21:47.092194
125	116	4	2023-08-28 02:21:47.512329	2023-08-28 02:21:47.512329
126	117	4	2023-08-28 02:21:47.896801	2023-08-28 02:21:47.896801
127	118	4	2023-08-28 02:21:48.28673	2023-08-28 02:21:48.28673
128	119	4	2023-08-28 02:21:48.677025	2023-08-28 02:21:48.677025
129	120	4	2023-08-28 02:21:49.06257	2023-08-28 02:21:49.06257
130	121	4	2023-08-28 02:21:49.451166	2023-08-28 02:21:49.451166
131	122	4	2023-08-28 02:21:49.844277	2023-08-28 02:21:49.844277
132	123	4	2023-08-28 02:21:50.22891	2023-08-28 02:21:50.22891
133	124	4	2023-08-28 02:21:50.622639	2023-08-28 02:21:50.622639
134	125	4	2023-08-28 02:21:51.017788	2023-08-28 02:21:51.017788
135	126	4	2023-08-28 02:21:51.408175	2023-08-28 02:21:51.408175
136	127	4	2023-08-28 02:21:51.795838	2023-08-28 02:21:51.795838
137	128	4	2023-08-28 02:21:52.181171	2023-08-28 02:21:52.181171
138	129	4	2023-08-28 02:21:52.569779	2023-08-28 02:21:52.569779
139	130	4	2023-08-28 02:21:52.955153	2023-08-28 02:21:52.955153
140	131	4	2023-08-28 02:21:53.342753	2023-08-28 02:21:53.342753
141	132	4	2023-08-28 02:21:53.732638	2023-08-28 02:21:53.732638
142	133	4	2023-08-28 02:21:54.119022	2023-08-28 02:21:54.119022
143	134	4	2023-08-28 02:21:54.509577	2023-08-28 02:21:54.509577
144	135	4	2023-08-28 02:21:54.897249	2023-08-28 02:21:54.897249
145	136	4	2023-08-28 02:21:55.285072	2023-08-28 02:21:55.285072
146	137	4	2023-08-28 02:21:55.679954	2023-08-28 02:21:55.679954
147	138	4	2023-08-28 02:21:56.07471	2023-08-28 02:21:56.07471
148	139	4	2023-08-28 02:21:56.45791	2023-08-28 02:21:56.45791
149	140	4	2023-08-28 02:21:56.847971	2023-08-28 02:21:56.847971
150	141	4	2023-08-28 02:21:57.231997	2023-08-28 02:21:57.231997
151	142	4	2023-08-28 02:21:57.617465	2023-08-28 02:21:57.617465
152	143	4	2023-08-28 02:21:58.001693	2023-08-28 02:21:58.001693
153	144	4	2023-08-28 02:21:58.385663	2023-08-28 02:21:58.385663
154	145	4	2023-08-28 02:21:58.77256	2023-08-28 02:21:58.77256
155	146	4	2023-08-28 02:21:59.158332	2023-08-28 02:21:59.158332
156	147	4	2023-08-28 02:21:59.543238	2023-08-28 02:21:59.543238
157	148	4	2023-08-28 02:21:59.931499	2023-08-28 02:21:59.931499
158	149	4	2023-08-28 02:22:00.316175	2023-08-28 02:22:00.316175
159	150	4	2023-08-28 02:22:00.728814	2023-08-28 02:22:00.728814
160	151	4	2023-08-28 02:22:01.126455	2023-08-28 02:22:01.126455
161	152	4	2023-08-28 02:22:01.526794	2023-08-28 02:22:01.526794
162	153	4	2023-08-28 02:22:01.929018	2023-08-28 02:22:01.929018
163	154	4	2023-08-28 02:22:02.328932	2023-08-28 02:22:02.328932
164	155	4	2023-08-28 02:22:02.730226	2023-08-28 02:22:02.730226
165	156	4	2023-08-28 02:22:03.132488	2023-08-28 02:22:03.132488
166	157	4	2023-08-28 02:22:03.539219	2023-08-28 02:22:03.539219
167	158	4	2023-08-28 02:22:03.973613	2023-08-28 02:22:03.973613
168	159	4	2023-08-28 02:22:04.385913	2023-08-28 02:22:04.385913
169	160	4	2023-08-28 02:22:04.799196	2023-08-28 02:22:04.799196
170	161	4	2023-08-28 02:22:05.233744	2023-08-28 02:22:05.233744
171	162	4	2023-08-28 02:22:05.654312	2023-08-28 02:22:05.654312
172	163	4	2023-08-28 02:22:06.070498	2023-08-28 02:22:06.070498
173	164	4	2023-08-28 02:22:06.478473	2023-08-28 02:22:06.478473
174	165	4	2023-08-28 02:22:06.917232	2023-08-28 02:22:06.917232
175	166	4	2023-08-28 02:22:07.326507	2023-08-28 02:22:07.326507
176	167	4	2023-08-28 02:22:07.734358	2023-08-28 02:22:07.734358
177	168	4	2023-08-28 02:22:08.139496	2023-08-28 02:22:08.139496
178	169	4	2023-08-28 02:22:08.544676	2023-08-28 02:22:08.544676
179	170	4	2023-08-28 02:22:08.989907	2023-08-28 02:22:08.989907
180	171	4	2023-08-28 02:22:09.392019	2023-08-28 02:22:09.392019
181	172	4	2023-08-28 02:22:09.802408	2023-08-28 02:22:09.802408
182	173	4	2023-08-28 02:22:10.193729	2023-08-28 02:22:10.193729
183	174	4	2023-08-28 02:22:10.582977	2023-08-28 02:22:10.582977
184	175	4	2023-08-28 02:22:10.98034	2023-08-28 02:22:10.98034
185	176	4	2023-08-28 02:22:11.376463	2023-08-28 02:22:11.376463
186	177	4	2023-08-28 02:22:11.765491	2023-08-28 02:22:11.765491
187	178	4	2023-08-28 02:22:12.15425	2023-08-28 02:22:12.15425
188	179	4	2023-08-28 02:22:12.542651	2023-08-28 02:22:12.542651
189	180	4	2023-08-28 02:22:12.92866	2023-08-28 02:22:12.92866
190	181	4	2023-08-28 02:22:13.325657	2023-08-28 02:22:13.325657
191	182	4	2023-08-28 02:22:13.713637	2023-08-28 02:22:13.713637
192	183	4	2023-08-28 02:22:14.102072	2023-08-28 02:22:14.102072
194	185	4	2023-08-28 02:22:14.910578	2023-08-28 02:22:14.910578
195	186	4	2023-08-28 02:22:15.300727	2023-08-28 02:22:15.300727
196	187	4	2023-08-28 02:22:15.695462	2023-08-28 02:22:15.695462
197	188	4	2023-08-28 02:22:16.094797	2023-08-28 02:22:16.094797
198	189	4	2023-08-28 02:22:16.486384	2023-08-28 02:22:16.486384
199	190	4	2023-08-28 02:22:16.876521	2023-08-28 02:22:16.876521
200	191	4	2023-08-28 02:22:17.266987	2023-08-28 02:22:17.266987
201	192	4	2023-08-28 02:22:17.65314	2023-08-28 02:22:17.65314
202	193	4	2023-08-28 02:22:18.036991	2023-08-28 02:22:18.036991
203	194	4	2023-08-28 02:22:18.468504	2023-08-28 02:22:18.468504
204	195	4	2023-08-28 02:22:18.867547	2023-08-28 02:22:18.867547
205	196	4	2023-08-28 02:22:19.251734	2023-08-28 02:22:19.251734
206	197	4	2023-08-28 02:22:19.647415	2023-08-28 02:22:19.647415
207	198	4	2023-08-28 02:22:20.040728	2023-08-28 02:22:20.040728
208	199	4	2023-08-28 02:22:20.42978	2023-08-28 02:22:20.42978
209	200	4	2023-08-28 02:22:20.820698	2023-08-28 02:22:20.820698
210	201	4	2023-08-28 02:22:21.215903	2023-08-28 02:22:21.215903
211	202	4	2023-08-28 02:22:21.608088	2023-08-28 02:22:21.608088
212	203	4	2023-08-28 02:22:22.001875	2023-08-28 02:22:22.001875
213	204	4	2023-08-28 02:22:22.40454	2023-08-28 02:22:22.40454
214	205	4	2023-08-28 02:22:22.811343	2023-08-28 02:22:22.811343
215	206	4	2023-08-28 02:22:23.210758	2023-08-28 02:22:23.210758
216	207	4	2023-08-28 02:22:23.618695	2023-08-28 02:22:23.618695
217	208	4	2023-08-28 02:22:24.004344	2023-08-28 02:22:24.004344
218	209	4	2023-08-28 02:22:24.3932	2023-08-28 02:22:24.3932
219	210	4	2023-08-28 02:22:24.78543	2023-08-28 02:22:24.78543
220	211	4	2023-08-28 02:22:25.174952	2023-08-28 02:22:25.174952
221	212	4	2023-08-28 02:22:25.574421	2023-08-28 02:22:25.574421
222	213	4	2023-08-28 02:22:25.975555	2023-08-28 02:22:25.975555
223	214	4	2023-08-28 02:22:26.364126	2023-08-28 02:22:26.364126
224	215	4	2023-08-28 02:22:26.758207	2023-08-28 02:22:26.758207
225	216	4	2023-08-28 02:22:27.153683	2023-08-28 02:22:27.153683
226	217	4	2023-08-28 02:22:27.552638	2023-08-28 02:22:27.552638
227	218	4	2023-08-28 02:22:27.972882	2023-08-28 02:22:27.972882
228	219	4	2023-08-28 02:22:28.35887	2023-08-28 02:22:28.35887
229	220	4	2023-08-28 02:22:28.751242	2023-08-28 02:22:28.751242
230	221	4	2023-08-28 02:22:29.142448	2023-08-28 02:22:29.142448
231	222	4	2023-08-28 02:22:29.529625	2023-08-28 02:22:29.529625
232	223	4	2023-08-28 02:22:29.922081	2023-08-28 02:22:29.922081
233	224	4	2023-08-28 02:22:30.310742	2023-08-28 02:22:30.310742
234	225	4	2023-08-28 02:22:30.695293	2023-08-28 02:22:30.695293
235	226	4	2023-08-28 02:22:31.087536	2023-08-28 02:22:31.087536
236	227	4	2023-08-28 02:22:31.472552	2023-08-28 02:22:31.472552
237	228	4	2023-08-28 02:22:31.86083	2023-08-28 02:22:31.86083
238	229	4	2023-08-28 02:22:32.245088	2023-08-28 02:22:32.245088
239	230	4	2023-08-28 02:22:32.62928	2023-08-28 02:22:32.62928
240	231	4	2023-08-28 02:22:33.019902	2023-08-28 02:22:33.019902
241	232	4	2023-08-28 02:22:33.412214	2023-08-28 02:22:33.412214
242	233	4	2023-08-28 02:22:33.798117	2023-08-28 02:22:33.798117
243	234	4	2023-08-28 02:22:34.189155	2023-08-28 02:22:34.189155
244	235	4	2023-08-28 02:22:34.577579	2023-08-28 02:22:34.577579
245	236	4	2023-08-28 02:22:34.972302	2023-08-28 02:22:34.972302
246	237	4	2023-08-28 02:22:35.357223	2023-08-28 02:22:35.357223
247	238	4	2023-08-28 02:22:35.748257	2023-08-28 02:22:35.748257
248	239	4	2023-08-28 02:22:36.145667	2023-08-28 02:22:36.145667
249	240	4	2023-08-28 02:22:36.534192	2023-08-28 02:22:36.534192
250	241	4	2023-08-28 02:22:36.923689	2023-08-28 02:22:36.923689
251	242	4	2023-08-28 02:22:37.315502	2023-08-28 02:22:37.315502
252	243	4	2023-08-28 02:22:37.703148	2023-08-28 02:22:37.703148
253	244	4	2023-08-28 02:22:38.101289	2023-08-28 02:22:38.101289
254	245	4	2023-08-28 02:22:38.488408	2023-08-28 02:22:38.488408
255	246	4	2023-08-28 02:22:38.875416	2023-08-28 02:22:38.875416
256	247	4	2023-08-28 02:22:39.263943	2023-08-28 02:22:39.263943
257	248	4	2023-08-28 02:22:39.650306	2023-08-28 02:22:39.650306
258	249	4	2023-08-28 02:22:40.034745	2023-08-28 02:22:40.034745
259	250	4	2023-08-28 02:22:40.431978	2023-08-28 02:22:40.431978
260	251	4	2023-08-28 02:22:40.823777	2023-08-28 02:22:40.823777
261	252	4	2023-08-28 02:22:41.240421	2023-08-28 02:22:41.240421
262	253	4	2023-08-28 02:22:41.642084	2023-08-28 02:22:41.642084
263	254	4	2023-08-28 02:22:42.027733	2023-08-28 02:22:42.027733
264	255	4	2023-08-28 02:22:42.416203	2023-08-28 02:22:42.416203
265	256	4	2023-08-28 02:22:42.778194	2023-08-28 02:22:42.778194
266	257	4	2023-08-28 02:22:43.169946	2023-08-28 02:22:43.169946
267	258	4	2023-08-28 02:22:43.560718	2023-08-28 02:22:43.560718
268	259	4	2023-08-28 02:22:43.946502	2023-08-28 02:22:43.946502
269	260	4	2023-08-28 02:22:44.340751	2023-08-28 02:22:44.340751
270	261	4	2023-08-28 02:22:44.731833	2023-08-28 02:22:44.731833
271	262	4	2023-08-28 02:22:45.120681	2023-08-28 02:22:45.120681
273	264	4	2023-08-28 02:22:45.920371	2023-08-28 02:22:45.920371
274	265	4	2023-08-28 02:22:46.334247	2023-08-28 02:22:46.334247
275	266	4	2023-08-28 02:22:46.723668	2023-08-28 02:22:46.723668
276	267	4	2023-08-28 02:22:47.114146	2023-08-28 02:22:47.114146
277	268	4	2023-08-28 02:22:47.504031	2023-08-28 02:22:47.504031
278	269	4	2023-08-28 02:22:47.898359	2023-08-28 02:22:47.898359
279	270	4	2023-08-28 02:22:48.286496	2023-08-28 02:22:48.286496
280	271	4	2023-08-28 02:22:48.67903	2023-08-28 02:22:48.67903
281	272	4	2023-08-28 02:22:49.066283	2023-08-28 02:22:49.066283
282	273	4	2023-08-28 02:22:49.466369	2023-08-28 02:22:49.466369
283	274	4	2023-08-28 02:22:49.87926	2023-08-28 02:22:49.87926
284	275	4	2023-08-28 02:22:50.266167	2023-08-28 02:22:50.266167
285	276	4	2023-08-28 02:22:50.729767	2023-08-28 02:22:50.729767
286	277	4	2023-08-28 02:22:51.15529	2023-08-28 02:22:51.15529
287	278	4	2023-08-28 02:22:51.554519	2023-08-28 02:22:51.554519
288	279	4	2023-08-28 02:22:51.940595	2023-08-28 02:22:51.940595
289	280	4	2023-08-28 02:22:52.330706	2023-08-28 02:22:52.330706
290	281	4	2023-08-28 02:22:52.726749	2023-08-28 02:22:52.726749
291	282	4	2023-08-28 02:22:53.115826	2023-08-28 02:22:53.115826
292	283	4	2023-08-28 02:22:53.510582	2023-08-28 02:22:53.510582
293	284	4	2023-08-28 02:22:53.903014	2023-08-28 02:22:53.903014
294	285	4	2023-08-28 02:22:54.294893	2023-08-28 02:22:54.294893
295	286	4	2023-08-28 02:22:54.720293	2023-08-28 02:22:54.720293
296	287	4	2023-08-28 02:22:55.106087	2023-08-28 02:22:55.106087
297	288	4	2023-08-28 02:22:55.49669	2023-08-28 02:22:55.49669
298	289	4	2023-08-28 02:22:55.89164	2023-08-28 02:22:55.89164
299	290	4	2023-08-28 02:22:56.282894	2023-08-28 02:22:56.282894
300	291	4	2023-08-28 02:22:56.674525	2023-08-28 02:22:56.674525
301	292	4	2023-08-28 02:22:57.061922	2023-08-28 02:22:57.061922
302	293	4	2023-08-28 02:22:57.446492	2023-08-28 02:22:57.446492
303	294	4	2023-08-28 02:22:57.840541	2023-08-28 02:22:57.840541
304	295	4	2023-08-28 02:22:58.226351	2023-08-28 02:22:58.226351
305	296	4	2023-08-28 02:22:58.616193	2023-08-28 02:22:58.616193
306	297	4	2023-08-28 02:22:59.007825	2023-08-28 02:22:59.007825
307	298	4	2023-08-28 02:22:59.393892	2023-08-28 02:22:59.393892
308	299	4	2023-08-28 02:22:59.780451	2023-08-28 02:22:59.780451
309	300	4	2023-08-28 02:23:00.167214	2023-08-28 02:23:00.167214
310	301	4	2023-08-28 02:23:00.551261	2023-08-28 02:23:00.551261
311	302	4	2023-08-28 02:23:00.949272	2023-08-28 02:23:00.949272
312	303	4	2023-08-28 02:23:01.335568	2023-08-28 02:23:01.335568
313	304	4	2023-08-28 02:23:01.729404	2023-08-28 02:23:01.729404
314	305	4	2023-08-28 02:23:02.133589	2023-08-28 02:23:02.133589
315	306	4	2023-08-28 02:23:02.537533	2023-08-28 02:23:02.537533
316	307	4	2023-08-28 02:23:02.941126	2023-08-28 02:23:02.941126
317	308	4	2023-08-28 02:23:03.346561	2023-08-28 02:23:03.346561
318	309	4	2023-08-28 02:23:03.746114	2023-08-28 02:23:03.746114
319	310	4	2023-08-28 02:23:04.161132	2023-08-28 02:23:04.161132
320	311	4	2023-08-28 02:23:04.5755	2023-08-28 02:23:04.5755
321	312	4	2023-08-28 02:23:05.009915	2023-08-28 02:23:05.009915
322	313	4	2023-08-28 02:23:05.422178	2023-08-28 02:23:05.422178
323	314	4	2023-08-28 02:23:05.849181	2023-08-28 02:23:05.849181
324	315	4	2023-08-28 02:23:06.268424	2023-08-28 02:23:06.268424
325	316	4	2023-08-28 02:23:06.681895	2023-08-28 02:23:06.681895
326	317	4	2023-08-28 02:23:07.091082	2023-08-28 02:23:07.091082
327	318	4	2023-08-28 02:23:07.498004	2023-08-28 02:23:07.498004
328	319	4	2023-08-28 02:23:07.93428	2023-08-28 02:23:07.93428
329	320	4	2023-08-28 02:23:08.35383	2023-08-28 02:23:08.35383
330	321	4	2023-08-28 02:23:08.760622	2023-08-28 02:23:08.760622
331	322	4	2023-08-28 02:23:09.183988	2023-08-28 02:23:09.183988
332	323	4	2023-08-28 02:23:09.590525	2023-08-28 02:23:09.590525
333	324	4	2023-08-28 02:23:09.993472	2023-08-28 02:23:09.993472
334	325	4	2023-08-28 02:23:10.403929	2023-08-28 02:23:10.403929
335	326	4	2023-08-28 02:23:10.790154	2023-08-28 02:23:10.790154
336	327	4	2023-08-28 02:23:11.18958	2023-08-28 02:23:11.18958
337	328	4	2023-08-28 02:23:11.606428	2023-08-28 02:23:11.606428
338	329	4	2023-08-28 02:23:12.033464	2023-08-28 02:23:12.033464
339	330	4	2023-08-28 02:23:12.506865	2023-08-28 02:23:12.506865
340	331	4	2023-08-28 02:23:12.914894	2023-08-28 02:23:12.914894
341	332	4	2023-08-28 02:23:13.342708	2023-08-28 02:23:13.342708
342	333	4	2023-08-28 02:23:13.734823	2023-08-28 02:23:13.734823
343	334	4	2023-08-28 02:23:14.119719	2023-08-28 02:23:14.119719
344	335	4	2023-08-28 02:23:14.509377	2023-08-28 02:23:14.509377
345	336	4	2023-08-28 02:23:14.923652	2023-08-28 02:23:14.923652
346	337	4	2023-08-28 02:23:15.328823	2023-08-28 02:23:15.328823
347	338	4	2023-08-28 02:23:15.728842	2023-08-28 02:23:15.728842
348	339	4	2023-08-28 02:23:16.133349	2023-08-28 02:23:16.133349
349	340	4	2023-08-28 02:23:16.538242	2023-08-28 02:23:16.538242
350	341	4	2023-08-28 02:23:16.940636	2023-08-28 02:23:16.940636
351	342	4	2023-08-28 02:23:17.329848	2023-08-28 02:23:17.329848
352	343	4	2023-08-28 02:23:17.719726	2023-08-28 02:23:17.719726
353	344	4	2023-08-28 02:23:18.109091	2023-08-28 02:23:18.109091
354	345	4	2023-08-28 02:23:18.508521	2023-08-28 02:23:18.508521
355	346	4	2023-08-28 02:23:18.894243	2023-08-28 02:23:18.894243
356	347	4	2023-08-28 02:23:19.282722	2023-08-28 02:23:19.282722
357	348	4	2023-08-28 02:23:19.673813	2023-08-28 02:23:19.673813
358	349	4	2023-08-28 02:23:20.063939	2023-08-28 02:23:20.063939
359	350	4	2023-08-28 02:23:20.448148	2023-08-28 02:23:20.448148
360	351	4	2023-08-28 02:23:20.836703	2023-08-28 02:23:20.836703
361	352	4	2023-08-28 02:23:21.261481	2023-08-28 02:23:21.261481
362	353	4	2023-08-28 02:23:21.658501	2023-08-28 02:23:21.658501
363	354	4	2023-08-28 02:23:22.052229	2023-08-28 02:23:22.052229
364	355	4	2023-08-28 02:23:22.441547	2023-08-28 02:23:22.441547
365	356	4	2023-08-28 02:23:22.835984	2023-08-28 02:23:22.835984
366	357	4	2023-08-28 02:23:23.231295	2023-08-28 02:23:23.231295
367	358	4	2023-08-28 02:23:23.667247	2023-08-28 02:23:23.667247
368	359	4	2023-08-28 02:23:24.096416	2023-08-28 02:23:24.096416
369	360	4	2023-08-28 02:23:24.485129	2023-08-28 02:23:24.485129
370	361	4	2023-08-28 02:23:24.884964	2023-08-28 02:23:24.884964
371	362	4	2023-08-28 02:23:25.292607	2023-08-28 02:23:25.292607
372	363	4	2023-08-28 02:23:25.687945	2023-08-28 02:23:25.687945
373	364	4	2023-08-28 02:23:26.091901	2023-08-28 02:23:26.091901
374	365	4	2023-08-28 02:23:26.481385	2023-08-28 02:23:26.481385
375	366	4	2023-08-28 02:23:26.887811	2023-08-28 02:23:26.887811
376	367	4	2023-08-28 02:23:27.278153	2023-08-28 02:23:27.278153
377	368	4	2023-08-28 02:23:27.663197	2023-08-28 02:23:27.663197
379	370	4	2023-08-28 02:23:28.441163	2023-08-28 02:23:28.441163
380	371	4	2023-08-28 02:23:28.833926	2023-08-28 02:23:28.833926
381	372	4	2023-08-28 02:23:29.224008	2023-08-28 02:23:29.224008
382	373	4	2023-08-28 02:23:29.609369	2023-08-28 02:23:29.609369
383	374	4	2023-08-28 02:23:29.998751	2023-08-28 02:23:29.998751
384	375	4	2023-08-28 02:23:30.384769	2023-08-28 02:23:30.384769
385	376	4	2023-08-28 02:23:30.77397	2023-08-28 02:23:30.77397
387	378	4	2023-08-28 02:23:31.555869	2023-08-28 02:23:31.555869
388	379	4	2023-08-28 02:23:31.945234	2023-08-28 02:23:31.945234
389	380	4	2023-08-28 02:23:32.329604	2023-08-28 02:23:32.329604
390	381	4	2023-08-28 02:23:32.713921	2023-08-28 02:23:32.713921
391	382	4	2023-08-28 02:23:33.10283	2023-08-28 02:23:33.10283
392	383	4	2023-08-28 02:23:33.495878	2023-08-28 02:23:33.495878
393	384	4	2023-08-28 02:23:33.886265	2023-08-28 02:23:33.886265
394	385	4	2023-08-28 02:23:34.300615	2023-08-28 02:23:34.300615
395	386	4	2023-08-28 02:23:34.688104	2023-08-28 02:23:34.688104
396	387	4	2023-08-28 02:23:35.080309	2023-08-28 02:23:35.080309
397	388	4	2023-08-28 02:23:35.469573	2023-08-28 02:23:35.469573
398	389	4	2023-08-28 02:23:35.867368	2023-08-28 02:23:35.867368
399	390	4	2023-08-28 02:23:36.258575	2023-08-28 02:23:36.258575
400	391	4	2023-08-28 02:23:36.643217	2023-08-28 02:23:36.643217
401	392	4	2023-08-28 02:23:37.035273	2023-08-28 02:23:37.035273
402	393	4	2023-08-28 02:23:37.424663	2023-08-28 02:23:37.424663
403	394	4	2023-08-28 02:23:37.810717	2023-08-28 02:23:37.810717
404	395	4	2023-08-28 02:23:38.201369	2023-08-28 02:23:38.201369
405	396	4	2023-08-28 02:23:38.591723	2023-08-28 02:23:38.591723
406	397	4	2023-08-28 02:23:38.979126	2023-08-28 02:23:38.979126
407	398	4	2023-08-28 02:23:39.366473	2023-08-28 02:23:39.366473
408	399	4	2023-08-28 02:23:39.751744	2023-08-28 02:23:39.751744
409	400	4	2023-08-28 02:23:40.136443	2023-08-28 02:23:40.136443
410	401	4	2023-08-28 02:23:40.526151	2023-08-28 02:23:40.526151
412	403	4	2023-08-28 02:23:41.307988	2023-08-28 02:23:41.307988
413	404	4	2023-08-28 02:23:41.703521	2023-08-28 02:23:41.703521
414	405	4	2023-08-28 02:23:42.097842	2023-08-28 02:23:42.097842
415	406	4	2023-08-28 02:23:42.487511	2023-08-28 02:23:42.487511
416	407	4	2023-08-28 02:23:42.874947	2023-08-28 02:23:42.874947
417	408	4	2023-08-28 02:23:43.271918	2023-08-28 02:23:43.271918
418	409	4	2023-08-28 02:23:43.669904	2023-08-28 02:23:43.669904
419	410	4	2023-08-28 02:23:44.055858	2023-08-28 02:23:44.055858
420	411	4	2023-08-28 02:23:44.443193	2023-08-28 02:23:44.443193
421	412	4	2023-08-28 02:23:44.827721	2023-08-28 02:23:44.827721
422	413	4	2023-08-28 02:23:45.211784	2023-08-28 02:23:45.211784
423	414	4	2023-08-28 02:23:45.600985	2023-08-28 02:23:45.600985
424	415	4	2023-08-28 02:23:45.99342	2023-08-28 02:23:45.99342
425	416	4	2023-08-28 02:23:46.386191	2023-08-28 02:23:46.386191
426	417	4	2023-08-28 02:23:46.79776	2023-08-28 02:23:46.79776
427	418	4	2023-08-28 02:23:47.188566	2023-08-28 02:23:47.188566
428	419	4	2023-08-28 02:23:47.5777	2023-08-28 02:23:47.5777
429	420	4	2023-08-28 02:23:47.963498	2023-08-28 02:23:47.963498
430	421	4	2023-08-28 02:23:48.349618	2023-08-28 02:23:48.349618
431	422	4	2023-08-28 02:23:48.738395	2023-08-28 02:23:48.738395
432	423	4	2023-08-28 02:23:49.123566	2023-08-28 02:23:49.123566
433	424	4	2023-08-28 02:23:49.515443	2023-08-28 02:23:49.515443
434	425	4	2023-08-28 02:23:49.909143	2023-08-28 02:23:49.909143
435	426	4	2023-08-28 02:23:50.294484	2023-08-28 02:23:50.294484
436	427	4	2023-08-28 02:23:50.686214	2023-08-28 02:23:50.686214
437	428	4	2023-08-28 02:23:51.081982	2023-08-28 02:23:51.081982
438	429	4	2023-08-28 02:23:51.472185	2023-08-28 02:23:51.472185
439	430	4	2023-08-28 02:23:51.865943	2023-08-28 02:23:51.865943
440	431	4	2023-08-28 02:23:52.256258	2023-08-28 02:23:52.256258
441	432	4	2023-08-28 02:23:52.643105	2023-08-28 02:23:52.643105
442	433	4	2023-08-28 02:23:53.035686	2023-08-28 02:23:53.035686
443	434	4	2023-08-28 02:23:53.434786	2023-08-28 02:23:53.434786
444	435	4	2023-08-28 02:23:53.836558	2023-08-28 02:23:53.836558
445	436	4	2023-08-28 02:23:54.225267	2023-08-28 02:23:54.225267
446	437	4	2023-08-28 02:23:54.617744	2023-08-28 02:23:54.617744
447	438	4	2023-08-28 02:23:55.009465	2023-08-28 02:23:55.009465
448	439	4	2023-08-28 02:23:55.429346	2023-08-28 02:23:55.429346
449	440	4	2023-08-28 02:23:55.838008	2023-08-28 02:23:55.838008
450	441	4	2023-08-28 02:23:56.245776	2023-08-28 02:23:56.245776
451	442	4	2023-08-28 02:23:56.634991	2023-08-28 02:23:56.634991
452	443	4	2023-08-28 02:23:57.026589	2023-08-28 02:23:57.026589
453	444	4	2023-08-28 02:23:57.417921	2023-08-28 02:23:57.417921
454	445	4	2023-08-28 02:23:57.804852	2023-08-28 02:23:57.804852
455	446	4	2023-08-28 02:23:58.207188	2023-08-28 02:23:58.207188
456	447	4	2023-08-28 02:23:58.594895	2023-08-28 02:23:58.594895
457	448	4	2023-08-28 02:23:58.991498	2023-08-28 02:23:58.991498
458	449	4	2023-08-28 02:23:59.379031	2023-08-28 02:23:59.379031
459	450	4	2023-08-28 02:23:59.796188	2023-08-28 02:23:59.796188
460	451	4	2023-08-28 02:24:00.188464	2023-08-28 02:24:00.188464
461	452	4	2023-08-28 02:24:00.587609	2023-08-28 02:24:00.587609
462	453	4	2023-08-28 02:24:00.994064	2023-08-28 02:24:00.994064
463	454	4	2023-08-28 02:24:01.394125	2023-08-28 02:24:01.394125
464	455	4	2023-08-28 02:24:01.798282	2023-08-28 02:24:01.798282
465	456	4	2023-08-28 02:24:02.207811	2023-08-28 02:24:02.207811
466	457	4	2023-08-28 02:24:02.612474	2023-08-28 02:24:02.612474
467	458	4	2023-08-28 02:24:03.016653	2023-08-28 02:24:03.016653
468	459	4	2023-08-28 02:24:03.446123	2023-08-28 02:24:03.446123
469	460	4	2023-08-28 02:24:03.862685	2023-08-28 02:24:03.862685
470	461	4	2023-08-28 02:24:04.286478	2023-08-28 02:24:04.286478
471	462	4	2023-08-28 02:24:04.704378	2023-08-28 02:24:04.704378
472	463	4	2023-08-28 02:24:05.1259	2023-08-28 02:24:05.1259
473	464	4	2023-08-28 02:24:05.541271	2023-08-28 02:24:05.541271
474	465	4	2023-08-28 02:24:05.961447	2023-08-28 02:24:05.961447
475	466	4	2023-08-28 02:24:06.374212	2023-08-28 02:24:06.374212
476	467	4	2023-08-28 02:24:06.791752	2023-08-28 02:24:06.791752
477	468	4	2023-08-28 02:24:07.207545	2023-08-28 02:24:07.207545
478	469	4	2023-08-28 02:24:07.617786	2023-08-28 02:24:07.617786
479	470	4	2023-08-28 02:24:08.043166	2023-08-28 02:24:08.043166
480	471	4	2023-08-28 02:24:08.447801	2023-08-28 02:24:08.447801
481	472	4	2023-08-28 02:24:08.864591	2023-08-28 02:24:08.864591
482	473	4	2023-08-28 02:24:09.276382	2023-08-28 02:24:09.276382
483	474	4	2023-08-28 02:24:09.679656	2023-08-28 02:24:09.679656
484	475	4	2023-08-28 02:24:10.100245	2023-08-28 02:24:10.100245
485	476	4	2023-08-28 02:24:10.531378	2023-08-28 02:24:10.531378
486	477	4	2023-08-28 02:24:10.928214	2023-08-28 02:24:10.928214
487	478	4	2023-08-28 02:24:11.350175	2023-08-28 02:24:11.350175
488	479	4	2023-08-28 02:24:11.739595	2023-08-28 02:24:11.739595
489	480	4	2023-08-28 02:24:12.140737	2023-08-28 02:24:12.140737
490	481	4	2023-08-28 02:24:12.580592	2023-08-28 02:24:12.580592
491	482	4	2023-08-28 02:24:13.012395	2023-08-28 02:24:13.012395
492	483	4	2023-08-28 02:24:13.408889	2023-08-28 02:24:13.408889
493	484	4	2023-08-28 02:24:13.793923	2023-08-28 02:24:13.793923
494	485	4	2023-08-28 02:24:14.179453	2023-08-28 02:24:14.179453
495	486	4	2023-08-28 02:24:14.575558	2023-08-28 02:24:14.575558
496	487	4	2023-08-28 02:24:14.964352	2023-08-28 02:24:14.964352
497	488	4	2023-08-28 02:24:15.354884	2023-08-28 02:24:15.354884
498	489	4	2023-08-28 02:24:15.74607	2023-08-28 02:24:15.74607
499	490	4	2023-08-28 02:24:16.139442	2023-08-28 02:24:16.139442
500	491	4	2023-08-28 02:24:16.530776	2023-08-28 02:24:16.530776
501	492	4	2023-08-28 02:24:16.921643	2023-08-28 02:24:16.921643
502	493	4	2023-08-28 02:24:17.308986	2023-08-28 02:24:17.308986
503	494	4	2023-08-28 02:24:17.702739	2023-08-28 02:24:17.702739
504	495	4	2023-08-28 02:24:18.090667	2023-08-28 02:24:18.090667
505	496	4	2023-08-28 02:24:18.480685	2023-08-28 02:24:18.480685
506	497	4	2023-08-28 02:24:18.870769	2023-08-28 02:24:18.870769
507	498	4	2023-08-28 02:24:19.264752	2023-08-28 02:24:19.264752
508	499	4	2023-08-28 02:24:19.673547	2023-08-28 02:24:19.673547
509	500	4	2023-08-28 02:24:20.07314	2023-08-28 02:24:20.07314
510	501	4	2023-08-28 02:24:20.46268	2023-08-28 02:24:20.46268
511	502	4	2023-08-28 02:24:20.852414	2023-08-28 02:24:20.852414
512	503	4	2023-08-28 02:24:21.239659	2023-08-28 02:24:21.239659
513	504	4	2023-08-28 02:24:21.631482	2023-08-28 02:24:21.631482
514	505	4	2023-08-28 02:24:22.016627	2023-08-28 02:24:22.016627
515	506	4	2023-08-28 02:24:22.409796	2023-08-28 02:24:22.409796
516	507	4	2023-08-28 02:24:22.807066	2023-08-28 02:24:22.807066
517	508	4	2023-08-28 02:24:23.191641	2023-08-28 02:24:23.191641
518	509	4	2023-08-28 02:24:23.583247	2023-08-28 02:24:23.583247
519	510	4	2023-08-28 02:24:23.976636	2023-08-28 02:24:23.976636
520	511	4	2023-08-28 02:24:24.364844	2023-08-28 02:24:24.364844
521	512	4	2023-08-28 02:24:24.758882	2023-08-28 02:24:24.758882
522	513	4	2023-08-28 02:24:25.149864	2023-08-28 02:24:25.149864
523	514	4	2023-08-28 02:24:25.564402	2023-08-28 02:24:25.564402
524	515	4	2023-08-28 02:24:25.962107	2023-08-28 02:24:25.962107
525	516	4	2023-08-28 02:24:26.345522	2023-08-28 02:24:26.345522
526	517	4	2023-08-28 02:24:26.73707	2023-08-28 02:24:26.73707
527	518	4	2023-08-28 02:24:27.131352	2023-08-28 02:24:27.131352
528	519	4	2023-08-28 02:24:27.520108	2023-08-28 02:24:27.520108
529	520	4	2023-08-28 02:24:27.916873	2023-08-28 02:24:27.916873
530	521	4	2023-08-28 02:24:28.304043	2023-08-28 02:24:28.304043
531	522	4	2023-08-28 02:24:28.691174	2023-08-28 02:24:28.691174
532	523	4	2023-08-28 02:24:29.080142	2023-08-28 02:24:29.080142
533	524	4	2023-08-28 02:24:29.466588	2023-08-28 02:24:29.466588
534	525	4	2023-08-28 02:24:29.857551	2023-08-28 02:24:29.857551
535	526	4	2023-08-28 02:24:30.25472	2023-08-28 02:24:30.25472
536	527	4	2023-08-28 02:24:30.64537	2023-08-28 02:24:30.64537
537	528	4	2023-08-28 02:24:31.037006	2023-08-28 02:24:31.037006
539	530	4	2023-08-28 02:24:31.810291	2023-08-28 02:24:31.810291
540	531	4	2023-08-28 02:24:32.202401	2023-08-28 02:24:32.202401
541	532	4	2023-08-28 02:24:32.597072	2023-08-28 02:24:32.597072
542	533	4	2023-08-28 02:24:32.991343	2023-08-28 02:24:32.991343
543	534	4	2023-08-28 02:24:33.378711	2023-08-28 02:24:33.378711
544	535	4	2023-08-28 02:24:33.767923	2023-08-28 02:24:33.767923
545	536	4	2023-08-28 02:24:34.161287	2023-08-28 02:24:34.161287
546	537	4	2023-08-28 02:24:34.552989	2023-08-28 02:24:34.552989
547	538	4	2023-08-28 02:24:34.941144	2023-08-28 02:24:34.941144
548	539	4	2023-08-28 02:24:35.333332	2023-08-28 02:24:35.333332
549	540	4	2023-08-28 02:24:35.72234	2023-08-28 02:24:35.72234
550	541	4	2023-08-28 02:24:36.117076	2023-08-28 02:24:36.117076
551	542	4	2023-08-28 02:24:36.500419	2023-08-28 02:24:36.500419
552	543	4	2023-08-28 02:24:36.887455	2023-08-28 02:24:36.887455
553	544	4	2023-08-28 02:24:37.279314	2023-08-28 02:24:37.279314
554	545	4	2023-08-28 02:24:37.668097	2023-08-28 02:24:37.668097
555	546	4	2023-08-28 02:24:38.081618	2023-08-28 02:24:38.081618
556	547	4	2023-08-28 02:24:38.471405	2023-08-28 02:24:38.471405
557	548	4	2023-08-28 02:24:38.856914	2023-08-28 02:24:38.856914
558	549	4	2023-08-28 02:24:39.247146	2023-08-28 02:24:39.247146
559	550	4	2023-08-28 02:24:39.635236	2023-08-28 02:24:39.635236
560	551	4	2023-08-28 02:24:40.024065	2023-08-28 02:24:40.024065
561	552	4	2023-08-28 02:24:40.41546	2023-08-28 02:24:40.41546
562	553	4	2023-08-28 02:24:40.801755	2023-08-28 02:24:40.801755
563	554	4	2023-08-28 02:24:41.192802	2023-08-28 02:24:41.192802
564	555	4	2023-08-28 02:24:41.582484	2023-08-28 02:24:41.582484
565	556	4	2023-08-28 02:24:41.966967	2023-08-28 02:24:41.966967
566	557	4	2023-08-28 02:24:42.355208	2023-08-28 02:24:42.355208
567	558	4	2023-08-28 02:24:42.751998	2023-08-28 02:24:42.751998
568	559	4	2023-08-28 02:24:43.1417	2023-08-28 02:24:43.1417
569	560	4	2023-08-28 02:24:43.533414	2023-08-28 02:24:43.533414
570	561	4	2023-08-28 02:24:43.919969	2023-08-28 02:24:43.919969
571	562	4	2023-08-28 02:24:44.313735	2023-08-28 02:24:44.313735
573	564	4	2023-08-28 02:24:45.089365	2023-08-28 02:24:45.089365
574	565	4	2023-08-28 02:24:45.481289	2023-08-28 02:24:45.481289
575	566	4	2023-08-28 02:24:45.880654	2023-08-28 02:24:45.880654
576	567	4	2023-08-28 02:24:46.272082	2023-08-28 02:24:46.272082
577	568	4	2023-08-28 02:24:46.660239	2023-08-28 02:24:46.660239
578	569	4	2023-08-28 02:24:47.048706	2023-08-28 02:24:47.048706
579	570	4	2023-08-28 02:24:47.439725	2023-08-28 02:24:47.439725
580	571	4	2023-08-28 02:24:47.831063	2023-08-28 02:24:47.831063
581	572	4	2023-08-28 02:24:48.214597	2023-08-28 02:24:48.214597
582	573	4	2023-08-28 02:24:48.60706	2023-08-28 02:24:48.60706
583	574	4	2023-08-28 02:24:48.998279	2023-08-28 02:24:48.998279
584	575	4	2023-08-28 02:24:49.395085	2023-08-28 02:24:49.395085
585	576	4	2023-08-28 02:24:49.788791	2023-08-28 02:24:49.788791
586	577	4	2023-08-28 02:24:50.184126	2023-08-28 02:24:50.184126
587	578	4	2023-08-28 02:24:50.598696	2023-08-28 02:24:50.598696
588	579	4	2023-08-28 02:24:50.987686	2023-08-28 02:24:50.987686
589	580	4	2023-08-28 02:24:51.37748	2023-08-28 02:24:51.37748
590	581	4	2023-08-28 02:24:51.767008	2023-08-28 02:24:51.767008
591	582	4	2023-08-28 02:24:52.152638	2023-08-28 02:24:52.152638
592	583	4	2023-08-28 02:24:52.540566	2023-08-28 02:24:52.540566
593	584	4	2023-08-28 02:24:52.933029	2023-08-28 02:24:52.933029
594	585	4	2023-08-28 02:24:53.325263	2023-08-28 02:24:53.325263
595	586	4	2023-08-28 02:24:53.714008	2023-08-28 02:24:53.714008
596	587	4	2023-08-28 02:24:54.101964	2023-08-28 02:24:54.101964
597	588	4	2023-08-28 02:24:54.489599	2023-08-28 02:24:54.489599
598	589	4	2023-08-28 02:24:54.879858	2023-08-28 02:24:54.879858
599	590	4	2023-08-28 02:24:55.266688	2023-08-28 02:24:55.266688
600	591	4	2023-08-28 02:24:55.65506	2023-08-28 02:24:55.65506
601	592	4	2023-08-28 02:24:56.04874	2023-08-28 02:24:56.04874
602	593	4	2023-08-28 02:24:56.435426	2023-08-28 02:24:56.435426
603	594	4	2023-08-28 02:24:56.823258	2023-08-28 02:24:56.823258
604	595	4	2023-08-28 02:24:57.209385	2023-08-28 02:24:57.209385
606	597	4	2023-08-28 02:24:57.992205	2023-08-28 02:24:57.992205
607	598	4	2023-08-28 02:24:58.386676	2023-08-28 02:24:58.386676
608	599	4	2023-08-28 02:24:58.781257	2023-08-28 02:24:58.781257
609	600	4	2023-08-28 02:24:59.17167	2023-08-28 02:24:59.17167
610	601	4	2023-08-28 02:24:59.56114	2023-08-28 02:24:59.56114
611	602	4	2023-08-28 02:24:59.94853	2023-08-28 02:24:59.94853
612	603	4	2023-08-28 02:25:00.334849	2023-08-28 02:25:00.334849
613	604	4	2023-08-28 02:25:00.741978	2023-08-28 02:25:00.741978
614	605	4	2023-08-28 02:25:01.14656	2023-08-28 02:25:01.14656
615	606	4	2023-08-28 02:25:01.544494	2023-08-28 02:25:01.544494
616	607	4	2023-08-28 02:25:01.93238	2023-08-28 02:25:01.93238
617	608	4	2023-08-28 02:25:02.338794	2023-08-28 02:25:02.338794
618	609	4	2023-08-28 02:25:02.788518	2023-08-28 02:25:02.788518
619	610	4	2023-08-28 02:25:03.210167	2023-08-28 02:25:03.210167
620	529	6	2023-08-28 02:31:18.65637	2023-08-28 02:31:18.65637
621	529	1	2023-08-28 02:31:18.666084	2023-08-28 02:31:18.666084
622	108	5	2023-08-28 02:33:21.327657	2023-08-28 02:33:21.327657
623	108	1	2023-08-28 02:33:21.334584	2023-08-28 02:33:21.334584
624	263	5	2023-08-28 02:33:51.477739	2023-08-28 02:33:51.477739
625	263	1	2023-08-28 02:33:51.48487	2023-08-28 02:33:51.48487
626	377	5	2023-08-28 02:35:14.075697	2023-08-28 02:35:14.075697
627	377	1	2023-08-28 02:35:14.083645	2023-08-28 02:35:14.083645
632	369	5	2023-08-28 02:40:01.311157	2023-08-28 02:40:01.311157
633	369	1	2023-08-28 02:40:01.31895	2023-08-28 02:40:01.31895
634	109	5	2023-08-28 02:55:59.772346	2023-08-28 02:55:59.772346
635	109	1	2023-08-28 02:55:59.78319	2023-08-28 02:55:59.78319
651	613	4	2023-08-28 04:02:53.183213	2023-08-28 04:02:53.183213
652	402	7	2023-08-28 04:03:11.425268	2023-08-28 04:03:11.425268
653	611	4	2023-08-28 04:03:33.166601	2023-08-28 04:03:33.166601
654	612	4	2023-08-28 04:03:36.714709	2023-08-28 04:03:36.714709
655	596	3	2023-08-28 04:03:50.210893	2023-08-28 04:03:50.210893
656	563	3	2023-08-28 04:04:03.377011	2023-08-28 04:04:03.377011
657	184	3	2023-08-28 04:04:16.521027	2023-08-28 04:04:16.521027
658	42	3	2023-08-28 04:05:12.008773	2023-08-28 04:05:12.008773
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3540.dat                                                                                            0000600 0004000 0002000 00000004314 14473017126 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	admin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: false\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 05:00:53.672825	2023-06-29 01:52:02.822691
3	kepala divisi	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:49:11.793967	2023-06-29 15:00:51.917714
4	user	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-14 08:50:21.335092	2023-06-29 15:01:06.987889
7	manajer it	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: false\n:approval:\n  :manage: true\n:admin:\n  :manage: false\n	Role	2023-06-17 00:27:15.049665	2023-07-13 02:27:57.326337
5	teknisi	---\n:role:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:user:\n  :index: false\n  :create: false\n  :destroy: false\n  :update: false\n  :read: false\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-15 02:44:53.585416	2023-08-22 11:04:29.068194
1	superadmin	---\n:role:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:user:\n  :index: true\n  :create: true\n  :destroy: true\n  :update: true\n  :read: true\n:tiketnich:\n  :manage: true\n:teknisi:\n  :manage: true\n:approval:\n  :manage: false\n:admin:\n  :manage: true\n	Role	2023-06-12 03:56:11.291227	2023-08-22 11:08:51.863542
\.


                                                                                                                                                                                                                                                                                                                    3542.dat                                                                                            0000600 0004000 0002000 00000001666 14473017126 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20201108145313
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


                                                                          3558.dat                                                                                            0000600 0004000 0002000 00000013236 14473017126 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        184	mohamad.rinaldi@pt-sena.co.id	476	9468	sent	2023-08-24 14:01:29.126462	2023-08-24 14:01:39.972598
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
219	mohamad.rinaldi@pt-sena.co.id	510	3470	sent	2023-08-25 01:56:13.776851	2023-08-25 01:56:25.000592
220	fauzirinaldi76@gmail.com	510	5742	sent	2023-08-25 01:58:39.90217	2023-08-25 01:58:48.064354
221	mohamad.rinaldi@pt-sena.co.id	511	7505	sent	2023-08-25 02:12:42.105405	2023-08-25 02:12:48.78762
222	mohamad.rinaldi@pt-sena.co.id	512	2491	sent	2023-08-27 11:54:50.048948	2023-08-27 11:55:02.572936
223	mohamad.rinaldi@pt-sena.co.id	513	8855	sent	2023-08-27 11:57:43.718948	2023-08-27 11:57:53.58815
224	mohamad.rinaldi@pt-sena.co.id	514	6652	sent	2023-08-27 12:00:00.91959	2023-08-27 12:00:11.512375
225	fauzirinaldi76@gmail.com	514	7979	sent	2023-08-27 12:01:17.918488	2023-08-27 12:01:30.028931
226	mohamad.rinaldi@pt-sena.co.id	515	6031	sent	2023-08-27 12:03:32.520598	2023-08-27 12:03:40.607351
227	gantengkampret970@gmail.com	515	6028	sent	2023-08-27 12:04:33.183528	2023-08-27 12:04:43.426917
228	fauzirinaldi76@gmail.com	515	7395	sent	2023-08-27 12:05:14.139978	2023-08-27 12:05:26.49291
229	gantengkampret970@gmail.com	1	7907	sent	2023-08-28 03:06:22.230072	2023-08-28 03:06:31.765491
230	yaqub@pt-sena.co.id	1	9088	sent	2023-08-28 03:06:45.162183	2023-08-28 03:06:53.654708
231	gantengkampret970@gmail.com	2	3418	sent	2023-08-28 03:40:50.939288	2023-08-28 03:41:01.40197
232	fauzirinaldi76@gmail.com	2	9810	sent	2023-08-28 03:41:37.834828	2023-08-28 03:41:49.195428
233	gantengkampret970@gmail.com	3	4677	sent	2023-08-28 03:43:14.435253	2023-08-28 03:43:23.7083
234	mailertes2@gmail.com	3	4716	sent	2023-08-28 03:43:36.351605	2023-08-28 03:43:45.443912
235	fauzirinaldi76@gmail.com	3	2277	sent	2023-08-28 03:43:54.239432	2023-08-28 03:44:02.404334
\.


                                                                                                                                                                                                                                                                                                                                                                  3543.dat                                                                                            0000600 0004000 0002000 00000000300 14473017126 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        5	9	24	t	2023-06-15 03:21:26.71204	2023-06-15 03:21:26.71204
6	11	24	t	2023-06-15 03:21:42.73797	2023-06-16 10:43:13.811795
4	8	19	t	2023-06-15 03:20:09.939512	2023-07-13 04:32:53.634667
\.


                                                                                                                                                                                                                                                                                                                                3545.dat                                                                                            0000600 0004000 0002000 00000003065 14473017126 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22	8	Konfigurasi Printer	2023-06-15 03:19:37.898767	2023-06-24 16:33:01.495861	low	\N
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


                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3547.dat                                                                                            0000600 0004000 0002000 00000000005 14473017126 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3549.dat                                                                                            0000600 0004000 0002000 00000000415 14473017126 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	8	16	1	user.komersial	tes 2	2023-08-28 03:43:14.346165	2023-08-28 03:44:11.698152	5	open	\N	202308002	manajer.it	\N	\N	\N	f	\N	\N
2	8	22	1	user.komersial	tes 1	2023-08-28 03:40:50.725821	2023-08-28 03:42:14.244759	5	open	\N	202308001	manajer.it	\N	\N	\N	f	\N	\N
\.


                                                                                                                                                                                                                                                   3556.dat                                                                                            0000600 0004000 0002000 00000053715 14473017126 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        30	["Couldn't find Area with 'id'=90", "rinaldi"]	2023-08-07 08:45:13.386383	2023-08-07 08:45:13.386383	areas	detail
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


                                                   3551.dat                                                                                            0000600 0004000 0002000 00000322210 14473017126 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	superadmin@gmail.com	$2a$12$M9UwhD0hTpRpSl1PCyhv8.QM8PXovqvKGepvSOnAwijNN7m9RZqH.	\N	\N	\N	2023-06-12 03:50:56.423104	2023-06-12 03:56:37.898254	Superadmin	superadmin	t	\N	\N
577	vellandya@pt-sena.co.id	$2a$12$Ag8H0pKkrRmIZHkEqIhGHezKwK2tWIFvS3ExA6ruPRgRRvvUX1KaW	\N	\N	\N	2023-08-28 02:24:50.179592	2023-08-28 02:24:50.179592	\N	vellandya	t	\N	\N
5	admin.it@mail.com	$2a$12$4w4e85cf0t7BK5/QjYNBXuTVVA6xRwzjUYvYbX4GddnN/whHpGSIy	\N	\N	\N	2023-06-15 05:01:36.487802	2023-06-16 16:46:08.16215	Admin IT	admin.it	t	\N	\N
578	vessa.fauziyyah@pt-sena.co.id	$2a$12$E1khU8efrVNkQ0H6XIrnGuWy0U13O3s/ijfd7OukvR7DmbFl1QocS	\N	\N	\N	2023-08-28 02:24:50.594629	2023-08-28 02:24:50.594629	\N	vessa.fauziyyah	t	\N	\N
579	vidhopratama1@gmail.com	$2a$12$g/dMBV1IJlHSHZ353pR2.eGcsg9A19iYKTFZyiQWyN12IJzZwuehe	\N	\N	\N	2023-08-28 02:24:50.983523	2023-08-28 02:24:50.983523	\N	vidhopratama1	t	\N	\N
580	violetta@pt-sena.co.id	$2a$12$LsLI1ssufa7YZg.X0rmXZOrxqRo/YZausj.B.VWj8gY.k62Ote.Yi	\N	\N	\N	2023-08-28 02:24:51.373248	2023-08-28 02:24:51.373248	\N	violetta	t	\N	\N
581	vitus.denny@pt-sena.co.id	$2a$12$RtKNrz/YaxvPlsHfa.v9mOqsQuYf957z7Zk.hFC1DHJgP/9.GRdAC	\N	\N	\N	2023-08-28 02:24:51.762931	2023-08-28 02:24:51.762931	\N	vitus.denny	t	\N	\N
16	fauzan@email.com	$2a$12$artA0.L5RJNJmNHjh2QMyOtLLytkPq9o78z6VG1hcEIIjjBNd33ue	\N	\N	\N	2023-07-17 00:40:57.360451	2023-07-17 00:40:57.360451	fauzan	fauzan	t	\N	\N
582	wahid.habib@pt-sena.co.id	$2a$12$HbkirG/kJvYLggdBcz8SduRwAt6QEcEzjNnihqbxxkTIZrvCrPZ2G	\N	\N	\N	2023-08-28 02:24:52.148343	2023-08-28 02:24:52.148343	\N	wahid.habib	t	\N	\N
603	yosie.sulastri@pt-sena.co.id	$2a$12$nZjXw2THLIZmwYCogCFzU.W0sfCEE6wIUFXzz.aCcqViZqg06hI6m	\N	\N	\N	2023-08-28 02:25:00.330714	2023-08-28 02:25:00.330714	\N	yosie.sulastri	t	\N	\N
583	wahid.nurrohman@pt-sena.co.id	$2a$12$oaBMQVicgdldeA5utuCC2eoHWBPohLX5.AG7KFg2BlJn3J0z//5cy	\N	\N	\N	2023-08-28 02:24:52.536481	2023-08-28 02:24:52.536481	\N	wahid.nurrohman	t	\N	\N
584	wahyu.adi@pt-sena.co.id	$2a$12$L7Md.0/2aW4wBN7ijGmbeujYrBQ/P8d0zCix0P4GMahpjoSATP7TS	\N	\N	\N	2023-08-28 02:24:52.928641	2023-08-28 02:24:52.928641	\N	wahyu.adi	t	\N	\N
17	rinaldi@mail.com	$2a$12$adA5LMQVAS2KqK4X63oXsOR6qBk7fUMDrrQq8azdF9SVOJUqOIuo.	\N	\N	\N	2023-07-18 01:01:57.059227	2023-07-25 04:44:06.198759	rinaldi	rinaldi	t	\N	\N
585	wakhidrufi02@gmail.com	$2a$12$iiuYnn48rPn5Ju.KxtxDf.48iPCYHCDwOfXgSFVY.5E38nvUQ4/LK	\N	\N	\N	2023-08-28 02:24:53.321129	2023-08-28 02:24:53.321129	\N	wakhidrufi02	t	\N	\N
586	wanda.hidayah@pt-sena.co.id	$2a$12$eX97YOVxzqlOHnIyqf71B.mhOk1q.P2X7Dkj1uLlqE7oeDjpHugOS	\N	\N	\N	2023-08-28 02:24:53.709776	2023-08-28 02:24:53.709776	\N	wanda.hidayah	t	\N	\N
12	testingajah93@gmail.com	$2a$12$Ukw1U9huqLdoEFtWcPWlfuTZ7QfnKYO0V51PDvuhfSD7jE/LaaX56	\N	\N	\N	2023-06-24 16:38:19.214902	2023-08-23 02:40:20.995181	pm.komersial	pm.komersial	t	\N	\N
587	watikah.sururi@pt-sena.co.id	$2a$12$8GrF2zSv0c2s6oYa5HHAhuN./WiXZS.NxMbcwn7kNqzuGP8p9HSaC	\N	\N	\N	2023-08-28 02:24:54.097845	2023-08-28 02:24:54.097845	\N	watikah.sururi	t	\N	\N
604	yudi.fadhillah@pgn-solution.co.id	$2a$12$aW1rThHwNcgOjqpbih4sFe9zY2hrekbVbFJKXVVtiXiQR4TXtpw6m	\N	\N	\N	2023-08-28 02:25:00.737384	2023-08-28 02:25:00.737384	\N	yudi.fadhillah	t	\N	\N
588	wibowo.hariyanto@pt-sena.co.id	$2a$12$u4O3cwWynB1iv6Dja7SiCOFtlPbOhxnCgnPimO3GtwJGttvTmFF6m	\N	\N	\N	2023-08-28 02:24:54.485476	2023-08-28 02:24:54.485476	\N	wibowo.hariyanto	t	\N	\N
605	yusuf.ramdani@pt-sena.co.id	$2a$12$XOe8SnIjFfZDCGz4pP7rxOtrx1lOBxkrrbrmyW2EczzPwJoQJDEmy	\N	\N	\N	2023-08-28 02:25:01.140984	2023-08-28 02:25:01.140984	\N	yusuf.ramdani	t	\N	\N
589	anggara.wiedi@gmail.com	$2a$12$cJphFsTC2hjp8pKI94OJ.ONAEp.3JCHeiQR.Ad8fm9z72ifgKD66y	\N	\N	\N	2023-08-28 02:24:54.875727	2023-08-28 02:24:54.875727	\N	anggara.wiedi	t	\N	\N
606	yusuf.maulana@pt-sena.co.id	$2a$12$SfNwcU4n73qG0hbVrAHnLemdWx/NCQPWcQQ227dvXjEMMm3A7z4iu	\N	\N	\N	2023-08-28 02:25:01.540272	2023-08-28 02:25:01.540272	\N	yusuf.maulana	t	\N	\N
590	windi.anis@pt-sena.co.id	$2a$12$HRd34ZhZ7BATXB4mSObsReKkGCwkIgnAhlUpuNi5XgY.8tSO.jgGS	\N	\N	\N	2023-08-28 02:24:55.262568	2023-08-28 02:24:55.262568	\N	windi.anis	t	\N	\N
2	sdm@email.com	$2a$12$TL4cB/1FIQ47TPx48OvltOp/NwZMuJ9kzRFmHcSGU4H8AHumswIUq	\N	\N	\N	2023-06-14 08:54:37.998534	2023-08-28 00:49:24.240407	User SDM	user.sdm	t	\N	\N
6	komersial@email.com	$2a$12$Cw4YDbHBs9MNWP4riGgI1./y/zMfWv5upQo5nwVjub0zuFz9wIArS	\N	\N	\N	2023-06-15 06:31:48.075801	2023-07-24 02:50:30.025531	User Komersial	user.komersial	t	\N	\N
591	windy.ariani@pt-sena.co.id	$2a$12$d0Oj3v5yGdCMFHoXjnYyMu43hCQNqyFHsixxfRpo5/YTmX9n.WZu6	\N	\N	\N	2023-08-28 02:24:55.651026	2023-08-28 02:24:55.651026	\N	windy.ariani	t	\N	\N
18	user1@mail.com	$2a$12$SGA7woSNtmvIJMqO.94pXO/kACu8zQYfAxzrUa/3Z81Wml3UbpS7O	\N	\N	\N	2023-07-20 01:04:53.797825	2023-07-24 02:51:07.844106	user1	user1	t	\N	\N
592	winter.naufal@pt-sena.co.id	$2a$12$F.37Olzxq.09TcL98SSUp..d/Qlt/McI9s6dFXRndVQqQDC2DISbG	\N	\N	\N	2023-08-28 02:24:56.044602	2023-08-28 02:24:56.044602	\N	Winter.Naufal	t	\N	\N
593	wiryawan.priharnanto@pt-sena.co.id	$2a$12$37.cRUjJkbiWeu8AdTC37OeYy1z6QfngOhJndHJAJ.TKs31/ZCigG	\N	\N	\N	2023-08-28 02:24:56.431326	2023-08-28 02:24:56.431326	\N	Wiryawan.Priharnanto	t	\N	\N
607	zainal.anwar.epc@gmail.com	$2a$12$wSmXialy6B8z5UZB2ZzNZ.qnd/Nm9iM5YBLpY1fcoZqpFrRRvbmxy	\N	\N	\N	2023-08-28 02:25:01.927265	2023-08-28 02:25:01.927265	\N	zainal.anwar.epc	t	\N	\N
14	user.engineering@email.com	$2a$12$2CMe1FyxqylhtigjwugToemQrN2LOKPbbUlnACilgaUK4CK05Kpsu	\N	\N	\N	2023-06-26 01:35:30.274507	2023-08-23 01:39:02.46507	user.engineering	user.engineering	t	\N	\N
594	wisnu.aditya@pt-sena.co.id	$2a$12$HRMPmEfxhUyG4LIFI8Q6EOKQ54UZzn8cGKCAzKSkxiyvI2qPvMqYO	\N	\N	\N	2023-08-28 02:24:56.81921	2023-08-28 02:24:56.81921	\N	wisnu.aditya	t	\N	\N
608	zulfian.amri@pt-sena.co.id	$2a$12$iY6e2mdwYWvocucDaw2MfuIl4.ZJp3jdNNrfqkfzETbGO5dt2YdQq	\N	\N	\N	2023-08-28 02:25:02.333916	2023-08-28 02:25:02.333916	\N	zulfian.amri	t	\N	\N
595	yanita.adelia@pt-sena.co.id	$2a$12$mVPji/r8zVxyy40DaW2wlOEUPxF/o1PCpIaNPK7rdKUxggIObyqR.	\N	\N	\N	2023-08-28 02:24:57.20501	2023-08-28 02:24:57.20501	\N	yanita.adelia	t	\N	\N
597	yara.alpasra@pt-sena.co.id	$2a$12$0VqkIaDJ1AZPPWurTDjPj.zTDfDnvzemdkG8p/Do..5t8k8mf91gm	\N	\N	\N	2023-08-28 02:24:57.987765	2023-08-28 02:24:57.987765	\N	yara.alpasra	t	\N	\N
598	yoga.hefrindo@pt-sena.co.id	$2a$12$hW8sYA4D.8cc9iODR5S3x.YUyOysibvcQWAZtsFpwAxvlDJhTdJGC	\N	\N	\N	2023-08-28 02:24:58.382405	2023-08-28 02:24:58.382405	\N	yoga.hefrindo	t	\N	\N
599	yoga.hermawan@pt-sena.co.id	$2a$12$NQQ3y9kf6WIaqhxDUFopAuc.Xv/NttXyi9a.Dcuo7LiH97ktZ7.Eq	\N	\N	\N	2023-08-28 02:24:58.775847	2023-08-28 02:24:58.775847	\N	yoga.hermawan	t	\N	\N
600	yoga.tristiyana0703@gmail.com	$2a$12$89xEGm7gBrpDiEYT.IbsFuXk9YMV.ZEaxUfRZhD9q/nMpP1BctXmO	\N	\N	\N	2023-08-28 02:24:59.167407	2023-08-28 02:24:59.167407	\N	yoga.tristiyana0703	t	\N	\N
601	yogo.pramono@pt-sena.co.id	$2a$12$LoZiYAJywwTBUCUEqKyIduubLWSx10brG/j7.sUVqsJpP3CxuSVeq	\N	\N	\N	2023-08-28 02:24:59.556968	2023-08-28 02:24:59.556968	\N	yogo.pramono	t	\N	\N
602	yose.maruf@pt-sena.co.id	$2a$12$4w7qkb6SX9PaLrQbGtS7C.VgECIsAsoxuwhD0MdYvHBy98qHPL3oG	\N	\N	\N	2023-08-28 02:24:59.94432	2023-08-28 02:24:59.94432	\N	yose.maruf	t	\N	\N
609	dova.bogor13@gmail.com	$2a$12$zTPCMGp09UnRgoBDE9sc/.sF1h/O75vXoH4gxmMTUnSvvq/yDb9AO	\N	\N	\N	2023-08-28 02:25:02.782297	2023-08-28 02:25:02.782297	\N	dova.bogor13	t	\N	\N
610	zulkifli@pt-sena.co.id	$2a$12$4ISvYm91D470Ju/Vf7DlgOw5sROUA3VBPq9ZRNKld0HXpipnOhAFi	\N	\N	\N	2023-08-28 02:25:03.204736	2023-08-28 02:25:03.204736	\N	zulkifli	t	\N	\N
596	yaqub@pt-sena.co.id	$2a$12$aUKAX/ykPrit7CxhGkofHOopOPGTpc75Dy9hhk7dk4V8JvRZyz6Wi	\N	\N	\N	2023-08-28 02:24:57.593955	2023-08-28 03:14:23.177947		yaqub	t	\N	9088
19	rendra.ardinal@pt-sena.co.id	$2a$12$oTD8NkHKUXxheIrIrGb2yeyjriVQSckRSHpppSNFQ5GjvGCo52BQW	\N	\N	\N	2023-08-28 02:21:09.351232	2023-08-28 02:21:09.351232	\N	rendra.ardinal	t	\N	\N
20	fiky.fathoni@pt-sena.co.id	$2a$12$BeBfeqG34mbdMiHYVEJ4/OGtJ9iPV6VwjP0y.sM2DvtQGycapczsm	\N	\N	\N	2023-08-28 02:21:09.756863	2023-08-28 02:21:09.756863	\N	fiky.fathoni	t	\N	\N
21	aan.hani@pt-sena.co.id	$2a$12$UTTOlbkEQIHc./a63ZKb/.8kKgX9rO6APA6jBYI0TstziDYRYUV4e	\N	\N	\N	2023-08-28 02:21:10.160558	2023-08-28 02:21:10.160558	\N	aan.hani	t	\N	\N
22	aang.fatkhul@pt-sena.co.id	$2a$12$Vh0HqIa7La6JVoOiXSpVD.ZSLeHO7Nln0OIRs9oVN6RXa04pMhr62	\N	\N	\N	2023-08-28 02:21:10.545821	2023-08-28 02:21:10.545821	\N	aang.fatkhul	t	\N	\N
23	abdi.omali@pt-sena.co.id	$2a$12$CLjsp2GuvD6Vdqfw7VrlXu.ElP91PVYI/QN7bJqnTpAeMuRJfFkka	\N	\N	\N	2023-08-28 02:21:10.937929	2023-08-28 02:21:10.937929	\N	abdi.omali	t	\N	\N
24	ganiabdi80@gmail.com	$2a$12$1El9ZZVlb1CgQb068vvfaOqXH6afPUw1yPRLGerllFLVxAsd4IViC	\N	\N	\N	2023-08-28 02:21:11.33092	2023-08-28 02:21:11.33092	\N	ganiabdi80	t	\N	\N
25	alam.saputra@pt-sena.co.id	$2a$12$K1q6kH1Xr2RtsEiXrzio.e96uH8FzFp.2dP1l5AC1k6mvD9hBvzZy	\N	\N	\N	2023-08-28 02:21:11.725379	2023-08-28 02:21:11.725379	\N	alam.saputra	t	\N	\N
26	abu.khanifah@pt-sena.co.id	$2a$12$y/FalFySCVdvC/q2PoSsEu9A1dNWGw7J1p7lpX98mc/T2mYCVkA8u	\N	\N	\N	2023-08-28 02:21:12.112051	2023-08-28 02:21:12.112051	\N	abu.khanifah	t	\N	\N
27	achmad.11@pt-sena.co.id	$2a$12$Eig7hcgSiPfsXmRq6mK/muXG5BNGNoSBKswPpb3PfN1QS8M1zN/4y	\N	\N	\N	2023-08-28 02:21:12.5008	2023-08-28 02:21:12.5008	\N	achmad.11	t	\N	\N
28	achmadbaihaki231@gmail.com	$2a$12$F8NWnOOyUDIQCZl3m74mU.GNUWcYiFJqMq.GjmE9DjMNJVulA2xwG	\N	\N	\N	2023-08-28 02:21:12.89586	2023-08-28 02:21:12.89586	\N	achmadbaihaki231	t	\N	\N
29	achmad.khoharudin@pgn-solution.co.id	$2a$12$1IHK.OhugEkC2grCbIG6Bexm26OC32pZlam7wW45PQuwthyvZDLfi	\N	\N	\N	2023-08-28 02:21:13.291399	2023-08-28 02:21:13.291399	\N	achmad.khoharudin	t	\N	\N
30	solikhan.arif@pt-sena.co.id	$2a$12$9C6TtsSUPLNZ46bw3iCAX.aa/s8fR3dYNvBjn5/Wjatv8C78oC4Vm	\N	\N	\N	2023-08-28 02:21:13.677141	2023-08-28 02:21:13.677141	\N	solikhan.arif	t	\N	\N
31	achmad.ilyasa@pt-sena.co.id	$2a$12$KEf2nPh0434uhRl/OvPsd.93dXRmelF6zGlsxqFkKzA7xiYfjabtq	\N	\N	\N	2023-08-28 02:21:14.061203	2023-08-28 02:21:14.061203	\N	achmad.ilyasa	t	\N	\N
32	boeztamie@gmail.com	$2a$12$qoKfipQ3p9FgTDErXY/VdeYN0jbPXPqIV.3z26zP2cifDn./.pDqu	\N	\N	\N	2023-08-28 02:21:14.453753	2023-08-28 02:21:14.453753	\N	boeztamie	t	\N	\N
33	ade.fajri@pt-sena.co.id	$2a$12$nI5kmoFxrThvS7A/WRv.O.7AY0y7Y53B6EjfyAuUc.LhvhLwkf97u	\N	\N	\N	2023-08-28 02:21:14.838755	2023-08-28 02:21:14.838755	\N	ade.fajri	t	\N	\N
34	adi_d3k3@yahoo.co.id	$2a$12$K66i1telHUYzJlYmt/Pxve8b6qjBAIkWQV/b9ytF.RkSlPZ6yYfG6	\N	\N	\N	2023-08-28 02:21:15.236894	2023-08-28 02:21:15.236894	\N	adi_d3k3	t	\N	\N
35	adibimas80@gmail.com	$2a$12$9UBOVqf.4lpqYOXWvzmlduWSL7ZXiaAdpneAqpjjPWtmlsz8PUesC	\N	\N	\N	2023-08-28 02:21:15.64022	2023-08-28 02:21:15.64022	\N	adibimas80	t	\N	\N
36	aditadeva04@gmail.com	$2a$12$WPFv7ag7Z/2La9I10t6i3e0wG708MpxJGgdoEnsxhtSiE00oe/TkC	\N	\N	\N	2023-08-28 02:21:16.036963	2023-08-28 02:21:16.036963	\N	aditadeva04	t	\N	\N
37	adriyat.maulana@pt-sena.co.id	$2a$12$g0LOGr9rEsO39afZHjIisOiQw6XicmD1xTjysG1g/Z81lppvjQZ5y	\N	\N	\N	2023-08-28 02:21:16.434072	2023-08-28 02:21:16.434072	\N	adriyat.maulana	t	\N	\N
38	adryan.suseno@pt-sena.co.id	$2a$12$AIj02/MLUyOnCfLtLE4C9e7Zm4LhNsnSI7SXl4G7kE6O0N8xxOoeW	\N	\N	\N	2023-08-28 02:21:16.834711	2023-08-28 02:21:16.834711	\N	adryan.suseno	t	\N	\N
39	afifahhfaradhila@gmail.com	$2a$12$4toKfuht3dOINhlcErc/weKfrCy8/Ccv7.ReTMg.khFe0B/PcX4b6	\N	\N	\N	2023-08-28 02:21:17.220853	2023-08-28 02:21:17.220853	\N	afifahhfaradhila	t	\N	\N
40	afriandi@pt-sena.co.id	$2a$12$QAppdThutVZwU24Kyi/Z0OPJtpshnZjx9ik18kSXLSmrbE8fvd8Fi	\N	\N	\N	2023-08-28 02:21:17.60961	2023-08-28 02:21:17.60961	\N	afriandi	t	\N	\N
41	agri.kuswandani@pt-sena.co.id	$2a$12$BJXPhS1ZFNOqxSEfoZ59c.wGrQAewGQBbr/VP8eSb./YoG0Fk0mv2	\N	\N	\N	2023-08-28 02:21:17.99757	2023-08-28 02:21:17.99757	\N	agri.kuswandani	t	\N	\N
43	agung.nugraha@pt-sena.co.id	$2a$12$ymA4M0qxY4.vcKGWhJRdPOKUdT2ukoAw/DHA9qqrOdAuXrRIgkPsi	\N	\N	\N	2023-08-28 02:21:18.777888	2023-08-28 02:21:18.777888	\N	agung.nugraha	t	\N	\N
44	agung.kurniawan@pt-sena.co.id	$2a$12$/.tAmn6q1zhUosqUq0EqveCCbV5NXGfXizndnBdksNu49nxvmom8y	\N	\N	\N	2023-08-28 02:21:19.175999	2023-08-28 02:21:19.175999	\N	agung.kurniawan	t	\N	\N
45	agung.bharoto@pt-sena.co.id	$2a$12$3RrLLDap0b4OA.vg5cndL.aZBO0v1E2FGG0Cf3Jv4V0LbMqzX.SEC	\N	\N	\N	2023-08-28 02:21:19.569447	2023-08-28 02:21:19.569447	\N	agung.bharoto	t	\N	\N
46	agus_suwarso@yahoo.co.id	$2a$12$5OHRydjL2vwP9ICCo8kqieQ8k4XK2UyDB0Qo3YmrmgfWvlrEVW/WW	\N	\N	\N	2023-08-28 02:21:19.999095	2023-08-28 02:21:19.999095	\N	agus_suwarso	t	\N	\N
47	agus.irwanto@pt-sena.co.id	$2a$12$yan/87XgJrGKLxb9TD8r.ev/IabNKLkMuGNWuMMkC9pZVyrBZrMQ.	\N	\N	\N	2023-08-28 02:21:20.399673	2023-08-28 02:21:20.399673	\N	agus.irwanto	t	\N	\N
48	agus.pratama@pt-sena.co.id	$2a$12$R5mCI/OqmH6B0/OwAjxre.dLt.HHXAXWPnz3R.xbUio/U8ILjYyi2	\N	\N	\N	2023-08-28 02:21:20.785685	2023-08-28 02:21:20.785685	\N	agus.pratama	t	\N	\N
49	ags.rhy@gmail.com	$2a$12$n9bhZ/jURWMLmrL9GWo/IeK4R84NbGBWCgrai6yEFIhb3TK3BiKSu	\N	\N	\N	2023-08-28 02:21:21.172254	2023-08-28 02:21:21.172254	\N	ags.rhy	t	\N	\N
50	agus.yudhatmoko@pt-sena.co.id	$2a$12$KT6/Tvp.4p4J7Tou6qyYc.P7hYCUg4whfStJgGYz2GqTRi8wGFeEO	\N	\N	\N	2023-08-28 02:21:21.564963	2023-08-28 02:21:21.564963	\N	agus.yudhatmoko	t	\N	\N
51	aguskurniawan9325@gmail.com	$2a$12$m6Sl50veRMX/yB10UeXNCOH3bGJ6B7L57gfVRasqxoGlKTh7usedy	\N	\N	\N	2023-08-28 02:21:21.963068	2023-08-28 02:21:21.963068	\N	aguskurniawan9325	t	\N	\N
52	leo.kapmas@pt-sena.co.id	$2a$12$WAI/D.Z2gvyeehJynbE0y.bEV6o8TXAQds92ITZAWz4vVwVGrrIiq	\N	\N	\N	2023-08-28 02:21:22.352893	2023-08-28 02:21:22.352893	\N	leo.kapmas	t	\N	\N
53	ahmad.rifai@pt-sena.co.id	$2a$12$UFKCKCySvC4NQob8oeyWLeQQSAfPJKjvuURKX/GvLq0LFgv/sMSiG	\N	\N	\N	2023-08-28 02:21:22.744162	2023-08-28 02:21:22.744162	\N	ahmad.rifai	t	\N	\N
54	aa.arfani@gmail.com	$2a$12$9GjIAgYACR3BmgfQ1FKkmeSeBJ9GsVCqA2CnZWQQQnnlCi0qSaXQS	\N	\N	\N	2023-08-28 02:21:23.128876	2023-08-28 02:21:23.128876	\N	aa.arfani	t	\N	\N
55	ahmad@pt-sena.co.id	$2a$12$WXpJHUILXWThrhUn7IMKz..8uxhfHR.FH67OsPp4W/kmcd9yq6yCK	\N	\N	\N	2023-08-28 02:21:23.52176	2023-08-28 02:21:23.52176	\N	ahmad	t	\N	\N
56	ahmad.kafin@pt-sena.co.id	$2a$12$LCab/0w024IejDs1NVWLaOLcGNbU5yV2EmtN1BdgCSLX861pfZs9q	\N	\N	\N	2023-08-28 02:21:23.907307	2023-08-28 02:21:23.907307	\N	ahmad.kafin	t	\N	\N
57	ahmad.syukri@pt-sena.co.id	$2a$12$lOITR1KT1u2f0SuuPRjHY.DE03OI3i5hniNwDwUzXqqStyOXLeFu.	\N	\N	\N	2023-08-28 02:21:24.292096	2023-08-28 02:21:24.292096	\N	ahmad.syukri	t	\N	\N
58	zainzezen10533@gmail.com	$2a$12$7hNjS6DVW1bamPpeBhe05e/Ct8Nuj3MGyjfAppcf41hVSKRSvwOOO	\N	\N	\N	2023-08-28 02:21:24.681684	2023-08-28 02:21:24.681684	\N	zainzezen10533	t	\N	\N
59	ahmadjaya.adiguna@pt-sena.co.id	$2a$12$LSeXwygTJpPCzcw9e5GOsOIVhuB7aP0mewrA6EB1MfASN2aEa8d8m	\N	\N	\N	2023-08-28 02:21:25.069806	2023-08-28 02:21:25.069806	\N	ahmadjaya.adiguna	t	\N	\N
60	naufal.zahron@pt-sena.co.id	$2a$12$HPbc/9OK840xkbKNunv/4eWWAkgT4X/TTtQO.JKN4p8ibrNfXMQDa	\N	\N	\N	2023-08-28 02:21:25.516631	2023-08-28 02:21:25.516631	\N	naufal.zahron	t	\N	\N
61	aishwaf0808@gmail.com	$2a$12$tV7PSE/uBchQOJBWFxxYS.ANGgX0pQ2I1PFama7HHc3jbF1s8fS12	\N	\N	\N	2023-08-28 02:21:25.907811	2023-08-28 02:21:25.907811	\N	aishwaf0808	t	\N	\N
62	akhmad.rizal@pt-sena.co.id	$2a$12$glZ0f1c/Nu5CqOeiKYrSAe8iH1CM8w1MfxMnC2LVwqrmthi.oiwfu	\N	\N	\N	2023-08-28 02:21:26.295472	2023-08-28 02:21:26.295472	\N	akhmad.rizal	t	\N	\N
63	akhmad.hata@pt-sena.co.id	$2a$12$GKtOphcg4J1kiSsYPWLW5uwzk785eGdY.Zlc4OqMkfLzK9K0i2dea	\N	\N	\N	2023-08-28 02:21:26.684136	2023-08-28 02:21:26.684136	\N	akhmad.hata	t	\N	\N
64	akhmad.widhayaka@pt-sena.co.id	$2a$12$lmFbQMhVjWFNkCRvJ95FbumxddWtO5i21vNxzWhCMOeWv7GXuRKWW	\N	\N	\N	2023-08-28 02:21:27.06854	2023-08-28 02:21:27.06854	\N	akhmad.widhayaka	t	\N	\N
65	akhsin.nasrudin@pgn-solution.co.id	$2a$12$VcxP3rWqMD9xnYHt/msp2OAFMeBT.ntZbw9O141EnK/4oete8ieLO	\N	\N	\N	2023-08-28 02:21:27.453744	2023-08-28 02:21:27.453744	\N	akhsin.nasrudin	t	\N	\N
42	agung@pt-sena.co.id	$2a$12$PSvMXT7NDMWLXr3.5SnnjeyuUEMEecCW458dZ8fiOwcPRbP731Mby	\N	\N	\N	2023-08-28 02:21:18.38518	2023-08-28 02:37:46.73564		agung	t	\N	\N
66	aldemart.smuchtar@pt-sena.co.id	$2a$12$zePJ5upZAA.qZjk2WP4.GORlaXV2thyvh/gT6LrHo7Y.40L0RcQqu	\N	\N	\N	2023-08-28 02:21:27.851662	2023-08-28 02:21:27.851662	\N	aldemart.smuchtar	t	\N	\N
67	aldi.fazlan@pt-sena.co.id	$2a$12$KSRwl8y0HP5txQTgdQjjF.oo1yzF5fuxQ2gKuDveVHSCdba0p0nfq	\N	\N	\N	2023-08-28 02:21:28.241887	2023-08-28 02:21:28.241887	\N	aldi.fazlan	t	\N	\N
68	aldilamuhammad8@gmail.com	$2a$12$hpZSDsnl8KLIoIQ6g3TzDukKCdr/lAyGMUrFl/b8wDqRAsMUEA0kS	\N	\N	\N	2023-08-28 02:21:28.631078	2023-08-28 02:21:28.631078	\N	aldilamuhammad8	t	\N	\N
69	aldoriskiyanaputra@gmail.com	$2a$12$6tDN3QozpL3jBpK7Sx2hRu5V9pSZP42Gpw3tjtl8prIxX9cgmK4fG	\N	\N	\N	2023-08-28 02:21:29.031396	2023-08-28 02:21:29.031396	\N	aldoriskiyanaputra	t	\N	\N
70	alfian.darmawan@pt-sena.co.id	$2a$12$rhlBJjU8XaICQgRiTjMfGOIizBdagy.lcbU7SptZZJtOrFBW0gFia	\N	\N	\N	2023-08-28 02:21:29.422166	2023-08-28 02:21:29.422166	\N	alfian.darmawan	t	\N	\N
71	alfian.hadi@pgn-solution.co.id	$2a$12$YzLZka8ogQKFTIqCbsAjHeCuOqHbLsdRDnzKPp/V50y58DOnq4K4q	\N	\N	\N	2023-08-28 02:21:29.820291	2023-08-28 02:21:29.820291	\N	alfian.hadi	t	\N	\N
72	alfianfuady23@gmail.com	$2a$12$7S.yUtEDYm9xMBUPFAZJx.CjD8iDWLWadkX6n7fl1gqB.80VYBmte	\N	\N	\N	2023-08-28 02:21:30.212389	2023-08-28 02:21:30.212389	\N	alfianfuady23	t	\N	\N
73	alfindra@pt-sena.co.id	$2a$12$fvV6desKS9Qggr7BMfKLwe6AzBMYD.AXMQv5d947SoYeEoGHpDM7e	\N	\N	\N	2023-08-28 02:21:30.598731	2023-08-28 02:21:30.598731	\N	alfindra	t	\N	\N
74	alfira.chuswardani@pt-sena.co.id	$2a$12$fn5ICYyRNcP23ib4VS58UuP4ZsWUlFDGl8m842.ED1qlaTZIoXIr.	\N	\N	\N	2023-08-28 02:21:30.986497	2023-08-28 02:21:30.986497	\N	alfira.chuswardani	t	\N	\N
75	ali.nurdin@pt-sena.co.id	$2a$12$SORdsT/8B1B/6htgzshOEOXx47cV6ElIpdnNP6Ks5Zq/341leDf92	\N	\N	\N	2023-08-28 02:21:31.370091	2023-08-28 02:21:31.370091	\N	ali.nurdin	t	\N	\N
76	alvin.habara@pt-sena.co.id	$2a$12$t0z8e5TMxvkmdbe/BLEiU.H44eK3uVrSQ53Op2GhQYFdgboSi77OW	\N	\N	\N	2023-08-28 02:21:31.76119	2023-08-28 02:21:31.76119	\N	alvin.habara	t	\N	\N
77	alvin.zeri@pt-sena.co.id	$2a$12$XPc5QwXLFDOPus5hDgL6HelzSRU6bwJfvJ1noh7SdKmKo12RfX8pK	\N	\N	\N	2023-08-28 02:21:32.148504	2023-08-28 02:21:32.148504	\N	alvin.zeri	t	\N	\N
78	alysa@pt-sena.co.id	$2a$12$sld9foYb4PMRSkyQsfrFquVhJBlry48zxuGSufeIZ8xtROQP.B.ny	\N	\N	\N	2023-08-28 02:21:32.532769	2023-08-28 02:21:32.532769	\N	alysa	t	\N	\N
79	amanda.faisa@pt-sena.co.id	$2a$12$G4QDEF7AZjUGwkSRa9qAdOMUi./Y70n2LIsfW6jubayDGFbLwCBi6	\N	\N	\N	2023-08-28 02:21:32.928001	2023-08-28 02:21:32.928001	\N	amanda.faisa	t	\N	\N
80	amelia.fadhila@pt-sena.co.id	$2a$12$vOCr1XTIAo83Fn4bypIzhOHN8VdyxSQ96yan9CrtFCASuRM04iY.e	\N	\N	\N	2023-08-28 02:21:33.326524	2023-08-28 02:21:33.326524	\N	amelia.fadhila	t	\N	\N
81	anang.priambodo@pt-sena.co.id	$2a$12$sZFCreJ5ffLYTnJvqd.kqe9bGt50YLAskBDuJwYB/yFp0FCySaM6i	\N	\N	\N	2023-08-28 02:21:33.73929	2023-08-28 02:21:33.73929	\N	anang.priambodo	t	\N	\N
82	andi.jafar@pt-sena.co.id	$2a$12$8ubPcCG9ETecvtJgXKrir.mgU/YWO7KCQpHutq5EHQtlnNjfr0tau	\N	\N	\N	2023-08-28 02:21:34.142004	2023-08-28 02:21:34.142004	\N	andi.jafar	t	\N	\N
83	andy.setiyawan@pt-sena.co.id	$2a$12$17XfUUGnxyZRgQPEckch3uXO822jYZ3iLNgp76Ad51gzOChozaxTC	\N	\N	\N	2023-08-28 02:21:34.552995	2023-08-28 02:21:34.552995	\N	andy.setiyawan	t	\N	\N
84	andi.frydo@pt-sena.co.id	$2a$12$/fuB/1LyVvmiPtnRcyOkx.jtHqNPab3QClD55RQPPDUEeYALirNoS	\N	\N	\N	2023-08-28 02:21:34.950162	2023-08-28 02:21:34.950162	\N	andi.frydo	t	\N	\N
85	andika.dwi@pt-sena.co.id	$2a$12$to1vPD12dJAdZLweZu3IXObDFEEHioWjOcWeHIpvgJzsHJ5.Wet2a	\N	\N	\N	2023-08-28 02:21:35.355613	2023-08-28 02:21:35.355613	\N	andika.dwi	t	\N	\N
86	andrean@pt-sena.co.id	$2a$12$haw48YYKbCOzYy.14c9UwOKigjgyzKaGAckzHtpA5oesGOMYKIW2u	\N	\N	\N	2023-08-28 02:21:35.748459	2023-08-28 02:21:35.748459	\N	andrean	t	\N	\N
87	andri.hermawan@pt-sena.co.id	$2a$12$kushWENERBG7UoZsOXPar.n7uz/OIJPgqLryHOKNt5LCANixqJtXe	\N	\N	\N	2023-08-28 02:21:36.191377	2023-08-28 02:21:36.191377	\N	andri.hermawan	t	\N	\N
88	andriassetyanto@yahoo.com	$2a$12$3lcbBiAzF7xi4ieEkH70O.vMgwQuSuJoJNOWLg/xGKHRC5zBXWHCa	\N	\N	\N	2023-08-28 02:21:36.582284	2023-08-28 02:21:36.582284	\N	andriassetyanto	t	\N	\N
89	andriyana.wiguna@pt-sena.co.id	$2a$12$vg3CcSXJBmhfoIV96144Z.9FZLN2aENyWrtqplDuWvqKYMptPbQZ6	\N	\N	\N	2023-08-28 02:21:36.976815	2023-08-28 02:21:36.976815	\N	andriyana.wiguna	t	\N	\N
90	anggitwiratama86@gmail.com	$2a$12$IWRA2xoFy4Pq2RLA.8fmwOS.8zg5fHSwLuf2/VRx0gaxxCQJ4Ptdy	\N	\N	\N	2023-08-28 02:21:37.361319	2023-08-28 02:21:37.361319	\N	anggitwiratama86	t	\N	\N
91	ani.puspitasi@pt-sena.co.id	$2a$12$EFkCFz5jgOfiqLj55dmO4umCf6IEgcoKC68b5ImoT1L5btHsnyA2G	\N	\N	\N	2023-08-28 02:21:37.745579	2023-08-28 02:21:37.745579	\N	ani.puspitasi	t	\N	\N
92	aa8091707@gmail.com	$2a$12$8gew9.ItA1C7vnxgHOeBv.wwjaolAhBTSEjIlD.QAhqLVp71EFz0m	\N	\N	\N	2023-08-28 02:21:38.13326	2023-08-28 02:21:38.13326	\N	aa8091707	t	\N	\N
93	anis@pt-sena.co.id	$2a$12$b3YnZEd./pvAsoxUvP.0uu/ubM1THzV0Xnk4CZyr0yrz.onB9BRlO	\N	\N	\N	2023-08-28 02:21:38.520578	2023-08-28 02:21:38.520578	\N	anis	t	\N	\N
94	annisa.shabriyanti@pt-sena.co.id	$2a$12$XyUX8SjkUp3lZIZ6sGuuhuj9hllI2vOZ9YJI3anwkQb63Kp5XM2dm	\N	\N	\N	2023-08-28 02:21:38.913807	2023-08-28 02:21:38.913807	\N	annisa.shabriyanti	t	\N	\N
95	anthon.ct@gmail.com	$2a$12$DApwwwSTutFspn1ptfIq1O9WJXS2GnX.9yQemoY8YMgnr/JwlsR8m	\N	\N	\N	2023-08-28 02:21:39.312363	2023-08-28 02:21:39.312363	\N	anthon.ct	t	\N	\N
96	anthony@pt-sena.co.id	$2a$12$CJPLxFSgYAZYeA1tK2KDJ.fcQvWqMbitOyFr1hgjSqPyvOjBe6AOC	\N	\N	\N	2023-08-28 02:21:39.696938	2023-08-28 02:21:39.696938	\N	anthony	t	\N	\N
97	anwar.rosadi@pt-sena.co.id	$2a$12$4.N/E.ShaN1D3PLjqrAZD.eDxlPPCqqNHNEUi1aAQM3mFt.35omJ2	\N	\N	\N	2023-08-28 02:21:40.084071	2023-08-28 02:21:40.084071	\N	anwar.rosadi	t	\N	\N
98	apang.nugroho@pt-sena.co.id	$2a$12$e68XC1HAlYolrE9n9tQ1XeFVSfc7bnCijlg1V1slF230uKiwyFvLi	\N	\N	\N	2023-08-28 02:21:40.47343	2023-08-28 02:21:40.47343	\N	apang.nugroho	t	\N	\N
99	aqil.syahrial@pt-sena.co.id	$2a$12$UHbu1XR8E9M8K1JviT/e5eJnjLNVBTX/Kj./bB8uXmDXWv0co/rVi	\N	\N	\N	2023-08-28 02:21:40.859759	2023-08-28 02:21:40.859759	\N	aqil.syahrial	t	\N	\N
100	arfa07tm@yahoo.co.id	$2a$12$P3FcqXPhfgSV0qHb2YgYE.0Jh8UDBL5BAeqBTeNPclvX4ViaCh3pi	\N	\N	\N	2023-08-28 02:21:41.248455	2023-08-28 02:21:41.248455	\N	arfa07tm	t	\N	\N
101	arepinlyuswa@gmail.com	$2a$12$s8RJhhw7TLqGcsXZ0swLy.xoeR1iY7kg89D6jklSs7IMZbIQDuAza	\N	\N	\N	2023-08-28 02:21:41.639517	2023-08-28 02:21:41.639517	\N	arepinlyuswa	t	\N	\N
102	ari.subiyanto@pt-sena.co.id	$2a$12$xRko.zYQK7A42v8mQiIAiOfIVHRTbgMZKDl5UXKE6BjY1UiBQlO.W	\N	\N	\N	2023-08-28 02:21:42.023303	2023-08-28 02:21:42.023303	\N	ari.subiyanto	t	\N	\N
103	aria.pabas@gmail.com	$2a$12$6LMDG5p43oXfNWfFvHahsuvALsBb4OFxPCjeDflZd9EbzVJ9ziDxW	\N	\N	\N	2023-08-28 02:21:42.411399	2023-08-28 02:21:42.411399	\N	aria.pabas	t	\N	\N
104	arie.masyaid@pt-sena.co.id	$2a$12$dE4EVSYKmJkBIvDeYPC8ZOPbY51f27mz2E6pesTSrC9H9MfYvIJyS	\N	\N	\N	2023-08-28 02:21:42.797356	2023-08-28 02:21:42.797356	\N	arie.masyaid	t	\N	\N
105	arief.firmansyah@pt-sena.co.id	$2a$12$Xz6vBm9mnKL4nt/ew5c/LeKxN741YEb9LuzaKdL7I4B56jN5lp866	\N	\N	\N	2023-08-28 02:21:43.184755	2023-08-28 02:21:43.184755	\N	arief.firmansyah	t	\N	\N
106	arief.syachrial@pt-sena.co.id	$2a$12$.sreitRwWZdbQIu87CNyjO1UuljsLhsx4rHMAXjD9SW27P8BvfflC	\N	\N	\N	2023-08-28 02:21:43.578124	2023-08-28 02:21:43.578124	\N	arief.syachrial	t	\N	\N
107	arifwirahadi@pgn-solution.co.id	$2a$12$LC7PTNUaSvZJZXc3lG1eouROGo5DT87H/VOlYqvbIRmNJ.C1KtBN.	\N	\N	\N	2023-08-28 02:21:43.970334	2023-08-28 02:21:43.970334	\N	arifwirahadi	t	\N	\N
110	arifinefdmn06@gmail.com	$2a$12$CKntYvTTpwpuKEEq.l1c7uO1f6fpsYrvWrrEsOiBvw0FTuu.sv1ju	\N	\N	\N	2023-08-28 02:21:45.131065	2023-08-28 02:21:45.131065	\N	arifinefdmn06	t	\N	\N
111	arimbi.sabatini@pt-sena.co.id	$2a$12$0alkAmm99tlD3gb1i/kp9eDkdkvPCeZDIqRjniK8uvJHIyFppkgea	\N	\N	\N	2023-08-28 02:21:45.526653	2023-08-28 02:21:45.526653	\N	arimbi.sabatini	t	\N	\N
112	ario.dwi@pt-sena.co.id	$2a$12$Ch606uh9ey/ktimYvCMwyuAoyOjdbkdGERJzzLoOHCsFqPEBt2m0i	\N	\N	\N	2023-08-28 02:21:45.920928	2023-08-28 02:21:45.920928	\N	ario.dwi	t	\N	\N
113	abudiono65@gmail.com	$2a$12$CnLMTASa0YOoOQDovK6Ct.HvIZE4gD2PKZO9iKVBX2xR1UFHsORgK	\N	\N	\N	2023-08-28 02:21:46.313274	2023-08-28 02:21:46.313274	\N	abudiono65	t	\N	\N
109	arief@pt-sena.co.id	$2a$12$6g5EZA2dynaz4JTXpwamhuvwNV5Q6CH6SWSbn5FhrwWCKZhrO8Jqy	\N	\N	\N	2023-08-28 02:21:44.747365	2023-08-28 02:55:59.799169		arief	t	\N	\N
114	aris.irajudin@pt-sena.co.id	$2a$12$FNAWu3FR78leEB7PrRqY8O9tkTBvmzkti94VJ5XAzSfH4TxVhgaGm	\N	\N	\N	2023-08-28 02:21:46.703499	2023-08-28 02:21:46.703499	\N	aris.irajudin	t	\N	\N
115	aris.dwi@pt-sena.co.id	$2a$12$oxyC54NLUk5qYK0zTb/jdOV/lH43UCbieE7KEe9.X3slteS2JcHYK	\N	\N	\N	2023-08-28 02:21:47.08812	2023-08-28 02:21:47.08812	\N	aris.dwi	t	\N	\N
116	ariszal.azizi@pt-sena.co.id	$2a$12$vr44jefAzlRKSKbhcLVsTOgpHmaVK0Ac2ESM8hI0YPP9FsQewOQDC	\N	\N	\N	2023-08-28 02:21:47.508248	2023-08-28 02:21:47.508248	\N	ariszal.azizi	t	\N	\N
117	ariyandi.yuda@pt-sena.co.id	$2a$12$4VUDwYRk9VqU6Kd48J.aAuPDlEEz8U5hRcIb6zQfbzMXd0phIV4jC	\N	\N	\N	2023-08-28 02:21:47.892708	2023-08-28 02:21:47.892708	\N	ariyandi.yuda	t	\N	\N
118	arlan.budiman@pt-sena.co.id	$2a$12$r/bUUf4Xs9380zUySKLbS.Z82/sig6oDq/tgN99Pz6PG9MjOJ64Ny	\N	\N	\N	2023-08-28 02:21:48.281768	2023-08-28 02:21:48.281768	\N	arlan.budiman	t	\N	\N
119	arry.rahmady@pgn-solution.co.id	$2a$12$6n1Cs87KgjfJ4QsMGbdy7.QFeIGb2wTFMyvIwOcSX8jHK7q0qMQvG	\N	\N	\N	2023-08-28 02:21:48.672246	2023-08-28 02:21:48.672246	\N	arry.rahmady	t	\N	\N
120	ramadhanyarvin@gmail.com	$2a$12$d0/.ppHZPzbnsls3saS5pOeOc5thIrxgpd0r4rStnAggTKi0eXUTy	\N	\N	\N	2023-08-28 02:21:49.058438	2023-08-28 02:21:49.058438	\N	ramadhanyarvin	t	\N	\N
121	aryarianto.0593@gmail.com	$2a$12$FLKTLLC4RU33jGVrdA/oMukWHyVWCH0eOZvmgH9bnbsU.EEZusHAa	\N	\N	\N	2023-08-28 02:21:49.447133	2023-08-28 02:21:49.447133	\N	aryarianto.0593	t	\N	\N
529	sheilla.rizky@pt-sena.co.id	$2a$12$JN7IWB0sesQOZSmoklse5egxw67JAw/VCYoc/z7P3DN28NKUJOylq	\N	\N	\N	2023-08-28 02:24:31.421158	2023-08-28 02:31:18.686816		sheilla.rizky	t	\N	\N
108	arif.budiono@pt-sena.co.id	$2a$12$gaZXHnEehPAndu5Pgoh/UuKmH.O6/qSFigYSa39yTfQRS7JOHQbVe	\N	\N	\N	2023-08-28 02:21:44.361874	2023-08-28 02:33:21.347611		arif.budiono	t	\N	\N
263	hersalimon.riki@pt-sena.co.id	$2a$12$s0phR7wVk0./Xz7HP/Ei7.YqgmsonjpBW3996elbSY.oMaOVQtH4C	\N	\N	\N	2023-08-28 02:22:45.514529	2023-08-28 02:33:51.498404		hersalimon.riki	t	\N	\N
377	muhamad.sahedi@pt--sena.co.id	$2a$12$cxlDRWAOJ9O3jluNlo0TL.JUuqUMtm4AaqOUHllWikC95AzsPtVhK	\N	\N	\N	2023-08-28 02:23:31.162316	2023-08-28 02:35:14.096631		muhamad.sahedi	t	\N	\N
184	doddy.rossi@pt-sena.co.id	$2a$12$E6stQ5qIlePBRpdlPE.CS.Lb.HIbHpJ3wmdZj1fU3aNjJWXze3PQC	\N	\N	\N	2023-08-28 02:22:14.518594	2023-08-28 02:38:03.454646		doddy.rossi	t	\N	\N
369	mohamad.rinaldi@pt-sena.co.id	$2a$12$tCDZwTA1BnLO2vGBlUyk6.Jg9pgTq80k48QLNzAuQ7XAxs8bonnt2	\N	\N	\N	2023-08-28 02:23:28.048114	2023-08-28 02:40:01.336281		mohamad.rinaldi	t	\N	\N
611	gantengkampret970@gmail.com	$2a$12$.aqJUB33OrDUGrnSI5iXi.8kmsNR3HsVqoKa.NrkGqJDRKZUGmn06	\N	\N	\N	2023-08-28 03:00:29.015551	2023-08-28 03:43:36.230467	Kadiv Komersial	kadiv.komersial	t	\N	\N
612	mailertes2@gmail.com	$2a$12$7drLmBZVdO0P1ye6wLiUWOGJHNcUq.F4aXMHPWShpiWM7iYFBiJLi	\N	\N	\N	2023-08-28 03:02:21.739532	2023-08-28 03:43:54.170481	Kadiv Engineering	kadiv.engineering	t	\N	\N
613	fauzirinaldi76@gmail.com	$2a$12$zQ8oDZNSgTQLvrvQ20YC6ueO/YN57BQKongu995MCnZJdRjywSIpi	\N	\N	\N	2023-08-28 03:03:30.345646	2023-08-28 03:44:11.639341	Manajer IT	manajer.it	t	\N	\N
122	aryo.nurwadi@pt-sena.co.id	$2a$12$h3hHov6S5bb9TNR1oERIQOq6vCc8tZRCIk29iCZH0Rxc6sObXlziO	\N	\N	\N	2023-08-28 02:21:49.839418	2023-08-28 02:21:49.839418	\N	aryo.nurwadi	t	\N	\N
123	asep.firmansyah@pt-sena.co.id	$2a$12$w7HyRLQ3Uh7DLFAviGXnxOnUutylf1XIvzIj3eNFOL8sOOXI9ycy6	\N	\N	\N	2023-08-28 02:21:50.224765	2023-08-28 02:21:50.224765	\N	asep.firmansyah	t	\N	\N
124	asmi.wahyuni@pt-sena.co.id	$2a$12$LKk21xD/Xfuvb3F4kbEmTepnwFUtKAY6fbmvAHqjzNQh69DPZj9iW	\N	\N	\N	2023-08-28 02:21:50.618518	2023-08-28 02:21:50.618518	\N	asmi.wahyuni	t	\N	\N
125	audi.anindya@pt-sena.co.id	$2a$12$qm2SMh.ftb/M6p.axRC4HudIowsJFyjvCjDgGbPFj2xWUM1WvZz.q	\N	\N	\N	2023-08-28 02:21:51.013451	2023-08-28 02:21:51.013451	\N	audi.anindya	t	\N	\N
126	avianto21@pt-sena.co.id	$2a$12$IW7UuFaDVxZuwvtbZzTwAunOQL9Fv8xagkVPvtqH8a9z4xrEufvu2	\N	\N	\N	2023-08-28 02:21:51.403637	2023-08-28 02:21:51.403637	\N	avianto21	t	\N	\N
127	ayub.siswantoro@gmail.com	$2a$12$MoI.6UaL.QQrlv9iWwo3kOaXgg4SrgAJji.54d2O3wDZEJtp2gIsu	\N	\N	\N	2023-08-28 02:21:51.791176	2023-08-28 02:21:51.791176	\N	ayub.siswantoro	t	\N	\N
128	azmimajid09@gmail.com	$2a$12$kAB3zQ5wJM8BDj0LCfo7ruejnZEJMhlhp6bqNJb98xu9d9WypNWyG	\N	\N	\N	2023-08-28 02:21:52.176922	2023-08-28 02:21:52.176922	\N	azmimajid09	t	\N	\N
129	bahry.fadiel@pt-sena.co.id	$2a$12$502U6GDAhRtgg/zUx3mptOHdNqFVea9ED53h7WKOyE6WLuaCumPWS	\N	\N	\N	2023-08-28 02:21:52.565325	2023-08-28 02:21:52.565325	\N	bahry.fadiel	t	\N	\N
130	balya.farras@pt-sena.co.id	$2a$12$MIPPZkmFcawygvBlW0EiqOpxCQq/2TisXER9dJ7JOXMB7zsOJW.Nm	\N	\N	\N	2023-08-28 02:21:52.951068	2023-08-28 02:21:52.951068	\N	balya.farras	t	\N	\N
131	bamba@pgn-solution.co.id	$2a$12$v1LdzO6PdHXN9L1YdYcvxejX91GCUPqaJ1tWtdMcJ8KGb3L31FD3G	\N	\N	\N	2023-08-28 02:21:53.338552	2023-08-28 02:21:53.338552	\N	bamba	t	\N	\N
132	irawan.bank@gmail.com	$2a$12$kmFzAoEZfK05TWwsw2VVouOSyEEwh4mDDceOnFYX/901alri8fpYi	\N	\N	\N	2023-08-28 02:21:53.728477	2023-08-28 02:21:53.728477	\N	Irawan.bank	t	\N	\N
133	bambang.utomo@pt-sena.co.id	$2a$12$GYT9YYy5h9NHPKEIW.s0vOMqAgzuhVlZExZ5QOuL81lEAt8goIz5a	\N	\N	\N	2023-08-28 02:21:54.114939	2023-08-28 02:21:54.114939	\N	bambang.utomo	t	\N	\N
134	bayu.aji@pt-sena.co.id	$2a$12$zQGmP6rG0yv8uFzeM9nUP.XMnJIxcaPpGq8LZ/fH.SHVlFbVDwnHi	\N	\N	\N	2023-08-28 02:21:54.505448	2023-08-28 02:21:54.505448	\N	bayu.aji	t	\N	\N
135	reskibayu@gmail.com	$2a$12$QPBxEybWiaORMNU2L7q3Ou/uXe/m/fwhFUlOk0LLVezBmgznLf79O	\N	\N	\N	2023-08-28 02:21:54.892963	2023-08-28 02:21:54.892963	\N	reskibayu	t	\N	\N
136	beni.septian@pt-sena.co.id	$2a$12$wYq1S6gGp.XJlhACWTvp2.P9RvLnSTYWxLZ7uNbppJyirN8Oiz5Ha	\N	\N	\N	2023-08-28 02:21:55.280959	2023-08-28 02:21:55.280959	\N	beni.septian	t	\N	\N
137	benrys.dwiputra@pt-sena.co.id	$2a$12$oGqozqEfrqfQon/QG7dAi.a47YiMUuNR39fBQHcx.Ri1B98RLiKHS	\N	\N	\N	2023-08-28 02:21:55.675813	2023-08-28 02:21:55.675813	\N	benrys.dwiputra	t	\N	\N
138	benthar.dhemang@pt-sena.co.id	$2a$12$vMddXhwS8IcLXa3JzqBE5OcAhVCNB7zrFywSt0Mh.GyrHHHgQofHK	\N	\N	\N	2023-08-28 02:21:56.070633	2023-08-28 02:21:56.070633	\N	benthar.dhemang	t	\N	\N
139	berry.fitriandi@pt-sena.co.id	$2a$12$8HapZ/fNChkHBGVhsUoL9e5cvYfwHfCv1ruB2zb.JzPUV2xDKwLw2	\N	\N	\N	2023-08-28 02:21:56.453878	2023-08-28 02:21:56.453878	\N	berry.fitriandi	t	\N	\N
140	bima.pramudya@pt-sena.co.id	$2a$12$05J1HPKX8GrUMIL948ioC.HL4cCxHdFkcJwq5oqgntCMYY8ujWA66	\N	\N	\N	2023-08-28 02:21:56.843462	2023-08-28 02:21:56.843462	\N	bima.pramudya	t	\N	\N
141	bintaraadhicandraa@gmail.com	$2a$12$294y..AZuEBC68jrqrpJnOuyhtZVBki37T7iH.deFITMbIVa1/TbK	\N	\N	\N	2023-08-28 02:21:57.227852	2023-08-28 02:21:57.227852	\N	bintaraadhicandraa	t	\N	\N
142	bobby.fariansa@pt-sena.co.id	$2a$12$uTuvQKi0Ck2y8NDn1uSdpuACHoE6vy0hyKmmICBspH.ZNa86LIRIu	\N	\N	\N	2023-08-28 02:21:57.613115	2023-08-28 02:21:57.613115	\N	bobby.fariansa	t	\N	\N
143	boris.turnip@pt-sena.co.id	$2a$12$WaOC./v1Z8tvS59iO0Fvy.g6Q8J4ez21Dir0uzZMGddkvWQKRmEB.	\N	\N	\N	2023-08-28 02:21:57.997533	2023-08-28 02:21:57.997533	\N	boris.turnip	t	\N	\N
144	budy.wening@pt-sena.co.id	$2a$12$PRYD8x1tqwGBpsdJhIZVBugIzoonsge1lH5gEj9M1oLNZGBI7hiGW	\N	\N	\N	2023-08-28 02:21:58.381578	2023-08-28 02:21:58.381578	\N	budy.wening	t	\N	\N
145	cadas.jiwanyala@pt-sena.co.id	$2a$12$tovKYiUvknvnjS3tgR.ZKeyJ00dMU1htDmbpevnEfRuN3ffZKN10e	\N	\N	\N	2023-08-28 02:21:58.76843	2023-08-28 02:21:58.76843	\N	cadas.jiwanyala	t	\N	\N
146	calvin.aziszam@pt-sena.co.id	$2a$12$1Rk2BDRtUGFjjSLRmxEZiOQN0HY9aDFWalKwZYorWEzS9/px2Tlr6	\N	\N	\N	2023-08-28 02:21:59.154259	2023-08-28 02:21:59.154259	\N	calvin.aziszam	t	\N	\N
147	celine.mega@pt-sena.co.id	$2a$12$JLf.b9fsiqPdo63ye.K.S.P2hwmQZXoGClDFASZ5BwwWMfMmCS5RO	\N	\N	\N	2023-08-28 02:21:59.539174	2023-08-28 02:21:59.539174	\N	celine.mega	t	\N	\N
148	chairunnisa@pt-sena.co.id	$2a$12$Xs1eDLfp1S8JHj.z9o/J/O4oeVcbH6wfv.9m4wB1FJG3/0Aczh9w.	\N	\N	\N	2023-08-28 02:21:59.927408	2023-08-28 02:21:59.927408	\N	chairunnisa	t	\N	\N
149	cseptian88@gmail.com	$2a$12$zMsMyOMEZ3a93Ie.PR1BUu2xseXjMej1r5fHx.ULKrwRkMbDJs4si	\N	\N	\N	2023-08-28 02:22:00.312083	2023-08-28 02:22:00.312083	\N	cseptian88	t	\N	\N
150	choerul.crohman@pt-sena.co.id	$2a$12$xBEp.j2tkHF04c1XP4/kp.SVDa0vafcBQv.z.KJcrbZSViHZ./oqS	\N	\N	\N	2023-08-28 02:22:00.724639	2023-08-28 02:22:00.724639	\N	choerul.crohman	t	\N	\N
151	cindy.yuliana@pt-sena.co.id	$2a$12$peRC7HacCDbSgtKl/e8IYu7XYnTo8k9Wg2aWLouA761qNbS.vla5K	\N	\N	\N	2023-08-28 02:22:01.121887	2023-08-28 02:22:01.121887	\N	cindy.yuliana	t	\N	\N
152	st001dummy@sena.co.id	$2a$12$0wCM3VjXK07Hz2VLq5tfiOa9mTksHSQwnAxvZyyOXB7jDvzIAL7SG	\N	\N	\N	2023-08-28 02:22:01.521993	2023-08-28 02:22:01.521993	\N	st001dummy	t	\N	\N
153	chuenk87@yahoo.com	$2a$12$MQBW8F8V9tsxJObI2LAGtOGr9mRFxyr26EIhITex9HonLSFyGLeAC	\N	\N	\N	2023-08-28 02:22:01.924175	2023-08-28 02:22:01.924175	\N	chuenk87	t	\N	\N
154	danaswara@pt-sena.co.id	$2a$12$PTbG8i4Nt2q6F53k84rJEeDEkqifzlXX779ziKcs/dlwI4bU12zTy	\N	\N	\N	2023-08-28 02:22:02.324547	2023-08-28 02:22:02.324547	\N	danaswara	t	\N	\N
155	danny.christianto@pt-sena.co.id	$2a$12$zl6Zg7GPOcZCWKMqD9j5Tu8pY96w95y4VJOaMIJVcW3F9np51NYPa	\N	\N	\N	2023-08-28 02:22:02.722326	2023-08-28 02:22:02.722326	\N	danny.christianto	t	\N	\N
156	danu.setiyadi@pt-sena.co.id	$2a$12$6hkaDEh/0XSkLU.qSKxb0uACP43gq0EPOwR5UzzSBGxeRDJRNkzje	\N	\N	\N	2023-08-28 02:22:03.127974	2023-08-28 02:22:03.127974	\N	danu.setiyadi	t	\N	\N
157	info.it@pt-sena.co.id	$2a$12$V7q2LY0lzlOWBBGyNqOcReKqVJvjXraicDR2VJapNuWAKA0iWxvGe	\N	\N	\N	2023-08-28 02:22:03.53424	2023-08-28 02:22:03.53424	\N	info.it	t	\N	\N
158	dea.noer@pt-sena.co.id	$2a$12$DN7fKOyDuHn.eEAP7Abda.4687geHswIA1rqatabicuWAU.a0FXI.	\N	\N	\N	2023-08-28 02:22:03.96835	2023-08-28 02:22:03.96835	\N	dea.noer	t	\N	\N
159	deandria.nabila@pt-sena.co.id	$2a$12$QY3El5BsEPxNdnHGz1FwI.SKfk.32pH2zDQn5feqrRw7XFgRX.3x.	\N	\N	\N	2023-08-28 02:22:04.381279	2023-08-28 02:22:04.381279	\N	deandria.nabila	t	\N	\N
160	debby.chairubby@pt-sena.co.id	$2a$12$NFOPtI/1lK/hJPL5nE30eOmYh4wNveViRoSTYM4FRVAKUvO809gre	\N	\N	\N	2023-08-28 02:22:04.790392	2023-08-28 02:22:04.790392	\N	debby.chairubby	t	\N	\N
161	st003dummy@sena.co.id	$2a$12$.INe99gLUzfS24BQ/W9YzuB5uRv.r0XL1tVGystVqgo6E4K9f1r.G	\N	\N	\N	2023-08-28 02:22:05.228746	2023-08-28 02:22:05.228746	\N	st003dummy	t	\N	\N
162	dede.supriyatna@pt-sena.co.id	$2a$12$8SieYMUxdRUdeTu98ml.fO6LfU5I98PhbKG3B6tjsC9pGCDCMX.lG	\N	\N	\N	2023-08-28 02:22:05.648894	2023-08-28 02:22:05.648894	\N	dede.supriyatna	t	\N	\N
163	dediharyono.epc@gmail.com	$2a$12$6MGky/gyojIgSGExuTx2e.TPjChwdNfh5/ORb5Biwi8DZDPUd6IaW	\N	\N	\N	2023-08-28 02:22:06.065973	2023-08-28 02:22:06.065973	\N	dediharyono.epc	t	\N	\N
164	dedy@pt-sena.co.id	$2a$12$CBNpucnjq66VdQLDykI2uO4CXh/Fs4NgO..O3s7ODnhG5W7Vao3oy	\N	\N	\N	2023-08-28 02:22:06.473599	2023-08-28 02:22:06.473599	\N	dedy	t	\N	\N
165	defriramadhani25@gmail.com	$2a$12$IhX1qmXUG6kZ//SjJd.8lOsibUWY2on23.9i7N/BzeTfNar27pDCC	\N	\N	\N	2023-08-28 02:22:06.910864	2023-08-28 02:22:06.910864	\N	defriramadhani25	t	\N	\N
166	deni.fahamsyah@pt-sena.co.id	$2a$12$yXkY65H70NQ6c3GinlPUw.kEHEIpAHONWMRvwAoRjN8cA5xaQ3GHu	\N	\N	\N	2023-08-28 02:22:07.321461	2023-08-28 02:22:07.321461	\N	deni.fahamsyah	t	\N	\N
167	deniiswandi789@gmail.com	$2a$12$dYjjeSb1OdcmF9gzHQI1QOEZBn5nfzDNCrM9W3gL8aJGcfNlpehQm	\N	\N	\N	2023-08-28 02:22:07.72958	2023-08-28 02:22:07.72958	\N	deniiswandi789	t	\N	\N
168	desira.natalia@pt-sena.co.id	$2a$12$Ig4/66dYj/95uxJzBp/6EuxqHk9Fp73l5e9xPbOcLZBFb//kvwjOm	\N	\N	\N	2023-08-28 02:22:08.134558	2023-08-28 02:22:08.134558	\N	desira.natalia	t	\N	\N
169	adesttt@gmail.com	$2a$12$DHiU5LuD/3ash232RKEsT.GsQWpwjo29nbFykvf6ZruXy9eT5UVxG	\N	\N	\N	2023-08-28 02:22:08.5398	2023-08-28 02:22:08.5398	\N	adesttt	t	\N	\N
170	desy.natalia@pt-sena.co.id	$2a$12$dpyVVAfMZ9GNMul6uzKuouIwADF3KVV7ISKphLILxSso8LfJIj/7W	\N	\N	\N	2023-08-28 02:22:08.982338	2023-08-28 02:22:08.982338	\N	desy.natalia	t	\N	\N
171	devan.cesar@pt-sena.co.id	$2a$12$bhj8puII0KQw2E6cKLGs0.LRktT0MUD6.6r.JTC1IS8ZXSdNzEMn2	\N	\N	\N	2023-08-28 02:22:09.387211	2023-08-28 02:22:09.387211	\N	devan.cesar	t	\N	\N
172	devania.tipa@pgn-solution.co.id	$2a$12$ImUulBcDP8j48GlysfwSAOZu437DxCpQxL53dt8G87dxNueBrE3dS	\N	\N	\N	2023-08-28 02:22:09.797927	2023-08-28 02:22:09.797927	\N	devania.tipa	t	\N	\N
173	devi.ulfiana@pt-sena.co.id	$2a$12$aDbvwgbmnDBF9VhGfviARe17Z9CT5/S5cvr1JwnT768GsAtBjp/Ce	\N	\N	\N	2023-08-28 02:22:10.189699	2023-08-28 02:22:10.189699	\N	Devi.Ulfiana	t	\N	\N
174	devinaoktaviani95@gmail.com	$2a$12$GK/KBEzH26x2ak22Xy/qfug2I0H0Q.MGqWUoSA0AOSjE7f/NZ3DoC	\N	\N	\N	2023-08-28 02:22:10.578867	2023-08-28 02:22:10.578867	\N	devinaoktaviani95	t	\N	\N
175	dhany.bagus@pt-sena.co.id	$2a$12$vAE7jViSgkKM409956oGPeLm0tCZR0axPUeQopmPGdxyOTytmaMRO	\N	\N	\N	2023-08-28 02:22:10.975926	2023-08-28 02:22:10.975926	\N	dhany.bagus	t	\N	\N
176	dhimas.aulia@pt-sena.co.id	$2a$12$M8UALEXNYHNQa6LkH8NfaeLLyQ8xw9Men6AqwuJuIUwXUCaCql.NC	\N	\N	\N	2023-08-28 02:22:11.371687	2023-08-28 02:22:11.371687	\N	dhimas.aulia	t	\N	\N
177	dian.budi@pt-sena.co.id	$2a$12$k5bEeHb7th6CUQeV1Ho.IO.f6/EP.73Hxy3//dPZpuvFfEh7e2Fte	\N	\N	\N	2023-08-28 02:22:11.76129	2023-08-28 02:22:11.76129	\N	dian.budi	t	\N	\N
178	didit.prasetyadi@pt-sena.co.id	$2a$12$2eZaJ3iPGSBLXFWVjqrGpuNaGRuRcJz0xDkt1.ukCBlCq1U2H9.FC	\N	\N	\N	2023-08-28 02:22:12.150113	2023-08-28 02:22:12.150113	\N	didit.prasetyadi	t	\N	\N
179	dienceph.candra@pt-sena.co.id	$2a$12$gEPM1auv6/QD8n0YIL1Mv.iodePaAc8SKb/qkqx5wN9e7ebGsjpoi	\N	\N	\N	2023-08-28 02:22:12.538143	2023-08-28 02:22:12.538143	\N	dienceph.candra	t	\N	\N
180	dify.kurniawan@gmail.com	$2a$12$jvVhYZ4yhIYzDZby2wJHGOb/VojVF.uQR32hlBdQ1V8oNj9IrOUsS	\N	\N	\N	2023-08-28 02:22:12.924602	2023-08-28 02:22:12.924602	\N	dify.kurniawan	t	\N	\N
181	dimas.setiadi13@gmail.com	$2a$12$VteRfSAarvo5E0OPz/.VwOBBIzU2gNI0B0ZRpBP79Zzoolhmpdpu.	\N	\N	\N	2023-08-28 02:22:13.321224	2023-08-28 02:22:13.321224	\N	dimas.setiadi13	t	\N	\N
182	andika.dya@gmail.com	$2a$12$YIR.S3Wc9UN48ZMEz193x.nhaEnSW1xsUlTgwsf.FkbzD2efHI2V2	\N	\N	\N	2023-08-28 02:22:13.709446	2023-08-28 02:22:13.709446	\N	andika.dya	t	\N	\N
183	dito@pt-sena.co.id	$2a$12$9rf/KEBLPEAc52167.tHTuG0SsHe4ri6wsWW2MtQE1T3I9Dh162um	\N	\N	\N	2023-08-28 02:22:14.097814	2023-08-28 02:22:14.097814	\N	dito	t	\N	\N
185	doni.wicaksono@pgn-solution.co.id	$2a$12$Qhtxcid6Sty6epDYkJ1Nqu/3hFALe6ktU5a6jppRbYFrbdb4wTwQm	\N	\N	\N	2023-08-28 02:22:14.906379	2023-08-28 02:22:14.906379	\N	doni.wicaksono	t	\N	\N
186	dwi.hidayati@pt-sena.co.id	$2a$12$UJBFqWu3LMdmK/C0XAi6K.IMivxI2oa1csFe/3pbxNqebAx7fKVx2	\N	\N	\N	2023-08-28 02:22:15.296579	2023-08-28 02:22:15.296579	\N	dwi.hidayati	t	\N	\N
187	dwi.ayu@pt-sena.co.id	$2a$12$3xr9X178QluCg8hMU6n5K.yIIfu9FQgN5uvgz.lf79uTPNKlb3QyW	\N	\N	\N	2023-08-28 02:22:15.689981	2023-08-28 02:22:15.689981	\N	dwi.ayu	t	\N	\N
188	dwi.erlina@pt-sena.co.id	$2a$12$NijnQ.ze9TdampqYYwYZNO.DiupDM8t8hoiShYeM7/r2qsL8Zth0O	\N	\N	\N	2023-08-28 02:22:16.090655	2023-08-28 02:22:16.090655	\N	dwi.erlina	t	\N	\N
189	dwi.rizkia@pt-sena.co.id	$2a$12$dLGUmVu9sFxhnerHzgPCguqJWhKKqk/lD8QU/ZrTwWd58k6ff0o8u	\N	\N	\N	2023-08-28 02:22:16.482267	2023-08-28 02:22:16.482267	\N	dwi.rizkia	t	\N	\N
190	dwikifauzi29@gmail.com	$2a$12$uTgV7oXyDI7sWkuzGZCnAe9ubctHyh6t0kqjB6TS0zBUfVNqxTPVC	\N	\N	\N	2023-08-28 02:22:16.872258	2023-08-28 02:22:16.872258	\N	dwikifauzi29	t	\N	\N
191	rezaasavero@gmail.com	$2a$12$Y0JKKUz1uI.fI2HplLVnMOoPbrE0UM0BAiGnJ80QcJn/WmPXEu6R2	\N	\N	\N	2023-08-28 02:22:17.261976	2023-08-28 02:22:17.261976	\N	rezaasavero	t	\N	\N
192	dyan.dwi@pt-sena.co.id	$2a$12$yPtg3/UIkxhxe8RRLfEZq.x2RJc6x13SKG9HnX9uF5CKacOc6Jl1.	\N	\N	\N	2023-08-28 02:22:17.648847	2023-08-28 02:22:17.648847	\N	dyan.dwi	t	\N	\N
193	dzaki.fatchur@pt-sena.co.id	$2a$12$bHMsaCUx/6DkiCM7s6l8eeUfGoRzyN2msqpHzC2soXHNb8VG407lC	\N	\N	\N	2023-08-28 02:22:18.032928	2023-08-28 02:22:18.032928	\N	dzaki.fatchur	t	\N	\N
194	dzikri@pt-sena.co.id	$2a$12$OIqzqNuWclgxqu2X2c970uT2rl2.qPHeh9QWR6N7tztWonIPZnSQW	\N	\N	\N	2023-08-28 02:22:18.463798	2023-08-28 02:22:18.463798	\N	dzikri	t	\N	\N
195	edi.effendi@pt-sena.co.id	$2a$12$cI3NX1D5lPcR82c.ZCGtp.rq9hWs.FblTIKaXUKiXMhikcbv2SHX2	\N	\N	\N	2023-08-28 02:22:18.863138	2023-08-28 02:22:18.863138	\N	edi.effendi	t	\N	\N
196	edi.purnomo@pt-sena.co.id	$2a$12$3eKLkZQmfC3enfqqzWPF/OUwz6ggNwu5zHSGyhInYP1.00BmbNewm	\N	\N	\N	2023-08-28 02:22:19.247531	2023-08-28 02:22:19.247531	\N	edi.purnomo	t	\N	\N
197	egita.wis1408@gmail.com	$2a$12$SMomTnDCA/Q7X.DXPxbBDeKAtyowJpsiUpO2zUTeJlbZWo4fe2YhS	\N	\N	\N	2023-08-28 02:22:19.642687	2023-08-28 02:22:19.642687	\N	egita.wis1408	t	\N	\N
198	giie.geo91@gmail.com	$2a$12$2vpl22/HT4r3ZL6qMsRU../ZgB0.sqpnw3antBGrmBh8LtwgA0sCi	\N	\N	\N	2023-08-28 02:22:20.036318	2023-08-28 02:22:20.036318	\N	giie.geo91	t	\N	\N
199	ekasudiyanto@gmail.com	$2a$12$3Q0duPsS9ljxv1joYgzxteOTivUcRm7PSDxb8TesRNtIv4vKgGzhW	\N	\N	\N	2023-08-28 02:22:20.425466	2023-08-28 02:22:20.425466	\N	ekasudiyanto	t	\N	\N
200	ekkanurwana19@gmail.com	$2a$12$HOiXAf7xqMHD7uBVwLjImOaRPIgLDe.CvQ9MvCs1FOv6qib7LBQpy	\N	\N	\N	2023-08-28 02:22:20.816328	2023-08-28 02:22:20.816328	\N	ekkanurwana19	t	\N	\N
201	eko.ardian@pt-sena.co.id	$2a$12$JxgGNYq0oOU6aTNWieH0SOKSvZt.nNKFAnQOVCUpYsukPs2GANMmW	\N	\N	\N	2023-08-28 02:22:21.210678	2023-08-28 02:22:21.210678	\N	eko.ardian	t	\N	\N
202	ekopurwanto37457@gmail.com	$2a$12$BpfZ0csVLWrlUVphs3MJKOH8hwXgEf8n7qm1RqB1P0xDEnSS6fySi	\N	\N	\N	2023-08-28 02:22:21.603958	2023-08-28 02:22:21.603958	\N	ekopurwanto37457	t	\N	\N
203	ekobudiwardhana72@gmail.com	$2a$12$3p0bojMGiFLee/NScy6hqOgWzE9aUJ0LhMqXa6oqL3aJ40/r73Q5S	\N	\N	\N	2023-08-28 02:22:21.996664	2023-08-28 02:22:21.996664	\N	ekobudiwardhana72	t	\N	\N
204	eky.misbahuddin@pt-sena.co.id	$2a$12$mzif.MlGnvFn3zY9vWg8relpjQu65wrkB.x0fM7N170e35H2VJSz2	\N	\N	\N	2023-08-28 02:22:22.398356	2023-08-28 02:22:22.398356	\N	eky.misbahuddin	t	\N	\N
205	elisa.putri@pt-sena.co.id	$2a$12$xN0vFt8kwXX2KIjYXBWhcOgJAe9n0ULzgiHhCpyU5fh8JkyOsfu6i	\N	\N	\N	2023-08-28 02:22:22.806256	2023-08-28 02:22:22.806256	\N	elisa.putri	t	\N	\N
206	emil.fadilah@pt-sena.co.id	$2a$12$Ennypt/Zh2BWZGVsHfzSlO7bsdnrt0AXdsTGN6FqfWZAAnaY/WTz.	\N	\N	\N	2023-08-28 02:22:23.206148	2023-08-28 02:22:23.206148	\N	emil.fadilah	t	\N	\N
207	endah.febrianti@pt-sena.co.id	$2a$12$NfHwC3b92SJ.3K.mhYRb8uB5.ETkvJNcyuraG.iRqLqMTB.kBeXDC	\N	\N	\N	2023-08-28 02:22:23.614437	2023-08-28 02:22:23.614437	\N	endah.febrianti	t	\N	\N
208	st009dummy@sena.co.id	$2a$12$jb.6S40GQGh6zz9ufh5Rp.Xnw87GmKp0ATx7Ide0Uh9BjNU.K.R6q	\N	\N	\N	2023-08-28 02:22:24.000227	2023-08-28 02:22:24.000227	\N	st009dummy	t	\N	\N
209	enni.intan@pt-sena.co.id	$2a$12$0YQU2bTPA5QcpCBBwgyAoOaaJjF0hJfJDFMccpX4c.bHRvAavB056	\N	\N	\N	2023-08-28 02:22:24.389019	2023-08-28 02:22:24.389019	\N	enni.intan	t	\N	\N
210	erick@pt-sena.co.id	$2a$12$v8SbMQAVvTFkC7EAgeQ7rOkd6UWX/kC.zkomVhe895PabkmHbgbpS	\N	\N	\N	2023-08-28 02:22:24.781025	2023-08-28 02:22:24.781025	\N	erick	t	\N	\N
211	erisha.aulia@pt-sena.co.id	$2a$12$lIZZTbudJg/s6yVe.rXMw.RWdaXid8PVS/D5SG3L6lEubsgp1cwxK	\N	\N	\N	2023-08-28 02:22:25.170791	2023-08-28 02:22:25.170791	\N	erisha.aulia	t	\N	\N
212	erlialarasati@pt-sena.co.id	$2a$12$5nB8JjwcdyHrJQdo2C2Jsu0cjpPx8jcLi3hGsrEn.Vj6FDvaVmmpW	\N	\N	\N	2023-08-28 02:22:25.569103	2023-08-28 02:22:25.569103	\N	erlialarasati	t	\N	\N
213	fabry@pt-sena.co.id	$2a$12$vWwzkvDi1y3WOjXqfnRQ/uLkgvi2h9wzzVvDihMEIEjtP0cy1hEOG	\N	\N	\N	2023-08-28 02:22:25.97103	2023-08-28 02:22:25.97103	\N	fabry	t	\N	\N
214	fadelmuhamadilham@gmail.com	$2a$12$QNswfbq9PIpdFxmoTKTr6uTDu.gUqCLng5vKdr.SzRSwpTXOHILoa	\N	\N	\N	2023-08-28 02:22:26.359992	2023-08-28 02:22:26.359992	\N	fadelmuhamadilham	t	\N	\N
215	fadhanaanggara@pt-sena.co.id	$2a$12$d/72JuLCGE9akVY.cajsQefHRGqhWk2YbBg2bjXqkhDByECGLmuca	\N	\N	\N	2023-08-28 02:22:26.753998	2023-08-28 02:22:26.753998	\N	fadhanaanggara	t	\N	\N
216	fadhli.halim@pt-sena.co.id	$2a$12$8BiZ8wXDirA3qa/A1bK7veLsp9z5Eiu2FYFhjGc.g0hKXmiBNQo7u	\N	\N	\N	2023-08-28 02:22:27.148188	2023-08-28 02:22:27.148188	\N	fadhli.halim	t	\N	\N
217	fadilmuhammad1933@gmail.com	$2a$12$bQa9P4WG.kLWw2aBTaZcBeaIlrji92udXiJrQThBLrQPX4fvS3whu	\N	\N	\N	2023-08-28 02:22:27.547149	2023-08-28 02:22:27.547149	\N	fadilmuhammad1933	t	\N	\N
218	fahmi.fazlur@pt-sena.co.id	$2a$12$10PtKd5rDqwbIfJAFjxu9Oie0jEMS46f5g2WHTIqN4qWDQdFaWObe	\N	\N	\N	2023-08-28 02:22:27.968127	2023-08-28 02:22:27.968127	\N	fahmi.fazlur	t	\N	\N
219	amik.idris@gmail.com	$2a$12$FWmgLxCiJfNikGe88dTtBOeykrOnC6FFKz.iU1VISGBULlWsDV7vy	\N	\N	\N	2023-08-28 02:22:28.354685	2023-08-28 02:22:28.354685	\N	amik.idris	t	\N	\N
220	faizal.zaleh@pt-sena.co.id	$2a$12$26cTAF5t9Ee/WAeyt.VVkOXwAEmsVgkH3F0Byq2ywR6FP1kddjIre	\N	\N	\N	2023-08-28 02:22:28.746895	2023-08-28 02:22:28.746895	\N	faizal.zaleh	t	\N	\N
221	fajar.trapsilo@pt-sena.co.id	$2a$12$eHjUYFcE0RtCK5QIg9IKSuvyqhSgr2Yeo8ji1h.RQshVkCtbHyNc.	\N	\N	\N	2023-08-28 02:22:29.138088	2023-08-28 02:22:29.138088	\N	fajar.trapsilo	t	\N	\N
222	faldy.alfian@pt-sena.co.id	$2a$12$RqmJTORCI4AFkPQABilQU.GEvwDSOVIzCyPI5La9F6Rn.3w9GZInC	\N	\N	\N	2023-08-28 02:22:29.525468	2023-08-28 02:22:29.525468	\N	faldy.alfian	t	\N	\N
223	farekh.huzair@pt-sena.co.id	$2a$12$M9RwMA8hs/Zu4eZxW/fIS.au3Jt1eL5n8f1vQnC3pP7Wxr5XQ7IuG	\N	\N	\N	2023-08-28 02:22:29.917979	2023-08-28 02:22:29.917979	\N	farekh.huzair	t	\N	\N
224	farhan.hidayat@pt-sena.co.id	$2a$12$oRt64srUPKJ9ZQWJHxidneOx9x.lSI28gG6j6evFyDdjNwxsvxEV2	\N	\N	\N	2023-08-28 02:22:30.306627	2023-08-28 02:22:30.306627	\N	farhan.hidayat	t	\N	\N
225	fatikunada@pt-sena.co.id	$2a$12$WGARxjyY10kCd1sRGkGSMO5efOK9EDFAudngWLhjXzfh4GN4Ag3/a	\N	\N	\N	2023-08-28 02:22:30.691144	2023-08-28 02:22:30.691144	\N	fatikunada	t	\N	\N
226	st006dummy@sena.co.id	$2a$12$ub26wY86u2Gbab/UvldOpeNzsivnLpVOBkAaerP2fXOW1MnZwxFty	\N	\N	\N	2023-08-28 02:22:31.083476	2023-08-28 02:22:31.083476	\N	st006dummy	t	\N	\N
227	febriyanti@pt-sena.co.id	$2a$12$T7BgDkKj9XyTong8uO9hU.rsNuD4G3K9y0QNDCVDYf/isuGj3HkYe	\N	\N	\N	2023-08-28 02:22:31.468504	2023-08-28 02:22:31.468504	\N	febriyanti	t	\N	\N
228	st007dummy@sena.co.id	$2a$12$oq3j4Tr9EfSbWHUe7Vn/q.HwcJ.BnZTnap8sYpbJuoyj2vvRNQ/I6	\N	\N	\N	2023-08-28 02:22:31.856729	2023-08-28 02:22:31.856729	\N	st007dummy	t	\N	\N
229	feriariyanto0001@gmail.com	$2a$12$CSXzpFmJ.Xn2Uty3mQBn0.psIOTc7cWG9Wu6k.6I67D0aHJFyw/OS	\N	\N	\N	2023-08-28 02:22:32.241019	2023-08-28 02:22:32.241019	\N	feriariyanto0001	t	\N	\N
230	fikri.achmad@pt-sena.co.id	$2a$12$r0bN2QeZ8FKPO1.WEQsYQ.JddlRwQ6fWKkeZzBkXYQwLbZM9pbWxC	\N	\N	\N	2023-08-28 02:22:32.625152	2023-08-28 02:22:32.625152	\N	fikri.achmad	t	\N	\N
231	fikri.ardian@pt-sena.co.id	$2a$12$vpDM54ObTWIGBsiPOCltwejIc9SgNb22bUZD8GZLr5vt7uq0GHCy2	\N	\N	\N	2023-08-28 02:22:33.015487	2023-08-28 02:22:33.015487	\N	fikri.ardian	t	\N	\N
232	filiabestari204@gmail.com	$2a$12$6ymDBcCweqlXIUPSPTexpOuP2y.VJ5QqxW8YlvMQz40traGjYYw8q	\N	\N	\N	2023-08-28 02:22:33.40808	2023-08-28 02:22:33.40808	\N	filiabestari204	t	\N	\N
233	firdaus.handil@gmail.com	$2a$12$0xv4KR/R/apxftHHp0p1DeOm7psFZhtKJcgR.fA5SxPy6SnmFHVKO	\N	\N	\N	2023-08-28 02:22:33.793876	2023-08-28 02:22:33.793876	\N	firdaus.handil	t	\N	\N
234	franklin.satria@pt-sena.co.id	$2a$12$N.BoQK4PSujM5xHDvkQrbe5.JYaWRkFREcnC5X69uMWaKmj2gbv62	\N	\N	\N	2023-08-28 02:22:34.185042	2023-08-28 02:22:34.185042	\N	franklin.satria	t	\N	\N
235	fuad.hasyim@pt-sena.co.id	$2a$12$Sv8XhUxP8lp0oFLaQF01aeRluAhz7/sS2h7Q1M0GmW2YjBkk6WqV6	\N	\N	\N	2023-08-28 02:22:34.573384	2023-08-28 02:22:34.573384	\N	fuad.hasyim	t	\N	\N
236	gaby.lorenza@pt-sena.co.id	$2a$12$iw8LbWX7RKcp3JWRzhu5muh5FO3QcgC0Su3gWYv8nnZXNAHYt5ru6	\N	\N	\N	2023-08-28 02:22:34.968046	2023-08-28 02:22:34.968046	\N	gaby.lorenza	t	\N	\N
237	galih@pt-sena.co.id	$2a$12$Uoyj.R3gXdG09568fTJXpOzTZ/RaDdG6v13JG2V9VteF2podvCtgO	\N	\N	\N	2023-08-28 02:22:35.353038	2023-08-28 02:22:35.353038	\N	galih	t	\N	\N
238	ganesh.wicaksono@pt-sena.co.id	$2a$12$jUl05dPeHy7nJTxFYDnvlubJyBf3EzUTVIdj2ffI7zbR0bSJIwmIm	\N	\N	\N	2023-08-28 02:22:35.743326	2023-08-28 02:22:35.743326	\N	ganesh.wicaksono	t	\N	\N
239	geo.pradana@pt-sena.co.id	$2a$12$DAJWBzPa/2EVGJrXj4RGqePBbTHfzpayS0WyS46S9ErSwY0c.ijA6	\N	\N	\N	2023-08-28 02:22:36.141524	2023-08-28 02:22:36.141524	\N	geo.pradana	t	\N	\N
240	ghafiqi.jati@pt-sena.co.id	$2a$12$yCbnF8Vl9m1ACdI7nQNHteGm/cBuiM96lxNQTIPtl9UOJErpSLtM.	\N	\N	\N	2023-08-28 02:22:36.529967	2023-08-28 02:22:36.529967	\N	ghafiqi.jati	t	\N	\N
241	ghani.ct@pt-sena.co.id	$2a$12$rD4FpLSZ2Eegz5B3wW8py.24M1mdD/7Y3eqN/IKCL93gW/MIlOuLm	\N	\N	\N	2023-08-28 02:22:36.919617	2023-08-28 02:22:36.919617	\N	ghani.ct	t	\N	\N
242	ghufron@pt-sena.co.id	$2a$12$zO3HzVr5aNOnJwdi4xUGF.1uwuOUC0mGMeEvjH9RPN9FBxh2ekOLe	\N	\N	\N	2023-08-28 02:22:37.311407	2023-08-28 02:22:37.311407	\N	ghufron	t	\N	\N
243	gilang.pramudya@pt-sena.co.id	$2a$12$ryUH34AAd..LCiHCvT9wk.Pbi0E5QPa1yqs3MdVlBz1mCgju6I852	\N	\N	\N	2023-08-28 02:22:37.698949	2023-08-28 02:22:37.698949	\N	gilang.pramudya	t	\N	\N
244	gina.purwaningtias@pt-sena.co.id	$2a$12$KPJJa7PkQTyOxjWjCuJDLODfITs8b0nckaenx.41i7HmUUXrQ0wyq	\N	\N	\N	2023-08-28 02:22:38.096527	2023-08-28 02:22:38.096527	\N	gina.purwaningtias	t	\N	\N
245	gloryrizky21@gmail.com	$2a$12$pYUhbJ.hXdiKhg144LoqXum.ttr22Ver8vlcDEWBUN24lB/6Y2Y.a	\N	\N	\N	2023-08-28 02:22:38.484336	2023-08-28 02:22:38.484336	\N	gloryrizky21	t	\N	\N
246	gucuf.randy@pt-sena.co.id	$2a$12$xxYSAmu8rn8fS1J.jstsc.uPuYD3IQwS.4NihRu8MeljTDoQ.Vdlu	\N	\N	\N	2023-08-28 02:22:38.871236	2023-08-28 02:22:38.871236	\N	gucuf.randy	t	\N	\N
247	gukben.sitanggang@gmail.com	$2a$12$bM35W.iFgYbriE6jATTw3.FXhV5eW1U.y2GUEd3I0bDQEOolE4sHG	\N	\N	\N	2023-08-28 02:22:39.259742	2023-08-28 02:22:39.259742	\N	gukben.sitanggang	t	\N	\N
248	hadira.salmi@pt-sena.co.id	$2a$12$RW/yZGnvEWKymYN1TMYv/u4u7k2BEPIIfkbHd15Cb6kVpEkKUkBP2	\N	\N	\N	2023-08-28 02:22:39.646162	2023-08-28 02:22:39.646162	\N	hadira.salmi	t	\N	\N
249	hafizh@pt-sena.co.id	$2a$12$AItLF/VjcuD6JajAg1f5N.2QtmLEVYsgj9sQKMU2d/A2dxbngURyi	\N	\N	\N	2023-08-28 02:22:40.030655	2023-08-28 02:22:40.030655	\N	hafizh	t	\N	\N
250	haly.hanafi@pt-sena.co.id	$2a$12$cD5dSFgu0MO4QZHwg0Nnleo4ylKJ50Afg5adYYC7YjegIyMuc9qWO	\N	\N	\N	2023-08-28 02:22:40.425973	2023-08-28 02:22:40.425973	\N	haly.hanafi	t	\N	\N
251	hamid.subrata@pt-sena.co.id	$2a$12$0kqJ6K7WhkEwLaXhQi/GC.LcuGrYil6aJjLAxO6pe3NWNg9r4t5Om	\N	\N	\N	2023-08-28 02:22:40.819639	2023-08-28 02:22:40.819639	\N	hamid.subrata	t	\N	\N
252	handyta.anindyasarathi@pt-sena.co.id	$2a$12$1DSBSAV99zdS6H3skx2uQuhmSv3nOYCCHFn57VGB3hDrM8bzv1pIq	\N	\N	\N	2023-08-28 02:22:41.236231	2023-08-28 02:22:41.236231	\N	handyta.anindyasarathi	t	\N	\N
253	hanindyo.ardhi@pt-sena.co.id	$2a$12$feF9dOKQdUiE4FFObhqRIuNzBc9uK5kSgzoI0bemb5RvUQllo0e1q	\N	\N	\N	2023-08-28 02:22:41.637688	2023-08-28 02:22:41.637688	\N	hanindyo.ardhi	t	\N	\N
254	hanna.indah@pt-sena.co.id	$2a$12$WoRE9N5yevU2DYGNzOvTsObnDmCaYEVqlHXPEVDPnaCaWWk6FNQty	\N	\N	\N	2023-08-28 02:22:42.023647	2023-08-28 02:22:42.023647	\N	hanna.indah	t	\N	\N
255	harland@pt-sena.co.id	$2a$12$QGJvTY.c50FJoKgB6kPNXu.vHpcfX6COs7rN9JlEbu0MRwO.AcKmG	\N	\N	\N	2023-08-28 02:22:42.412104	2023-08-28 02:22:42.412104	\N	harland	t	\N	\N
256	harry.priyulanda@pt-sena.co.id	$2a$12$gqHWMIe3/xpFvo4y6/xcEO6WSp77UeUdDIlDPQBLx7t3ceRLgNAPW	\N	\N	\N	2023-08-28 02:22:42.774081	2023-08-28 02:22:42.774081	\N	harry.priyulanda	t	\N	\N
257	hastyningtyas@gmail.com	$2a$12$/Oi1Y16TW6UOSeIxMhBTdeU0o.zEDXnWmY0g6y1ZCLj3oWbQ0KEwy	\N	\N	\N	2023-08-28 02:22:43.165403	2023-08-28 02:22:43.165403	\N	Hastyningtyas	t	\N	\N
258	heddyriyandi@gmail.com	$2a$12$loRTjy87AeWnzumFKP8wYOK9hEn982ZOQ4UhnAOROdYxBt82x4Ntq	\N	\N	\N	2023-08-28 02:22:43.556595	2023-08-28 02:22:43.556595	\N	heddyriyandi	t	\N	\N
259	hendy.marta@pt-sena.co.id	$2a$12$GaojIzStg6O6X1e0EG5EVeX9E9ZNIwUaPxBUNM/UFOtkKWjTcx5Ki	\N	\N	\N	2023-08-28 02:22:43.942375	2023-08-28 02:22:43.942375	\N	hendy.marta	t	\N	\N
260	heri.kurniawan@pt-sena.co.id	$2a$12$Ts42ijLSK0sAd6fIrh6ayeaZrgWissbL.77zeHq88o6jZsZHZqciC	\N	\N	\N	2023-08-28 02:22:44.336134	2023-08-28 02:22:44.336134	\N	heri.kurniawan	t	\N	\N
261	herry906@gmail.com	$2a$12$0uzj6O.6YbSTv3X76aMSZOoFQnABPc7mEdlffW1yVLNIo6/fYQVDa	\N	\N	\N	2023-08-28 02:22:44.727526	2023-08-28 02:22:44.727526	\N	herry906	t	\N	\N
262	hery.yusuf@pt-sena.co.id	$2a$12$UICHgA0YAykkB8fdymaED.t4UqUB3Txf3kUBUM/hClYNMB2Ksrndq	\N	\N	\N	2023-08-28 02:22:45.116605	2023-08-28 02:22:45.116605	\N	hery.yusuf	t	\N	\N
264	heru.prasetyo@pt-sena.co.id	$2a$12$5iGUTtnM4gq7w/lt9a7k3.jhL9ZGKs7PQD2sjDvdKqsMx.O5gBmnm	\N	\N	\N	2023-08-28 02:22:45.916013	2023-08-28 02:22:45.916013	\N	heru.prasetyo	t	\N	\N
265	hilman.mulyana@pt-sena.co.id	$2a$12$EXOSa4h64XKRFv1T/RgxwODSNy0sJoJr09RWcaPWM1wuK8YE2Uvbq	\N	\N	\N	2023-08-28 02:22:46.329954	2023-08-28 02:22:46.329954	\N	hilman.mulyana	t	\N	\N
266	hisaya.fajri@pt-sena.co.id	$2a$12$oNMPJDJxlkPctnUhxgEk5Oz4weNfnVlkMw6Cxpidbt7cZUUOAgwxS	\N	\N	\N	2023-08-28 02:22:46.719493	2023-08-28 02:22:46.719493	\N	hisaya.fajri	t	\N	\N
267	putu.dharma@pt-sena.co.id	$2a$12$FaS3Sk8kCG5XXZHSxUfLKekuuJzREQbLcaqTmj34gRt3.hFWs5z7S	\N	\N	\N	2023-08-28 02:22:47.110019	2023-08-28 02:22:47.110019	\N	putu.dharma	t	\N	\N
268	kiebenn121@gmail.com	$2a$12$r6KTsoXrA534BddgFdvmaecNvDCTVmasJw96S611.YV0fp6LRpQ.C	\N	\N	\N	2023-08-28 02:22:47.499703	2023-08-28 02:22:47.499703	\N	kiebenn121	t	\N	\N
269	syukron.ibnu@yahoo.com	$2a$12$EuoZ2U5aDZMkFUkw8Mdw8O9jAwr84duoGn9BaPmj1vQTTcEifC5eG	\N	\N	\N	2023-08-28 02:22:47.894234	2023-08-28 02:22:47.894234	\N	syukron.ibnu	t	\N	\N
270	ichsan.putra@pt-sena.co.id	$2a$12$XF8xkNynp7IhamOwRQybR.BVFSqyvs279RsxhdPIP8gCa.nZqNYQ2	\N	\N	\N	2023-08-28 02:22:48.281654	2023-08-28 02:22:48.281654	\N	ichsan.putra	t	\N	\N
271	ikhsan@pt-sena.co.id	$2a$12$xvNqgoVNTKZdmr.RoUBxwumgcSDmeGvF0GWOPTgBijqX9zyd1qVw2	\N	\N	\N	2023-08-28 02:22:48.674857	2023-08-28 02:22:48.674857	\N	ikhsan	t	\N	\N
272	ikram@pt-sena.co.id	$2a$12$hor4BCgUjbcB/UcebRWPXuc2OuJCD/xduFjrq9XXK943k5rYRRfdC	\N	\N	\N	2023-08-28 02:22:49.06224	2023-08-28 02:22:49.06224	\N	ikram	t	\N	\N
273	ilham.anugrah@pt-sena.co.id	$2a$12$e/Ae73iTShuDgeLJJVwqYuU1H1QwjVxc2C21aOkkDGI4PmPYXl9mC	\N	\N	\N	2023-08-28 02:22:49.461854	2023-08-28 02:22:49.461854	\N	ilham.anugrah	t	\N	\N
274	imam.mutaqin@pt-sena.co.id	$2a$12$lZxr/Qe3EeiRUiNxIk9HTuIzP2psRY4FgmKP9NOtjDCWIqlhLRUcC	\N	\N	\N	2023-08-28 02:22:49.873846	2023-08-28 02:22:49.873846	\N	imam.mutaqin	t	\N	\N
275	imamil.qisthi@pt-sena.co.id	$2a$12$MOqbh3BljdcjJPriL61un.Xbfvv74irxpwsPcmTL3w9jYova71XLK	\N	\N	\N	2023-08-28 02:22:50.262147	2023-08-28 02:22:50.262147	\N	imamil.qisthi	t	\N	\N
276	angraini.indah@pt-sena.co.id	$2a$12$3G9mWWsfB7kqPKNMfvqbVOvcj865GBEDc2xA6fwsqln6X55JO2xEq	\N	\N	\N	2023-08-28 02:22:50.70581	2023-08-28 02:22:50.70581	\N	angraini.indah	t	\N	\N
277	indira@pt-sena.co.id	$2a$12$LYGnBP8tuvUePbAH0qXo3.ylgeinuw1NHeLsfg7H9Aq80IPngrnAG	\N	\N	\N	2023-08-28 02:22:51.15091	2023-08-28 02:22:51.15091	\N	indira	t	\N	\N
278	indria.sari@pt-sena.co.id	$2a$12$QiKWel5n6M.0TFo5nlEAreHxYcF7SMhyHaxoM9agTZ6PLLhX0pQF2	\N	\N	\N	2023-08-28 02:22:51.549792	2023-08-28 02:22:51.549792	\N	indria.sari	t	\N	\N
279	inggit.frin@pt-sena.co.id	$2a$12$Su.wLkPpRwoVr73qbxQH4ueL54rhbHf0zXnxDHx70HT4kPmHUt/4i	\N	\N	\N	2023-08-28 02:22:51.936249	2023-08-28 02:22:51.936249	\N	inggit.frin	t	\N	\N
280	intan.pdewin@pt-sena.co.id	$2a$12$FFoBjQoL8vKU2FQrzWHyyuHaebnXFfWfB/9htXLF5TliodbI4ptq.	\N	\N	\N	2023-08-28 02:22:52.326571	2023-08-28 02:22:52.326571	\N	intan.pdewin	t	\N	\N
281	intanpermatasarii242@gmail.com	$2a$12$UltMWj1FLW7RYxEFIah36OEAEZf3wwsaLqIK4GnT4v0kINq0Vy9yK	\N	\N	\N	2023-08-28 02:22:52.72246	2023-08-28 02:22:52.72246	\N	intanpermatasarii242	t	\N	\N
282	ipung@pt-sena.co.id	$2a$12$Uprgd9SzNYwXFElFJtkb/e2m490YhVyJJAPugkj6O0Ji8Wri.oxRK	\N	\N	\N	2023-08-28 02:22:53.11156	2023-08-28 02:22:53.11156	\N	ipung	t	\N	\N
283	hari.mukti@pt-sena.co.id	$2a$12$51MGVaGnhJIqkNhfu1jiJ.wlOlqG8dIl7J8kNGYZF2e1jM5CWgiYG	\N	\N	\N	2023-08-28 02:22:53.505124	2023-08-28 02:22:53.505124	\N	hari.mukti	t	\N	\N
284	budi.setiawan@pt-sena.co.id	$2a$12$a7MykUS5/l.A8iAmeH9ZCODNZxrwPL8HAunJ.nuAkCW53.t7WuqfK	\N	\N	\N	2023-08-28 02:22:53.898712	2023-08-28 02:22:53.898712	\N	budi.setiawan	t	\N	\N
285	triiriyanto@yahoo.com	$2a$12$UXeq3PAac8IlYydkSJUGcOBHrkH3o314Df7MpLrUIxAsLDqwEs4va	\N	\N	\N	2023-08-28 02:22:54.290815	2023-08-28 02:22:54.290815	\N	triiriyanto	t	\N	\N
286	maza747@gmail.com	$2a$12$7Xvxz3InUnHs2xSi1OSSpO6LNwHvTqNj6ZTLhDGhS.8Qokg0Z8v7a	\N	\N	\N	2023-08-28 02:22:54.715897	2023-08-28 02:22:54.715897	\N	maza747	t	\N	\N
287	oni.sondia@pt-sena.co.id	$2a$12$sDtIedZnfCMqx.w6DsZUqO6DCu4dhdA2SNrm2uqzAEimJZjqECn..	\N	\N	\N	2023-08-28 02:22:55.101956	2023-08-28 02:22:55.101956	\N	oni.sondia	t	\N	\N
288	asikin.effendi@pt-sena.co.id	$2a$12$fwQAcTGq4RMtUwWYmHDmh.b7gmO2BIVvYbWfBsvHdCSiKtii9d09C	\N	\N	\N	2023-08-28 02:22:55.492546	2023-08-28 02:22:55.492546	\N	asikin.effendi	t	\N	\N
289	m.gadhafi@pt-sena.co.id	$2a$12$DHhts86x.NNjrg/mSi5GjurNohknpnUsKuOm7/YFw8DGv0JPlG3E.	\N	\N	\N	2023-08-28 02:22:55.887357	2023-08-28 02:22:55.887357	\N	m.gadhafi	t	\N	\N
290	kunto.murdianto@pt-sena.co.id	$2a$12$UqNiXY5W1qypTqudMmbNIu9sNYECkyyGLFT9Ex10mnMoNo9OtIkg2	\N	\N	\N	2023-08-28 02:22:56.278635	2023-08-28 02:22:56.278635	\N	kunto.murdianto	t	\N	\N
291	rudy.ihwan@pt-sena.co.id	$2a$12$VVQIYREGjjREOlnve0FBGe7hSMG9oOs48lgpiIxcPGmjofxOtZovy	\N	\N	\N	2023-08-28 02:22:56.670337	2023-08-28 02:22:56.670337	\N	rudy.ihwan	t	\N	\N
292	iren22anggrian@gmail.com	$2a$12$hLeuwxDFjcr21QN25kxKheP6qhifgVESCfCWmYE3HC3E42bYOwRwe	\N	\N	\N	2023-08-28 02:22:57.057732	2023-08-28 02:22:57.057732	\N	iren22anggrian	t	\N	\N
293	irfaan.taufiiqul@pt-sena.co.id	$2a$12$fx9AhyYfW35Za1MDQJNRBeM7Q6pLTAozwsc5F0hDYABAlIzC8Aoy6	\N	\N	\N	2023-08-28 02:22:57.442295	2023-08-28 02:22:57.442295	\N	irfaan.taufiiqul	t	\N	\N
294	ifirmansyh@gmail.com	$2a$12$YiLFY8rHU5bXTqPhtDiWVeNs6b1fLOuTqaDf3DAUkorY9UBCPfABK	\N	\N	\N	2023-08-28 02:22:57.836075	2023-08-28 02:22:57.836075	\N	ifirmansyh	t	\N	\N
295	irfandi.adiatama@pt-sena.co.id	$2a$12$71D3dIjdckXZtK/f.fK8E.4JifScwle.Xvf/6.gLgeKKD15.GUnCS	\N	\N	\N	2023-08-28 02:22:58.222288	2023-08-28 02:22:58.222288	\N	irfandi.adiatama	t	\N	\N
296	irfani.arifia@pt-sena.co.id	$2a$12$AupB1LMsbVNJs9Y6X3ezPO5R7dS1C2g/5QDQoPgW.zUQM.1.yRpfG	\N	\N	\N	2023-08-28 02:22:58.611597	2023-08-28 02:22:58.611597	\N	irfani.arifia	t	\N	\N
297	fhoniman@gmail.com	$2a$12$xe3X6HEjbfmhNox96fF1FeOWaWIhHWFoVNJ/.yx6keqPVj8W2L/9u	\N	\N	\N	2023-08-28 02:22:59.003717	2023-08-28 02:22:59.003717	\N	fhoniman	t	\N	\N
298	irma.olivia@pt-sena.co.id	$2a$12$szB9xsHPlq4jrZNgD..L2OntjS/EddATiMUDZXmPWg0Yvm56raPnC	\N	\N	\N	2023-08-28 02:22:59.389678	2023-08-28 02:22:59.389678	\N	irma.olivia	t	\N	\N
299	irvaneridhani@gmail.com	$2a$12$P27J9KxmpgLPywJktU27QeoOgMJCmdMJx0w/tCoPuw8BN9eHpr5R6	\N	\N	\N	2023-08-28 02:22:59.776396	2023-08-28 02:22:59.776396	\N	irvaneridhani	t	\N	\N
300	irvandwicahyanto@gmail.com	$2a$12$zqxwTgczD5ZpRNuUBH.cKeLeEgRGfSSpVbuElcW.kDvpItas3INp.	\N	\N	\N	2023-08-28 02:23:00.1631	2023-08-28 02:23:00.1631	\N	irvandwicahyanto	t	\N	\N
301	irwanrusmawan097@gmail.com	$2a$12$gmD6H9u8DQj.dzZ8qBbQOu9nM96DBsHVfcV6Q7jga9PWKShEENBH.	\N	\N	\N	2023-08-28 02:23:00.547074	2023-08-28 02:23:00.547074	\N	irwanrusmawan097	t	\N	\N
302	iryanni.tanto@pt-sena.co.id	$2a$12$D.xCoj3sg2HDfkaHwjuX7OkX9zsbvHW3EeEtTpu1BoLsaVex9MlDO	\N	\N	\N	2023-08-28 02:23:00.945219	2023-08-28 02:23:00.945219	\N	iryanni.tanto	t	\N	\N
303	iwan.wijanarko@pgn-solution.co.id	$2a$12$UQgPP.h8aGIFjy/DiBOky.kBqo5z9TnCqlXDV/9utW5UhFE/Zjrli	\N	\N	\N	2023-08-28 02:23:01.331407	2023-08-28 02:23:01.331407	\N	iwan.wijanarko	t	\N	\N
304	iwan.jamaludin@pt-sena.co.id	$2a$12$5hy6aVrj/T3quMHJc5LimOHOl1d8YiOilpWegYVnmZfIzrqkn944q	\N	\N	\N	2023-08-28 02:23:01.72478	2023-08-28 02:23:01.72478	\N	iwan.jamaludin	t	\N	\N
305	jahnawi.wasisto@pt-sena.co.id	$2a$12$uDi7NFqdRidsJoISo5CEN.fFkGvU.8E0Q.08MTLx3JUaXRLqTBg6C	\N	\N	\N	2023-08-28 02:23:02.129045	2023-08-28 02:23:02.129045	\N	jahnawi.wasisto	t	\N	\N
306	jasillatul.hikmiyah@pt-sena.co.id	$2a$12$c0YtDqm88CBZOly38jbuq.mo0J3/IMIFY/3nK/c6dKPAuUTVvBhB2	\N	\N	\N	2023-08-28 02:23:02.532195	2023-08-28 02:23:02.532195	\N	jasillatul.hikmiyah	t	\N	\N
307	jecky@pt-sena.co.id	$2a$12$rs/lVvpV0kJfwDjgqCmQjOsb.vLX/4AigxxPEGTGBt5nP4tb4df3e	\N	\N	\N	2023-08-28 02:23:02.936651	2023-08-28 02:23:02.936651	\N	jecky	t	\N	\N
308	satya6156@gmail.com	$2a$12$n8CuolU.bmMVEP9rOjSpbOTJkRX/p/s6DI4CyFJGStff6QPAa4sSC	\N	\N	\N	2023-08-28 02:23:03.341868	2023-08-28 02:23:03.341868	\N	satya6156	t	\N	\N
309	jokosan0686@gmail.com	$2a$12$wQKanZSvdi8wO13jcIV9.e5c4Mrzx8cWIUtkyNaZWWDq6vBvASsD2	\N	\N	\N	2023-08-28 02:23:03.741336	2023-08-28 02:23:03.741336	\N	jokosan0686	t	\N	\N
310	jongguran@pt-sena.co.id	$2a$12$gT3p/9mD8Me2EG92s2TZietufSa9cEzvlgmiTVOJo54dy0zOQOLhm	\N	\N	\N	2023-08-28 02:23:04.156143	2023-08-28 02:23:04.156143	\N	jongguran	t	\N	\N
311	joni.oktavia@pt-sena.co.id	$2a$12$ZcFZClJ8jHS3wJMWyunQcOaAwUAEk8./1A1xjeHQvgYfKQJRbJmKC	\N	\N	\N	2023-08-28 02:23:04.570376	2023-08-28 02:23:04.570376	\N	joni.oktavia	t	\N	\N
312	jufraini@pt-sena.co.id	$2a$12$PRlhExbr/q05G6b3EPVZ9eb56X3bLypwEvBRD5Bq1V6UKYUYCB0Pe	\N	\N	\N	2023-08-28 02:23:05.004795	2023-08-28 02:23:05.004795	\N	jufraini	t	\N	\N
313	juhana.saham@pt-sena.co.id	$2a$12$q.iCbMxbP1yB7/ZgM/QG6uma7Cy5m0RXIfTFR612zQjPXphUntK1e	\N	\N	\N	2023-08-28 02:23:05.417505	2023-08-28 02:23:05.417505	\N	juhana.saham	t	\N	\N
314	junaedi.rachmat@pt-sena.co.id	$2a$12$5nOnPTE4tXBVwwzlOl7/XOUui3AFKCS38gRaOVz7QJ8nPtHGDO8Hy	\N	\N	\N	2023-08-28 02:23:05.843417	2023-08-28 02:23:05.843417	\N	junaedi.rachmat	t	\N	\N
315	azzahra.kania@pt-sena.co.id	$2a$12$7.7jTMubUkyZFhMMe7GtCOuQQo/VvlW.lixQdCnB5ehzViFPqzNJq	\N	\N	\N	2023-08-28 02:23:06.263515	2023-08-28 02:23:06.263515	\N	azzahra.kania	t	\N	\N
316	kardiman@pt-sena.co.id	$2a$12$1lLuWa6ZTgZcBloSvU6j6.8EYWLmwgq90rIN0XXmGL/8gxkWHASYm	\N	\N	\N	2023-08-28 02:23:06.677277	2023-08-28 02:23:06.677277	\N	kardiman	t	\N	\N
317	kartika.ayu@pt-sena.co.id	$2a$12$VSt0u4gO9APfhLXQ4Zy5TOXbb/BFkSFaPede7LhTVmnWLDPP3zgYG	\N	\N	\N	2023-08-28 02:23:07.086133	2023-08-28 02:23:07.086133	\N	Kartika.Ayu	t	\N	\N
318	karyadi@pt-sena.co.id	$2a$12$Uh6QsXLh3qGiQfJzFAnX4OGqQ1KiE.ZPRhdpbiKa933H.9.qzwL82	\N	\N	\N	2023-08-28 02:23:07.493431	2023-08-28 02:23:07.493431	\N	karyadi	t	\N	\N
319	karyanto@pt-sena.co.id	$2a$12$ijZbre9xPrrMkoWnJjVIOeFoxzRWN9esBGH0NNoVyrvSg4uUzKbCi	\N	\N	\N	2023-08-28 02:23:07.92951	2023-08-28 02:23:07.92951	\N	karyanto	t	\N	\N
320	khinski@pt-sena.co.id	$2a$12$2w1L.KsSdL3yX4Gfgs9zDescWHx1vqXXKZvF2abFgCq9wHXqlsJVa	\N	\N	\N	2023-08-28 02:23:08.349002	2023-08-28 02:23:08.349002	\N	khinski	t	\N	\N
321	khoirulaslamjm@gmail.com	$2a$12$C3UsJLXUJAFrmxOFZxDIVe4q35Tqq00/CkMxW.sfuMOrTsILcp9CO	\N	\N	\N	2023-08-28 02:23:08.755897	2023-08-28 02:23:08.755897	\N	khoirulaslamjm	t	\N	\N
322	st010dummy@sena.co.id	$2a$12$Op/D7iJ/EqUBUfchJjME6uCsNWSum4KedxL66O5k8cpGUYgiaPTtC	\N	\N	\N	2023-08-28 02:23:09.179085	2023-08-28 02:23:09.179085	\N	st010dummy	t	\N	\N
323	lailatul.masruroh@pt-sena.co.id	$2a$12$2K58wQL7ujnE0D9LLTvw8umwhxC77opkrTbylyKPNiATGuS9lk3fG	\N	\N	\N	2023-08-28 02:23:09.586172	2023-08-28 02:23:09.586172	\N	lailatul.masruroh	t	\N	\N
324	laras.guntur@pt-sena.co.id	$2a$12$TOYLanDfrYIt9yGmAPQELellfc3HJtzQSkQL0rcYDIioP4EEbDzIG	\N	\N	\N	2023-08-28 02:23:09.988758	2023-08-28 02:23:09.988758	\N	laras.guntur	t	\N	\N
325	lavierda.amorita@pt-sena.co.id	$2a$12$BeinHoqZ7lmEe3w8kEZAhOdP/pfN9UAVo4Z/L/aIdMzc4O3j7gDWa	\N	\N	\N	2023-08-28 02:23:10.399446	2023-08-28 02:23:10.399446	\N	lavierda.amorita	t	\N	\N
326	lilin.eria@pt-sena.co.id	$2a$12$2Z9F3HrCR10/2/s9FlSq7.dbenELGXymBZSkit3sNbT2W/gE7Ug2K	\N	\N	\N	2023-08-28 02:23:10.785916	2023-08-28 02:23:10.785916	\N	lilin.eria	t	\N	\N
327	lisa.novryanti@pt-sena.co.id	$2a$12$5Kuy.LQJSTIIRc6c9weAWOMrcLwmbtKlxNpX/uhK4ppfBdpSnkA76	\N	\N	\N	2023-08-28 02:23:11.18534	2023-08-28 02:23:11.18534	\N	lisa.novryanti	t	\N	\N
328	lisa.chandra@pt-sena.co.id	$2a$12$ThMJHD308ao/7cUJiJqLEO2RUjzmU.cONNVPfbGCG9XZ4qtZ86u5C	\N	\N	\N	2023-08-28 02:23:11.601537	2023-08-28 02:23:11.601537	\N	lisa.chandra	t	\N	\N
329	listyo.nugroho@pgn-solution.co.id	$2a$12$85XZbEk67GyInV/nBXmOFuk56SaE3ERiu.B31FgwayEUtORlFoSea	\N	\N	\N	2023-08-28 02:23:12.020891	2023-08-28 02:23:12.020891	\N	listyo.nugroho	t	\N	\N
330	ludiushuludin15@gmail.com	$2a$12$6PTJlKzCZI.hABAV1LIhh.VnlicWCRjz2P8OQceLlJZbMxd62LjxW	\N	\N	\N	2023-08-28 02:23:12.501401	2023-08-28 02:23:12.501401	\N	ludiushuludin15	t	\N	\N
331	lpanggalih@gmail.com	$2a$12$jOUQo8MSS2Gh.j89xOv1BOgIbLKtndxG6K26dJyen/qbF/3zWsndG	\N	\N	\N	2023-08-28 02:23:12.910529	2023-08-28 02:23:12.910529	\N	lpanggalih	t	\N	\N
332	lutfiana.damayanti@pt-sena.co.id	$2a$12$pGlTGKUu9sXsZBrxuMiMnuN8eceWO8AQxH4dy18bq7jbM30bol4Ra	\N	\N	\N	2023-08-28 02:23:13.336848	2023-08-28 02:23:13.336848	\N	lutfiana.damayanti	t	\N	\N
333	luthfi.estika@gmail.com	$2a$12$P32hMd3/lqfZTgJsJcyLR.6G9nhC2AVRX.tuPHrQ6O5ory1IwV1X.	\N	\N	\N	2023-08-28 02:23:13.730395	2023-08-28 02:23:13.730395	\N	luthfi.estika	t	\N	\N
334	lydia@pt-sena.co.id	$2a$12$D5JEMVBKKzEOPcHMzSRuBubCgQvTbZG1wiUUb0XrgfBW52H9hDcfm	\N	\N	\N	2023-08-28 02:23:14.115513	2023-08-28 02:23:14.115513	\N	lydia	t	\N	\N
335	iqbal.zydni@pt-sena.co.id	$2a$12$0P60uLnpri/FEbs4Ma74F.qCkwTQ6EOVcMb.2YDW.9cWEVUc8WIfu	\N	\N	\N	2023-08-28 02:23:14.504886	2023-08-28 02:23:14.504886	\N	iqbal.zydni	t	\N	\N
336	gunawan.raditya@pt-sena.co.id	$2a$12$njA8h4sHKp2mdt8qPMk27.sE3IC7GoqTklniy0oQqlrOZpgkVqp32	\N	\N	\N	2023-08-28 02:23:14.916925	2023-08-28 02:23:14.916925	\N	gunawan.raditya	t	\N	\N
337	rizki.kurniawan@pt-sena.co.id	$2a$12$s956pptQuJXObM3xw..xg.UdFnkXoJ.81OExB2BK5lEWdrRTbdjKW	\N	\N	\N	2023-08-28 02:23:15.32343	2023-08-28 02:23:15.32343	\N	rizki.kurniawan	t	\N	\N
338	m.nurichsan@pt-sena.co.id	$2a$12$FbEi4rHAAFqfO2o3ucZHwOkO/45Ax0crlmZzUQuRxSuHWmTdeJSge	\N	\N	\N	2023-08-28 02:23:15.724041	2023-08-28 02:23:15.724041	\N	m.nurichsan	t	\N	\N
339	m.ikhsan@pt-sena.co.id	$2a$12$/eiVTmv6kjHpXvEinzM4AeUbISLYHQaAoDIM3d/uLcNc4xF/cMC8C	\N	\N	\N	2023-08-28 02:23:16.129108	2023-08-28 02:23:16.129108	\N	m.ikhsan	t	\N	\N
340	wahyu.ramadhan@pt-sena.co.id	$2a$12$Ys8Wug.S1GDSn1w9V2aGtOJo0C0IDdUNMJ5s1kx..0Tw317Fu2zru	\N	\N	\N	2023-08-28 02:23:16.529519	2023-08-28 02:23:16.529519	\N	wahyu.ramadhan	t	\N	\N
341	tri.utama@pt-sena.co.id	$2a$12$Tur7LVBK72/BBoKCZYPeCeH7QzPIO3Pdba3hs6GyDjtvrZtU96s8i	\N	\N	\N	2023-08-28 02:23:16.936255	2023-08-28 02:23:16.936255	\N	tri.utama	t	\N	\N
342	rauf.syafriyyin@pt-sena.co.id	$2a$12$KM/TpfcxA6yrCt3ttovy9OmDfIQP9cMTbdQARam8E/po.bEfkQgKi	\N	\N	\N	2023-08-28 02:23:17.325566	2023-08-28 02:23:17.325566	\N	rauf.syafriyyin	t	\N	\N
343	m.alfisyahr@pt-sena.co.id	$2a$12$uMeJjb6A4YaY9l.Oe7ElC.wiY0q1I0mTKPRgLCrrpwrzKAKKy.U.W	\N	\N	\N	2023-08-28 02:23:17.715525	2023-08-28 02:23:17.715525	\N	m.alfisyahr	t	\N	\N
344	madzharianwar@gmail.com	$2a$12$oz.gCrTbUuObzcv5GPqRM.RjkCcRKMQhQOjBog6bXl0JfjrjXslVK	\N	\N	\N	2023-08-28 02:23:18.099614	2023-08-28 02:23:18.099614	\N	madzharianwar	t	\N	\N
345	maesanipazriati28@gmail.com	$2a$12$lT/is8BkmLDS4E.muf30reE3946bqE1zWHokFXgxgocS1A86pnZm6	\N	\N	\N	2023-08-28 02:23:18.504185	2023-08-28 02:23:18.504185	\N	maesanipazriati28	t	\N	\N
346	mahish.amri@pt-sena.co.id	$2a$12$3ylcYyGN0mfW7.b0E7Pm7.xIMpMswT.89g2iS4fMFrd8.Udv7Uxtq	\N	\N	\N	2023-08-28 02:23:18.890175	2023-08-28 02:23:18.890175	\N	mahish.amri	t	\N	\N
347	mahmudrafter1965@gmail.com	$2a$12$DdEhq4JdZgn/8u/LyqAxYeSaNtXzXmjHURyPYfn3LBXrv/UQmC0A2	\N	\N	\N	2023-08-28 02:23:19.278438	2023-08-28 02:23:19.278438	\N	mahmudrafter1965	t	\N	\N
348	marhani.khurniasari@gmail.com	$2a$12$jKgMk.MtGFsV1pOHp3NzFufkyGiEWIfdgSx/zcOvIeG0TxoivNwnS	\N	\N	\N	2023-08-28 02:23:19.669359	2023-08-28 02:23:19.669359	\N	marhani.khurniasari	t	\N	\N
349	maria.stella@pt-sena.co.id	$2a$12$ddZZW8zs6a8LCewbWggW4.Md9FtdFVnY2ODaRgaPcDPWxNAX5e7cO	\N	\N	\N	2023-08-28 02:23:20.05979	2023-08-28 02:23:20.05979	\N	maria.stella	t	\N	\N
350	marsella@pt-sena.co.id	$2a$12$lky9ZG9wMDqMZpuca7.sr.S4jnhtA7Aq2ktrf3vxNsZx7xZNfABhO	\N	\N	\N	2023-08-28 02:23:20.44404	2023-08-28 02:23:20.44404	\N	marsella	t	\N	\N
351	martina.widya@pt-sena.co.id	$2a$12$LAHYcHtj/4NWjGWFaUJZ4uwcwu9Rq1/Erbhh8cEonBrfsdPV5QYCK	\N	\N	\N	2023-08-28 02:23:20.832623	2023-08-28 02:23:20.832623	\N	martina.widya	t	\N	\N
352	maul.dwi@pt-sena.co.id	$2a$12$1tcnb0ZFuI6xuEQapmtMfuM0dHCxdGWNnepQutbeEEqwRE8BLB.x2	\N	\N	\N	2023-08-28 02:23:21.257324	2023-08-28 02:23:21.257324	\N	maul.dwi	t	\N	\N
353	maulana.ibrahim@pt-sena.co.id	$2a$12$9FVwOG0MQD1GD5kXhmws1.j7GWxy7tWPPrJtDi4UhGgXB3wiyNmxG	\N	\N	\N	2023-08-28 02:23:21.653471	2023-08-28 02:23:21.653471	\N	maulana.ibrahim	t	\N	\N
354	mmasyitah@yahoo.com	$2a$12$6ZRifRSX5e1MoE349Oqjg.z3Dxek5faysTeXtBL0JlgdYsItk5.Yq	\N	\N	\N	2023-08-28 02:23:22.048162	2023-08-28 02:23:22.048162	\N	mmasyitah	t	\N	\N
355	mayafebrian@gmail.com	$2a$12$yJvEAYin6kDsocmZGFan8O0A3TsbozP/rp95VC.jI5QVRp/96uQ7.	\N	\N	\N	2023-08-28 02:23:22.437465	2023-08-28 02:23:22.437465	\N	mayafebrian	t	\N	\N
356	melanie.petricia@pt-sena.co.id	$2a$12$1Zv049fazfOY.k8YhZC4puHYaJpMIqj5BgPT7ySWNMkjTmaWQGirS	\N	\N	\N	2023-08-28 02:23:22.831631	2023-08-28 02:23:22.831631	\N	melanie.petricia	t	\N	\N
357	miftahussyifak21@gmail.com	$2a$12$I0pOFgjkY3Kjed6zas58LOfsEBb/pD84rCrhupKUZ7JX/KOXmHk4W	\N	\N	\N	2023-08-28 02:23:23.226047	2023-08-28 02:23:23.226047	\N	miftahussyifak21	t	\N	\N
358	mirliansyah@pt-sena.co.id	$2a$12$yF67mqZ3.6bYDG1F6JRk6.y1E2z2GE5M7H.xP9FjnfF076DWOBYtK	\N	\N	\N	2023-08-28 02:23:23.662374	2023-08-28 02:23:23.662374	\N	mirliansyah	t	\N	\N
359	rachmamismail57@gmail.com	$2a$12$5xa.GK/SDLgeOK4u5NJCJuc./ZbnsQvuddrbG5wrbNpF1Hyy0aIXm	\N	\N	\N	2023-08-28 02:23:24.091947	2023-08-28 02:23:24.091947	\N	Rachmamismail57	t	\N	\N
360	moch.faisal@pt-sena.co.id	$2a$12$wEPJfsGS/PHvAmmPFe9fPeBC0gfn2PuzrN9lUm79fED3YocVE/zaO	\N	\N	\N	2023-08-28 02:23:24.480712	2023-08-28 02:23:24.480712	\N	moch.faisal	t	\N	\N
361	moch.arifin@pt-sena.co.id	$2a$12$EtTWGHtA0Gw5mQ91AoiZ1e773HgS89c/WTnTfzb5K9rYWyDmHRgt6	\N	\N	\N	2023-08-28 02:23:24.878431	2023-08-28 02:23:24.878431	\N	moch.arifin	t	\N	\N
362	moch.ardiansyah@pgn-solution.co.id	$2a$12$XQBIDtMBryG1..lj1JEHQexhq4xobmRvKOMQYweOdlZf39I2IzVmG	\N	\N	\N	2023-08-28 02:23:25.288142	2023-08-28 02:23:25.288142	\N	moch.ardiansyah	t	\N	\N
363	mochammad.hadi@pt-sena.co.id	$2a$12$jFQ5WgmdrxAuDpVREF6EkulcurE0Pmy3SXdpUk.sGxKoKouMH0D1q	\N	\N	\N	2023-08-28 02:23:25.683168	2023-08-28 02:23:25.683168	\N	mochammad.hadi	t	\N	\N
364	kafi.tf10@gmail.com	$2a$12$S61QJ2wL5eNp4yk9KWY3W.FWygvXXVn3.o80lF9qyQH1PlIRjS34S	\N	\N	\N	2023-08-28 02:23:26.087658	2023-08-28 02:23:26.087658	\N	kafi.tf10	t	\N	\N
365	mogamaulanam95@gmail.com	$2a$12$DRXy4BuCl7qQdtcu4TXzzemH4hbrcMTY.IqpW7E0adb8DwxcciYXG	\N	\N	\N	2023-08-28 02:23:26.477307	2023-08-28 02:23:26.477307	\N	mogamaulanam95	t	\N	\N
366	affanumarul@gmail.com	$2a$12$JVFB8ciFabmfrZyb7gR1yuY5k2OwAy2GuPOXNoZoGWzfKxwGd/Smm	\N	\N	\N	2023-08-28 02:23:26.883013	2023-08-28 02:23:26.883013	\N	affanumarul	t	\N	\N
367	m.sefrijanto@pt-sena.co.id	$2a$12$xWvIophY17NH5E5mSVSk2uDxTsSFXifssT4FvMCRysn4xk79O4OKi	\N	\N	\N	2023-08-28 02:23:27.273767	2023-08-28 02:23:27.273767	\N	m.sefrijanto	t	\N	\N
368	fadilwicaksono96@gmail.com	$2a$12$Ya60S/fhMi4j5Q.u0f7Cmuppzu2EJvC9z514uBjy/EXbvp.GF45k.	\N	\N	\N	2023-08-28 02:23:27.659101	2023-08-28 02:23:27.659101	\N	fadilwicaksono96	t	\N	\N
370	mohammad.rois@pt-sena.co.id	$2a$12$/kOkEXVtaJ8MT0GwieQhmuoRQGXewCpY22FB65gUUiOe/0Zgdyuay	\N	\N	\N	2023-08-28 02:23:28.437086	2023-08-28 02:23:28.437086	\N	mohammad.rois	t	\N	\N
371	m.rony@pt-sena.co.id	$2a$12$JxFGTur8e27xpdOWa6Mq8ef1aaTioHJ3r8KmTXrWGY69OfJgr9Qym	\N	\N	\N	2023-08-28 02:23:28.82883	2023-08-28 02:23:28.82883	\N	m.rony	t	\N	\N
372	mohammad.ibnu@pt-sena.co.id	$2a$12$jtF1Ol3EsSXI7KoaxZsyWedS6egbLmFEZlFVH9u2emixsVIokQ7E2	\N	\N	\N	2023-08-28 02:23:29.21982	2023-08-28 02:23:29.21982	\N	mohammad.ibnu	t	\N	\N
373	rizkyneviwizanda@gmail.com	$2a$12$OfHO6sC0JryVjpPB43u.t.Np0jat.XZX9G5U.qF2jWFbmJxmr94/q	\N	\N	\N	2023-08-28 02:23:29.605231	2023-08-28 02:23:29.605231	\N	rizkyneviwizanda	t	\N	\N
374	mohammad.darwis@pt-sena.co.id	$2a$12$Kfa070WtgI/FeLM08O4OgeIMV9.utK7J./WEApbcpVcBUSybk7eTS	\N	\N	\N	2023-08-28 02:23:29.994121	2023-08-28 02:23:29.994121	\N	mohammad.darwis	t	\N	\N
375	m.jamil@pt-sena.co.id	$2a$12$5NAbtl8lpWowy2wpIXFMFuI1w7jMrwZLytMzfucudxt2hol5dNd.6	\N	\N	\N	2023-08-28 02:23:30.380675	2023-08-28 02:23:30.380675	\N	m.jamil	t	\N	\N
376	muhajirin@pt-sena.co.id	$2a$12$AaaccYx/iVJazqhlmq4jVeui7dOwzWjoVF46Q9LZb7YHfR5q8kNn.	\N	\N	\N	2023-08-28 02:23:30.769565	2023-08-28 02:23:30.769565	\N	muhajirin	t	\N	\N
378	m.dani@pt-sena.co.id	$2a$12$1ar3ROxhsYUwDsn031IA1OauS9tscaFV0IQSXIZIY1P2pjb6FqUv.	\N	\N	\N	2023-08-28 02:23:31.551844	2023-08-28 02:23:31.551844	\N	m.dani	t	\N	\N
379	muhammad.saepudin@pt-sena.co.id	$2a$12$4a15DJ5MQMgar2CJpxSjMu9m.npwfqNm6tWSUf8A4v/ev9WymvUbO	\N	\N	\N	2023-08-28 02:23:31.941096	2023-08-28 02:23:31.941096	\N	muhammad.saepudin	t	\N	\N
380	muhamad.agus@pt-sena.co.id	$2a$12$4nqnJPPehtqHGCGgbGu48.oIlvyLmQCFX1CMiVgkXvH8eITW4vgzC	\N	\N	\N	2023-08-28 02:23:32.325468	2023-08-28 02:23:32.325468	\N	muhamad.agus	t	\N	\N
381	muhammad.hilman@pt-sena.co.id	$2a$12$EJCQULy7B6OJFpotDUxSueUTbO7.AgAvXuHFRIexyz1e92ionWq46	\N	\N	\N	2023-08-28 02:23:32.709839	2023-08-28 02:23:32.709839	\N	muhammad.hilman	t	\N	\N
382	gusti.randa@pt-sena.co.id	$2a$12$JeOthckYdX6NY0PJwRiBMuNqLrftDIAviVT7A9t3WlxfpoaCv3mqC	\N	\N	\N	2023-08-28 02:23:33.098679	2023-08-28 02:23:33.098679	\N	gusti.randa	t	\N	\N
383	m.abdurrahman@pt-sena.co.id	$2a$12$1CGflh7e6gAkPxo9rwG7Ku9HViH4zFhGVluvDc1YwYVbX6rQx9xNW	\N	\N	\N	2023-08-28 02:23:33.491814	2023-08-28 02:23:33.491814	\N	m.abdurrahman	t	\N	\N
384	m.arbi@pt-sena.co.id	$2a$12$B.R1ecCVAOApCuUzEWkrNeA6x7zj5N7F5pqp0tRpuo4tDroM/nBge	\N	\N	\N	2023-08-28 02:23:33.882153	2023-08-28 02:23:33.882153	\N	m.arbi	t	\N	\N
385	yusuf.jamil@pt-sena.co.id	$2a$12$89TwocJTwkbPWNiFG9UOXuVW.rLzc/RG7AKadrdfK4dP5pQwkFsw6	\N	\N	\N	2023-08-28 02:23:34.296511	2023-08-28 02:23:34.296511	\N	yusuf.jamil	t	\N	\N
386	m.yusuf@pt-sena.co.id	$2a$12$jSzCXSlJOtHpJLOgP3i0Yurqm.EmWkdWgHpJ0HFiTbOBho6pkbtK6	\N	\N	\N	2023-08-28 02:23:34.684055	2023-08-28 02:23:34.684055	\N	m.yusuf	t	\N	\N
387	fuadyumar16@gmail.com	$2a$12$d.Ea3w/kplZyX6Y48rth1O0sUjcbFc/sFfropuYumyahaPCfv0GhG	\N	\N	\N	2023-08-28 02:23:35.075753	2023-08-28 02:23:35.075753	\N	fuadyumar16	t	\N	\N
388	muhammad.zamzam@pt-sena.co.id	$2a$12$D7n9hvDS8S71vhqBWLrIM.AH4pX/vPmZiW4zxTjfub5tlmoiC9oFK	\N	\N	\N	2023-08-28 02:23:35.465459	2023-08-28 02:23:35.465459	\N	muhammad.zamzam	t	\N	\N
389	muhammad.gilang@pt-sena.co.id	$2a$12$4xyL4PP6xw2Cm2zZ6phMeexng5omUaHZO70BWZTnz1WH3uefqQarm	\N	\N	\N	2023-08-28 02:23:35.861747	2023-08-28 02:23:35.861747	\N	muhammad.gilang	t	\N	\N
390	muhammadalfannoor@gmail.com	$2a$12$i8hU5ZWYfD8eei8IPM8Bge/s.yXOKTUjVP6GRFPReoywdwMaBKFgO	\N	\N	\N	2023-08-28 02:23:36.254424	2023-08-28 02:23:36.254424	\N	muhammadalfannoor	t	\N	\N
391	mkhosim91@gmail.com	$2a$12$maxwivX7PiczhwWD5f.ZDuCpZ6DumZu7newgJcmr7zRQlPN0wSnJ6	\N	\N	\N	2023-08-28 02:23:36.639152	2023-08-28 02:23:36.639152	\N	mkhosim91	t	\N	\N
392	muhammad.zahran@pt-sena.co.id	$2a$12$2pjWKh24KG5eBdgIJPHnGew4R1488CCRhQ4toV/MnMddxvYRSopZ6	\N	\N	\N	2023-08-28 02:23:37.031172	2023-08-28 02:23:37.031172	\N	muhammad.zahran	t	\N	\N
393	muhamadbaihaqi40@gmail.com	$2a$12$009anUvtE4HDV.EyQrXXVeJjek9Qg8Rfy33jA3OlYIar1izVr8yBG	\N	\N	\N	2023-08-28 02:23:37.420522	2023-08-28 02:23:37.420522	\N	muhamadbaihaqi40	t	\N	\N
394	muhammadvazra@gmail.com	$2a$12$U13x0KV7SX1M0vy4Gi03jeLYtRMFscsJUz8uLo08Vjkv6RgHnupZS	\N	\N	\N	2023-08-28 02:23:37.806682	2023-08-28 02:23:37.806682	\N	muhammadvazra	t	\N	\N
395	muhammad.huda@pt-sena.co.id	$2a$12$0b7U.NvJ61z6c27QBo29B.VNllH1X.U0s3IxChjiI9RLNPQmyDmAi	\N	\N	\N	2023-08-28 02:23:38.197251	2023-08-28 02:23:38.197251	\N	muhammad.huda	t	\N	\N
396	m.solihin@pt-sena.co.id	$2a$12$TDTKc6z23V12fSF28e1NF.NiOpJu9HKfazgaatV9iL98lhmSz4R3G	\N	\N	\N	2023-08-28 02:23:38.587707	2023-08-28 02:23:38.587707	\N	m.solihin	t	\N	\N
397	kausar.alwi@gmail.com	$2a$12$8fEd2YN6v/ovsdt1/922SOvRsjhvsqr0G1eQQSYDMAhkwlSHp9A3W	\N	\N	\N	2023-08-28 02:23:38.975105	2023-08-28 02:23:38.975105	\N	kausar.alwi	t	\N	\N
398	acancivil@gmail.com	$2a$12$XcPOU7FH3HEq4N5adWWdpOB6UfGHCSoAj0mHkoiuVVnLAZ4Hd3Uri	\N	\N	\N	2023-08-28 02:23:39.362336	2023-08-28 02:23:39.362336	\N	acancivil	t	\N	\N
399	ernawanmuhammad29@gmail.com	$2a$12$l4f55rv.bCcxuH..UHyBouQos8/MxhAzMlBDTG2u173.k9pRNf.SW	\N	\N	\N	2023-08-28 02:23:39.747697	2023-08-28 02:23:39.747697	\N	ernawanmuhammad29	t	\N	\N
400	muhammad.fauzi@pt-sena.co.id	$2a$12$yYQY.lWX9m67t2WcJk/vBODMfrnCYhkt0JSa6QHap9JxxlbDgWXqe	\N	\N	\N	2023-08-28 02:23:40.132038	2023-08-28 02:23:40.132038	\N	muhammad.fauzi	t	\N	\N
401	muhammad.jayyid@pt-sena.co.id	$2a$12$JNwNKgzBx1nouVK9dSajgO5nXhqIMStIZsT0A5pIXaI4bRFgyDnm.	\N	\N	\N	2023-08-28 02:23:40.52204	2023-08-28 02:23:40.52204	\N	muhammad.jayyid	t	\N	\N
403	muharrir@pt-sena.co.id	$2a$12$cw0e4A5tMDM0Fvp25sb52.smODHNBcgqOsBne6W2ZVvHXYOC6qERK	\N	\N	\N	2023-08-28 02:23:41.303367	2023-08-28 02:23:41.303367	\N	muharrir	t	\N	\N
404	muslim.ahmad@pt-sena.co.id	$2a$12$t4eVnNBxmcRFV3g0bCCape71zwIxnRi98dJ64Bt3Co.Qau6BPL8KO	\N	\N	\N	2023-08-28 02:23:41.698915	2023-08-28 02:23:41.698915	\N	muslim.ahmad	t	\N	\N
405	nabilamaliah19@gmail.com	$2a$12$VERG.dW0OdMSLVXT6GH8y.qL4SaQBJRN..DrntboQ/l.nwreiEwaS	\N	\N	\N	2023-08-28 02:23:42.09361	2023-08-28 02:23:42.09361	\N	nabilamaliah19	t	\N	\N
406	nada.syadza@pt-sena.co.id	$2a$12$AZyrCROBq6AKvia8ZQSmJ.39nVgKAU0ZZkyDsWv7W8NzH4SsJuRke	\N	\N	\N	2023-08-28 02:23:42.483391	2023-08-28 02:23:42.483391	\N	nada.syadza	t	\N	\N
407	nadhimtaufiqarrahman@gmail.com	$2a$12$O0vIznyJ7iCd6fEVBEBHH.WldDzIhGUsQJHiLMEeiwLPfdqlXM9SW	\N	\N	\N	2023-08-28 02:23:42.870791	2023-08-28 02:23:42.870791	\N	nadhimtaufiqarrahman	t	\N	\N
408	nadia.soraya@pgn-solution.co.id	$2a$12$BNoEnEyB8f22PP4.OOF6IO8VHCf9/SolkyAaF1solIZrzlK0.7k.u	\N	\N	\N	2023-08-28 02:23:43.264733	2023-08-28 02:23:43.264733	\N	nadia.soraya	t	\N	\N
409	nadivalionetta@gmail.com	$2a$12$zh4N/lB5LPKbVU7kiXpnSuFWrk7Se.gywP9kJ3uMvIFFe9ev/vzgW	\N	\N	\N	2023-08-28 02:23:43.665844	2023-08-28 02:23:43.665844	\N	nadivalionetta	t	\N	\N
410	abinanas050662@gmail.com	$2a$12$AbE/KhOdx.hh56eLK4Yd3.2u0jW42nIH/3LAXqx14hwwW84Q2V7ea	\N	\N	\N	2023-08-28 02:23:44.051791	2023-08-28 02:23:44.051791	\N	abinanas050662	t	\N	\N
411	nanangsuprayetno@gmail.com	$2a$12$CZ.5OTfY.qZcI6H9KNV/2uJyLWnwB6Evdk83x9tYRSAS8dM..s.7q	\N	\N	\N	2023-08-28 02:23:44.439078	2023-08-28 02:23:44.439078	\N	nanangsuprayetno	t	\N	\N
412	nandawidyawati14@gmail.com	$2a$12$Cadmnscu/5jBuvmjoPTlSuFi7ZTkzAzYbZjGIdJdRAs8l05PeIC/.	\N	\N	\N	2023-08-28 02:23:44.823614	2023-08-28 02:23:44.823614	\N	nandawidyawati14	t	\N	\N
413	nanda.rizky@pt-sena.co.id	$2a$12$59ErRqcZs6wvWSyMT7Xvk./I.5kkoPXm65wHGBuZvZEjymzJai.Ge	\N	\N	\N	2023-08-28 02:23:45.207458	2023-08-28 02:23:45.207458	\N	nanda.rizky	t	\N	\N
414	naufal.husnan@pt-sena.co.id	$2a$12$ooUUcpCJf3r2sjj9klf.neDwABu/wuTcNiuv.bCl8vutzIf9HauZW	\N	\N	\N	2023-08-28 02:23:45.596896	2023-08-28 02:23:45.596896	\N	naufal.husnan	t	\N	\N
415	nazla.syafa@pt-sena.co.id	$2a$12$6c8krQnhgEEHnsLRWZ6a2OtxV4t2BfAEWNUihFoCaBenA136L1ht6	\N	\N	\N	2023-08-28 02:23:45.988881	2023-08-28 02:23:45.988881	\N	nazla.syafa	t	\N	\N
416	niken.desiana@pt-sena.co.id	$2a$12$DFv95jkmLaPB6uSR2mxQO.gKOZnfBOxFHxk6ZLPmjHNN.0fqQlzea	\N	\N	\N	2023-08-28 02:23:46.38151	2023-08-28 02:23:46.38151	\N	niken.desiana	t	\N	\N
417	nofrizon@pt-sena.co.id	$2a$12$ngThhBQOXMSIJAh6xR83Rui4rG/2AKOsCFmYx76MNQ1w6euCNZCO2	\N	\N	\N	2023-08-28 02:23:46.773547	2023-08-28 02:23:46.773547	\N	nofrizon	t	\N	\N
402	aditya@pt-sena.co.id	$2a$12$LF8KicaKgwzqdhKoT8DvEuSC/x2TZAxMseOsfz5dfl0EX7/Kyk8Xe	\N	\N	\N	2023-08-28 02:23:40.911127	2023-08-28 02:57:46.378828		aditya	t	\N	\N
418	normansyah.firdauzie@pt-sena.co.id	$2a$12$ip1HlRkGySheX9moLIei9uxruWn63gMQcGbdKv/Yyj1BOuMyGuFCy	\N	\N	\N	2023-08-28 02:23:47.184492	2023-08-28 02:23:47.184492	\N	normansyah.firdauzie	t	\N	\N
419	nur.ashikin@pt-sena.co.id	$2a$12$SR1NagMvFv8mBw6VWL3wbu9rDieHoPylEG77ZLSnKE8pk7xLIzyJm	\N	\N	\N	2023-08-28 02:23:47.573441	2023-08-28 02:23:47.573441	\N	nur.ashikin	t	\N	\N
420	nurcholis.muchsin@gmail.com	$2a$12$xVObjz0LBCGTOkmbXZbRC.AAjNe5rvA/sLFD63o07wb4aubVy.Cm.	\N	\N	\N	2023-08-28 02:23:47.959432	2023-08-28 02:23:47.959432	\N	nurcholis.muchsin	t	\N	\N
421	nuril.syahida@pt-sena.co.id	$2a$12$oJPfnTir3rB1hy5Qirml5.hLVC6/QcCdtvzBikrQ.5Rt.c6Bk.t9a	\N	\N	\N	2023-08-28 02:23:48.345439	2023-08-28 02:23:48.345439	\N	nuril.syahida	t	\N	\N
422	nurio.juliandatu@pt-sena.co.id	$2a$12$.wrkh2WEIUoTHvLbFejdWOfUWGir/RQuV09EKqOv.50outAW3cf3q	\N	\N	\N	2023-08-28 02:23:48.734366	2023-08-28 02:23:48.734366	\N	nurio.juliandatu	t	\N	\N
423	nurizki@pt-sena.co.id	$2a$12$YFyErWl.uneWZelWZd/i2urxakzOY21aypk4KAw846XROnEBkqTdW	\N	\N	\N	2023-08-28 02:23:49.119466	2023-08-28 02:23:49.119466	\N	nurizki	t	\N	\N
424	nurlaily.alviani@pt-sena.co.id	$2a$12$SjSvxKS1DOwDWH0VrxwbmuZtq.b6E23OBEbYv.zQZ/1/mVYDf/AAS	\N	\N	\N	2023-08-28 02:23:49.51111	2023-08-28 02:23:49.51111	\N	Nurlaily.Alviani	t	\N	\N
425	nurmala@pt-sena.co.id	$2a$12$/Qksc1PQ9gmNF7glpM/8BO9rKRi6gpwfDifhcDhqJhsk4meVfvPbW	\N	\N	\N	2023-08-28 02:23:49.90416	2023-08-28 02:23:49.90416	\N	nurmala	t	\N	\N
426	nurohman.rosyad@gmail.com	$2a$12$VmhWoX/FNa/oJ71MEAPpturlSsFZn.gLEhgO79823ZD2coOUsbMo.	\N	\N	\N	2023-08-28 02:23:50.290424	2023-08-28 02:23:50.290424	\N	nurohman.rosyad	t	\N	\N
427	nurul.hidayat@pt-sena.co.id	$2a$12$M9QoLVpd1v8bk2m9XB1Flu1NhPW1wOiDHP4Ith9M2J9vcDM3Kzbdq	\N	\N	\N	2023-08-28 02:23:50.682144	2023-08-28 02:23:50.682144	\N	nurul.hidayat	t	\N	\N
428	budhi.mulyantika@pt-sena.co.id	$2a$12$sXq54ioEJEFABvucxG2Fn.U8dwBKW8lzEmheeqP9jwVmw3Xixtx6S	\N	\N	\N	2023-08-28 02:23:51.077421	2023-08-28 02:23:51.077421	\N	budhi.mulyantika	t	\N	\N
429	ocktoperryph@gmail.com	$2a$12$67nH1kidl45RND6RG5miA.PHY01xXBLsDGQMD9.GFm.iHo1mMoDk.	\N	\N	\N	2023-08-28 02:23:51.467967	2023-08-28 02:23:51.467967	\N	ocktoperryph	t	\N	\N
430	ta012dummy@sena.co.id	$2a$12$RHMnJroCkURuFfPsQwKFaeKXhPaTzv97SU.04CZQNIggZ/uOKhJSO	\N	\N	\N	2023-08-28 02:23:51.861776	2023-08-28 02:23:51.861776	\N	ta012dummy	t	\N	\N
431	ta011dummy@sena.co.id	$2a$12$0n3LDhxUF4e/IrRoimaFX.we7d2mz5nJ/3aATur.Uq/o2jwAwPkCi	\N	\N	\N	2023-08-28 02:23:52.25218	2023-08-28 02:23:52.25218	\N	ta011dummy	t	\N	\N
432	ta017dummy@sena.co.id	$2a$12$JO18nLgAY6oE2LKhdWWC/.1PeO6tG6tczdNG3P23shzfiMYzeBY/u	\N	\N	\N	2023-08-28 02:23:52.638974	2023-08-28 02:23:52.638974	\N	ta017dummy	t	\N	\N
433	ta014dummy@sena.co.id	$2a$12$vKA1bevNOx63rtxSCkWMh.W5GGjiLhQLkswB0mLQwqeKARJC9AjDu	\N	\N	\N	2023-08-28 02:23:53.03121	2023-08-28 02:23:53.03121	\N	ta014dummy	t	\N	\N
434	ta016dummy@sena.co.id	$2a$12$nUaoTLaMTXSRhH9kt0.5KOnx2HJnZSYS9zeDzAIudpm9pu31KrF9O	\N	\N	\N	2023-08-28 02:23:53.430263	2023-08-28 02:23:53.430263	\N	ta016dummy	t	\N	\N
435	ta013dummy@sena.co.id	$2a$12$yzNVF7VN4I4u8zGlKWNYEOAHukNp3OBVBeJ2YWLyUex/0d94.W1yq	\N	\N	\N	2023-08-28 02:23:53.832291	2023-08-28 02:23:53.832291	\N	ta013dummy	t	\N	\N
436	ta015dummy@sena.co.id	$2a$12$2fS..iUWD/VYWWJJfo2xtuxiekJ7biS2WzswEtshvXPTWXTowviG2	\N	\N	\N	2023-08-28 02:23:54.220964	2023-08-28 02:23:54.220964	\N	ta015dummy	t	\N	\N
437	okta.arianto@pt-sena.co.id	$2a$12$6RfR7nNdvR7V8yG4V41.N./RlXI5MLxOuZyHvan.b6YFsNY81sEiK	\N	\N	\N	2023-08-28 02:23:54.609179	2023-08-28 02:23:54.609179	\N	okta.arianto	t	\N	\N
438	ta006dummy@sena.co.id	$2a$12$XxD8OwwQqmhhU5.KSVY03eBAqgmo4oKGvXoZHyZ5Ew/nN3JlMOIT6	\N	\N	\N	2023-08-28 02:23:55.005239	2023-08-28 02:23:55.005239	\N	ta006dummy	t	\N	\N
439	ta005dummy@sena.co.id	$2a$12$y6TQdwMxYD67p6dEpE0IN.eGH1wKCyNH1WsbqKYlRVlC0sr.J5Xly	\N	\N	\N	2023-08-28 02:23:55.424291	2023-08-28 02:23:55.424291	\N	ta005dummy	t	\N	\N
440	ta010dummy@sena.co.id	$2a$12$Z6s9gC3JqjN13TklXgCrPObCBHJBI1fREm2HkwcP4sfjHZ9oJCDJa	\N	\N	\N	2023-08-28 02:23:55.825262	2023-08-28 02:23:55.825262	\N	ta010dummy	t	\N	\N
441	ta007dummy@sena.co.id	$2a$12$jqnP2GUUHG8S2Mwl/aqt6ezVyY0TRF5peA0h2c1ALBdvz.VunYpf6	\N	\N	\N	2023-08-28 02:23:56.236169	2023-08-28 02:23:56.236169	\N	ta007dummy	t	\N	\N
442	ta009dummy@sena.co.id	$2a$12$A5s5D36lr1pXLN5ZvWz4kOjLxLqjDyCWrx3NShbu/VYHyrzsR4wUK	\N	\N	\N	2023-08-28 02:23:56.630794	2023-08-28 02:23:56.630794	\N	ta009dummy	t	\N	\N
443	ta001dummy@sena.co.id	$2a$12$dwc.mwzuPJqKRvCKC1VhF.drdwj9BuvjdTnI1OPCuyXuzWiGf/j4S	\N	\N	\N	2023-08-28 02:23:57.022349	2023-08-28 02:23:57.022349	\N	ta001dummy	t	\N	\N
444	ta004dummy@sena.co.id	$2a$12$XTqbUZSMJ6H3epVzByyNFePLjx9pBPloIi/NyKTOxSXNB.Zo4eKqi	\N	\N	\N	2023-08-28 02:23:57.413695	2023-08-28 02:23:57.413695	\N	ta004dummy	t	\N	\N
445	ta003dummy@sena.co.id	$2a$12$2/UTbpiV3UAJXhZqZZzgTe3GIv/TxcgycsGoXetDANn2Zh54/YOmy	\N	\N	\N	2023-08-28 02:23:57.800684	2023-08-28 02:23:57.800684	\N	ta003dummy	t	\N	\N
446	ta002dummy@sena.co.id	$2a$12$1yx6AAx0oYXRNn6hQiv1DuvzIpPrkL5FPDA896tWzoOwDlpjG8Cwi	\N	\N	\N	2023-08-28 02:23:58.202882	2023-08-28 02:23:58.202882	\N	ta002dummy	t	\N	\N
447	ta018dummy@sena.co.id	$2a$12$dSR0eyCeacZ03aC97EFYJ.Y6ba/Y.aAFuBv65tuG7hLu5sbdr76sG	\N	\N	\N	2023-08-28 02:23:58.590597	2023-08-28 02:23:58.590597	\N	ta018dummy	t	\N	\N
448	ta008dummy@sena.co.id	$2a$12$scOgwFhwhEB05ePKHr.jjeTfS5nkbh6z6BDXTn0p7l1PEkpE2Br9i	\N	\N	\N	2023-08-28 02:23:58.98719	2023-08-28 02:23:58.98719	\N	ta008dummy	t	\N	\N
449	orlananugrah@gmail.com	$2a$12$esQ2FKkvtTdkNpBr.ctsU.9tjVxTvkDE5Mzj0xjjlQWSREVnc7fnm	\N	\N	\N	2023-08-28 02:23:59.374823	2023-08-28 02:23:59.374823	\N	orlananugrah	t	\N	\N
450	pahrizan.abadi@pgn-solution.co.id	$2a$12$HfEH4v4sYJYTk08GN6CqwuXa4lf/UzPzZDnHPQjj5QU/XoDHExWyG	\N	\N	\N	2023-08-28 02:23:59.791838	2023-08-28 02:23:59.791838	\N	pahrizan.abadi	t	\N	\N
451	pandito.purwokusumo@pt-sena.co.id	$2a$12$RlMH2Nojggnv5bxqr0sSYee0H9lUopVcRtsKMQOo.3wUD8MOtHf2e	\N	\N	\N	2023-08-28 02:24:00.184408	2023-08-28 02:24:00.184408	\N	pandito.purwokusumo	t	\N	\N
452	pangiastika.putri@pt-sena.co.id	$2a$12$357eECl1ubXzaXJQsB6i9eMVDwPmtMn1oZacnFMY8r2GTJLwuSsii	\N	\N	\N	2023-08-28 02:24:00.582844	2023-08-28 02:24:00.582844	\N	pangiastika.putri	t	\N	\N
453	panji.novian@pt-sena.co.id	$2a$12$.Bnd/hZQb5UplZ1gJmUwauegd7cc3G7rlu/GiH2D3Ei7Y1SRX/qOu	\N	\N	\N	2023-08-28 02:24:00.98941	2023-08-28 02:24:00.98941	\N	panji.novian	t	\N	\N
454	panji.saputra@pgn-solution.co.id	$2a$12$7Iyc4IbTL.IJWuOV0tF5ZuSodFUjRCpVVnq05ard4/AobVlXwDqVK	\N	\N	\N	2023-08-28 02:24:01.388805	2023-08-28 02:24:01.388805	\N	panji.saputra	t	\N	\N
455	panjivirgiawan17@gmail.com	$2a$12$S8SXXhC1HNcK.GosbeXws.xmh4S0U7uuPc/IZxPLUlawKTAjR41B6	\N	\N	\N	2023-08-28 02:24:01.793436	2023-08-28 02:24:01.793436	\N	panjivirgiawan17	t	\N	\N
456	pingkannahdiatulputriutami@gmail.com	$2a$12$5gUS4xA8ybXXENuQ2GH6ZeJf25amP3E2jLeKqcxj8yyZ4KOPoAnvS	\N	\N	\N	2023-08-28 02:24:02.202087	2023-08-28 02:24:02.202087	\N	pingkannahdiatulputriutami	t	\N	\N
457	st008dummy@sena.co.id	$2a$12$GQkQZFa6KuJXNpk7TVtYYuF9Lwd34jzJlDj593BMWp1fLP9Mr1bma	\N	\N	\N	2023-08-28 02:24:02.607907	2023-08-28 02:24:02.607907	\N	st008dummy	t	\N	\N
458	prabowo.ikhsan@pt-sena.co.id	$2a$12$CZBk4vz5cCxCqjdz1h0ZguxNIXj49bgmuVK0M1uHApjNoSlMKLV3C	\N	\N	\N	2023-08-28 02:24:03.011775	2023-08-28 02:24:03.011775	\N	prabowo.ikhsan	t	\N	\N
459	bimagede896@gmail.com	$2a$12$Nm8kzd7ZmG64cpxIRehNPepinKFk6YaQ1C4bNUEMBy0Tud2g1.Hnm	\N	\N	\N	2023-08-28 02:24:03.439704	2023-08-28 02:24:03.439704	\N	bimagede896	t	\N	\N
460	prastiana.candra@pt-sena.co.id	$2a$12$MWgypqPhTXptqmRZNDL26uGOHJZMyTjFrz3SBBNmahOouSYp76fYm	\N	\N	\N	2023-08-28 02:24:03.856804	2023-08-28 02:24:03.856804	\N	prastiana.candra	t	\N	\N
461	septhiyopriyono16@gmail.com	$2a$12$agQ2Fg8o.ZiYnoQNzHnLB.wfSvIydj7/L0SEFk9ZmnY2Ri5KDtLcO	\N	\N	\N	2023-08-28 02:24:04.280723	2023-08-28 02:24:04.280723	\N	septhiyopriyono16	t	\N	\N
462	prayetno@pt-sena.co.id	$2a$12$xaQm1CohDHNicD/eTcg5B.3pig7nhdTq9Ne6ged4/d9JwlolhULiW	\N	\N	\N	2023-08-28 02:24:04.699543	2023-08-28 02:24:04.699543	\N	prayetno	t	\N	\N
463	prayitno.wibowo@pt-sena.co.id	$2a$12$DJXOzFhr/SFA63I2lWIptekXHIDmqbFVEKLG9D80cbaMJ166asp.W	\N	\N	\N	2023-08-28 02:24:05.119965	2023-08-28 02:24:05.119965	\N	prayitno.wibowo	t	\N	\N
464	st002dummy@sena.co.id	$2a$12$Zrnlkzk/K/qhWkijt41RY.mFg.xVrcDemoNy9CJYPKxvV9vSCAlS.	\N	\N	\N	2023-08-28 02:24:05.536714	2023-08-28 02:24:05.536714	\N	st002dummy	t	\N	\N
465	putracsll07@gmail.com	$2a$12$Oyn9ztm5TAvQFMLmWBaBqOf6kPLR.YIRsIAgWzjcD7qL5HtsTnvvu	\N	\N	\N	2023-08-28 02:24:05.956267	2023-08-28 02:24:05.956267	\N	putracsll07	t	\N	\N
466	putri.sandi@pt-sena.co.id	$2a$12$By/EkFtDvH4cRsxRgouE.eG/XZyqZVfZEYIxO139bQjJvSukqVeYG	\N	\N	\N	2023-08-28 02:24:06.369779	2023-08-28 02:24:06.369779	\N	putri.sandi	t	\N	\N
467	putri.novera@pt-sena.co.id	$2a$12$mHDR5KFg84.ilQCE1wC/N.0XzhwTp9SOExdqsu9Dw0M5aCqy6x.wK	\N	\N	\N	2023-08-28 02:24:06.786421	2023-08-28 02:24:06.786421	\N	putri.novera	t	\N	\N
468	stedon.jatmiko@gmail.com	$2a$12$ihgDiATk/qQ0gkzsqX80EeVyTj.Kia2qDs9bPNd17R8UkIQYGlhM.	\N	\N	\N	2023-08-28 02:24:07.202684	2023-08-28 02:24:07.202684	\N	stedon.jatmiko	t	\N	\N
469	rabudin@pt-sena.co.id	$2a$12$bgUfGuMiEElkrjlkTA7Si.YiOfFfyEnwkSGdQqIMxyH/1lFFjXgCS	\N	\N	\N	2023-08-28 02:24:07.613152	2023-08-28 02:24:07.613152	\N	rabudin	t	\N	\N
470	rafli.leo@pt-sena.co.id	$2a$12$PREUOIIGueEJA.N6CF0Tou3EtjqD3CS.zrR0GOwX9OT4RYZ/HYK1.	\N	\N	\N	2023-08-28 02:24:08.038262	2023-08-28 02:24:08.038262	\N	rafli.leo	t	\N	\N
471	raflianur@pt-sena.co.id	$2a$12$wkjxJq1nI1a/rdJ21UYQyend24na513T1jLeLBMXwvrZGuXZm9s1e	\N	\N	\N	2023-08-28 02:24:08.443224	2023-08-28 02:24:08.443224	\N	raflianur	t	\N	\N
472	apryahmad8@gmail.com	$2a$12$KYxYZzZqKf9yMdlDhSXdKewv/qKxBzsxiWfPJwl.Tup9IDwLxGHvC	\N	\N	\N	2023-08-28 02:24:08.859376	2023-08-28 02:24:08.859376	\N	apryahmad8	t	\N	\N
473	rahmad.santoso@pt-sena.co.id	$2a$12$szPdaaPAtXQjl7.k1KF7O.DvFAvt1q4/6pJ8daYEznWCBfs1MhIuq	\N	\N	\N	2023-08-28 02:24:09.271735	2023-08-28 02:24:09.271735	\N	rahmad.santoso	t	\N	\N
474	rahmad.hudioro@gmail.com	$2a$12$o5K2vJzsTQB/2TAWaNJyROtT7PW4fEW8LKkRyHnd/uS9BQqTvSJMq	\N	\N	\N	2023-08-28 02:24:09.674684	2023-08-28 02:24:09.674684	\N	rahmad.hudioro	t	\N	\N
475	rahman.fatah@pt-sena.co.id	$2a$12$EEKsRrtI7qpIOGEz0c8R2Oy0sMwH0DHB.Jb0z6GV.NcNKLL0xpwau	\N	\N	\N	2023-08-28 02:24:10.095301	2023-08-28 02:24:10.095301	\N	rahman.fatah	t	\N	\N
476	rahmantyo.erlangga@pt-sena.co.id	$2a$12$sBGTHs1o9jXs0UZy5melM.rDZrwsZu/7yTiE9l2m4uC2iZh9R4BD.	\N	\N	\N	2023-08-28 02:24:10.526154	2023-08-28 02:24:10.526154	\N	rahmantyo.erlangga	t	\N	\N
477	rasyad.azis@pt-sena.co.id	$2a$12$9LbB6lFQir/XKDLVd7jgAO/cD4F5z3KMigQAU05Kyk2nDYqEa7xVC	\N	\N	\N	2023-08-28 02:24:10.92381	2023-08-28 02:24:10.92381	\N	rasyad.azis	t	\N	\N
478	ratno@pt-sena.co.id	$2a$12$pq0AwR1gZ/roYXl4qK1Xgu.zQoTESOxs6r0HCn7Ydv7L6fzf3der6	\N	\N	\N	2023-08-28 02:24:11.344879	2023-08-28 02:24:11.344879	\N	ratno	t	\N	\N
479	raymond.lukas@pt-sena.co.id	$2a$12$6EPAmQJnjaNoJAshp78e6.bxY4oac5OIbvoqWoJR6pUWt8Vq5ir96	\N	\N	\N	2023-08-28 02:24:11.735297	2023-08-28 02:24:11.735297	\N	raymond.lukas	t	\N	\N
480	razikasuryaf@gmail.com	$2a$12$FiO0UUnRdjIpNr5yJxG/B.vFtf2.WDeef.rngIruKUDkdHOefHYX6	\N	\N	\N	2023-08-28 02:24:12.13374	2023-08-28 02:24:12.13374	\N	razikasuryaf	t	\N	\N
481	dimas.rahmat@pt-sena.co.id	$2a$12$5RWHT1j531I5XzVwT2aGde/yTyTSP2ZCwu.lYtiQvHThXonfv8PGq	\N	\N	\N	2023-08-28 02:24:12.575037	2023-08-28 02:24:12.575037	\N	dimas.rahmat	t	\N	\N
482	willyan274x@gmail.com	$2a$12$v04Utz6DgHg7Hw77W9XwjO9jqNPhw68z7O4BFddy9oB5uF6gPSlvO	\N	\N	\N	2023-08-28 02:24:13.008115	2023-08-28 02:24:13.008115	\N	willyan274x	t	\N	\N
483	ressa.fitra@pt-sena.co.id	$2a$12$t0HLXxWvrV0uFAKUv/2eI.0G8ae6xLGxy91cpzVp6LDpcNOp6Me.m	\N	\N	\N	2023-08-28 02:24:13.404457	2023-08-28 02:24:13.404457	\N	ressa.fitra	t	\N	\N
484	reyhanalfarezi3006@gmail.com	$2a$12$n9l7/VOeye5wNJponXkNMuT.M/l2NmdZ6pQJLqAZsLe0OWkdVqBTy	\N	\N	\N	2023-08-28 02:24:13.78975	2023-08-28 02:24:13.78975	\N	reyhanalfarezi3006	t	\N	\N
485	hutajulureymon@gmail.com	$2a$12$Av1c5buQbLRm8LQ1srV8wOL.DLJ1PoYByYOjn4kH8Pf5dRSbz6PQq	\N	\N	\N	2023-08-28 02:24:14.175254	2023-08-28 02:24:14.175254	\N	hutajulureymon	t	\N	\N
486	rezabatubara301213@gmail.com	$2a$12$r39CSNgQZ1neZuru.0EuWeQcazFukFaZRxvcAx8dhM7dMvYjNTUMy	\N	\N	\N	2023-08-28 02:24:14.571498	2023-08-28 02:24:14.571498	\N	rezabatubara301213	t	\N	\N
487	reza.armeynaldo@pt-sena.co.id	$2a$12$/LtyOOL8cs/AfznB6d44/ucYGwbScXkUWPEe90yNcVz6on4XD36GK	\N	\N	\N	2023-08-28 02:24:14.960286	2023-08-28 02:24:14.960286	\N	reza.armeynaldo	t	\N	\N
488	rezki.zakaria@pt-sena.co.id	$2a$12$VCRY3mljNnjMmU7rd987ReJ2PGX5LP2BOKW2W1lzwCET5o./K2KUK	\N	\N	\N	2023-08-28 02:24:15.350519	2023-08-28 02:24:15.350519	\N	rezki.zakaria	t	\N	\N
489	rhikasartika11@gmail.com	$2a$12$64BwqqaEgYMkqE8Yvz.8Y.hn6Q8xS9gSAFd/X8i/b67B9cRynn1GC	\N	\N	\N	2023-08-28 02:24:15.741912	2023-08-28 02:24:15.741912	\N	rhikasartika11	t	\N	\N
490	ribut.suyanto@pt-sena.co.id	$2a$12$6LGxSBOZg7B16lQJFjBTleCncz1q7c3oqPpZJUI38df1A43/lIbWG	\N	\N	\N	2023-08-28 02:24:16.135288	2023-08-28 02:24:16.135288	\N	ribut.suyanto	t	\N	\N
491	richardtito@pt-sena.co.id	$2a$12$r9LtQSI9BdsJ4IszWxIW8uAa8bsiT6R3Nvzfeh2O7yMpQShtpkIX6	\N	\N	\N	2023-08-28 02:24:16.526337	2023-08-28 02:24:16.526337	\N	richardtito	t	\N	\N
492	richardparsaulian69912031@gmail.com	$2a$12$LyHD1ASLbAqXw15T665q6u1D.eWl2qgbs0xMDL1UU7/yF5EpUwn6W	\N	\N	\N	2023-08-28 02:24:16.917516	2023-08-28 02:24:16.917516	\N	richardparsaulian69912031	t	\N	\N
493	rickylaurentio@gmail.com	$2a$12$CF8Gl6O4EbA7nMFnbvCHaefe0f56pmCW5KAVbWU7ES3vF/vA9anBK	\N	\N	\N	2023-08-28 02:24:17.304571	2023-08-28 02:24:17.304571	\N	rickylaurentio	t	\N	\N
494	ridhoarios@pt-sena.co.id	$2a$12$yDi5QH8uMnqKjNpoHvMqAe66gBMC5oymRXaWy6SJn0bKdZvsKXw9S	\N	\N	\N	2023-08-28 02:24:17.698625	2023-08-28 02:24:17.698625	\N	ridhoarios	t	\N	\N
495	rifninaldi@pt-sena.co.id	$2a$12$0SfGjBrYqUh7q8/Bkh/vYO4eBPEgy3OWFmFUyVoDNh0tT9klifwlO	\N	\N	\N	2023-08-28 02:24:18.086539	2023-08-28 02:24:18.086539	\N	rifninaldi	t	\N	\N
496	rifqirahmanda80@gmail.com	$2a$12$oVf.Sd4yMmDgYvWgCFueSej8To2iBU/j2tme9p6Zghc8wNNMEhIU2	\N	\N	\N	2023-08-28 02:24:18.475962	2023-08-28 02:24:18.475962	\N	rifqirahmanda80	t	\N	\N
497	rija.juarsa@pgn-solution.co.id	$2a$12$1AXHkP3HqwTidHLe4uRlwe3omy55YbRbIMCBIgmBeoaAiiSiUWDOO	\N	\N	\N	2023-08-28 02:24:18.866546	2023-08-28 02:24:18.866546	\N	rija.juarsa	t	\N	\N
498	rikza.zakiya@pt-sena.co.id	$2a$12$eEJorTe45psLuhNspXzV0uWYfTfiCYwFaKUS09Q1eJIqwEJkphhZ.	\N	\N	\N	2023-08-28 02:24:19.260626	2023-08-28 02:24:19.260626	\N	rikza.zakiya	t	\N	\N
499	rina.trisnawati@pt-sena.co.id	$2a$12$A4IviuYO.yt58tWh9Moybunp0wJMcTGRQHkgEhDlLBgRvIdY5nKyW	\N	\N	\N	2023-08-28 02:24:19.668574	2023-08-28 02:24:19.668574	\N	rina.trisnawati	t	\N	\N
500	ripsky.rayshanda@pt-sena.co.id	$2a$12$028Kbu6jCDca2xs2SZLHMeXHpYAk7QO5SzijUsfb9by..c/xuReGm	\N	\N	\N	2023-08-28 02:24:20.06892	2023-08-28 02:24:20.06892	\N	ripsky.rayshanda	t	\N	\N
501	riri.rizki@pt-sena.co.id	$2a$12$aKq/io7ZM4/lkZxF6T5AZOTl2HD26iJNTu2d5xdg/z932swwQz70G	\N	\N	\N	2023-08-28 02:24:20.458671	2023-08-28 02:24:20.458671	\N	riri.rizki	t	\N	\N
502	risa.erfianti@pt-sena.co.id	$2a$12$2FEjcQeUcrQpXtqYbLn0HugkIYBbiwJvrJapr5ofzK3nWEtmkGKj2	\N	\N	\N	2023-08-28 02:24:20.848169	2023-08-28 02:24:20.848169	\N	risa.erfianti	t	\N	\N
503	risda.hutabarat@pt-sena.co.id	$2a$12$pfKAIubFEJsSLtf8j0pSmO827636Pqs9.Cx/XxB77KKb6OQ.5NGyG	\N	\N	\N	2023-08-28 02:24:21.235586	2023-08-28 02:24:21.235586	\N	risda.hutabarat	t	\N	\N
504	rhiyanti12@gmail.com	$2a$12$35Ey.K/9PaM0H8rIpU16MuRuSG8wSuuT/k7cwE8CmRAfymzR4jqle	\N	\N	\N	2023-08-28 02:24:21.627231	2023-08-28 02:24:21.627231	\N	rhiyanti12	t	\N	\N
505	rizkayoga123@gmail.com	$2a$12$PkPXw6GnyoInTg8tVzqN8.sxuBH2tickbF2RB14umt8r2432QF0Gy	\N	\N	\N	2023-08-28 02:24:22.012448	2023-08-28 02:24:22.012448	\N	rizkayoga123	t	\N	\N
506	rizkiaulia375@gmail.com	$2a$12$M8kDIMJfjKU9isGMpVbRqOv25HeopqzN.rghv7qVmd1T3OIg00P9O	\N	\N	\N	2023-08-28 02:24:22.404218	2023-08-28 02:24:22.404218	\N	rizkiaulia375	t	\N	\N
507	rizki.fauzan@pt-sena.co.id	$2a$12$HL/NbdIdwJ7puQNh.DksCedmaRueswTyEBVgbP20109BvT8C96oCK	\N	\N	\N	2023-08-28 02:24:22.802797	2023-08-28 02:24:22.802797	\N	rizki.fauzan	t	\N	\N
508	rizky.sandy@pt-sena.co.id	$2a$12$cHL.lmv0i8oasOk/VYvZzuO.Ky9KEUtHwK1ZVtJ04hDBRxuXd9cR6	\N	\N	\N	2023-08-28 02:24:23.187545	2023-08-28 02:24:23.187545	\N	rizky.sandy	t	\N	\N
509	qkirizqi@gmail.com	$2a$12$BnxpO8cS8II6li/T428Np.qvbmbS4FF48grGNljm60nrs4DyRj3AO	\N	\N	\N	2023-08-28 02:24:23.579101	2023-08-28 02:24:23.579101	\N	qkirizqi	t	\N	\N
510	romi@pt-sena.co.id	$2a$12$A/O0EHvbBu67Fq.pXSWs3OrccW9zjTIwc8vUXta5KycBTVRUsAxki	\N	\N	\N	2023-08-28 02:24:23.972525	2023-08-28 02:24:23.972525	\N	romi	t	\N	\N
511	borismanronald@gmail.com	$2a$12$virDzaT2GqsG7AoAwXMdOudDA56BaBXD2OY2gQ602dpQ1QcGpmnYS	\N	\N	\N	2023-08-28 02:24:24.360753	2023-08-28 02:24:24.360753	\N	borismanronald	t	\N	\N
512	ronihadyans17@gmail.com	$2a$12$pjgPsfuiAaKVtdBUtXgHh.YxhVUIxE8bILSMqvH.7XyFZ/I.LmIlG	\N	\N	\N	2023-08-28 02:24:24.754661	2023-08-28 02:24:24.754661	\N	ronihadyans17	t	\N	\N
513	rosmalia@pt-sena.co.id	$2a$12$L29cYCEe/7LqDKnAwQoxvOIac9U7mlBHQOwnd0O2kY/sfe3w0l02m	\N	\N	\N	2023-08-28 02:24:25.145804	2023-08-28 02:24:25.145804	\N	rosmalia	t	\N	\N
514	ruslan.hamzah@pt-sena.co.id	$2a$12$f6m2ceo6.oReNoGCHkCKRusq/NrG7hlLfb0Z6VWJn81ORRuOBo0oq	\N	\N	\N	2023-08-28 02:24:25.559319	2023-08-28 02:24:25.559319	\N	ruslan.hamzah	t	\N	\N
515	russmadimg@gmail.com	$2a$12$OjZ30/izOyjHJTbf16UDiedrY23M7CusNk6tUT.IGRyF9r9PW/Rra	\N	\N	\N	2023-08-28 02:24:25.958031	2023-08-28 02:24:25.958031	\N	russmadimg	t	\N	\N
516	rutma.kusuma@pt-sena.co.id	$2a$12$yUMYmK2N/qAsjCVz5VbqHujLTl5ksoWFOlGeMIuzWo7gnKA7lV92G	\N	\N	\N	2023-08-28 02:24:26.341378	2023-08-28 02:24:26.341378	\N	rutma.kusuma	t	\N	\N
517	ryan.novel@pt-sena.co.id	$2a$12$tV4hLBqAjFQsBuV5MrAf1uBkKhH9MvmwEOepJuM3TbnNZ9U0MjoQ6	\N	\N	\N	2023-08-28 02:24:26.731126	2023-08-28 02:24:26.731126	\N	ryan.novel	t	\N	\N
518	ryandipramadhy.13@gmail.com	$2a$12$dA2IHlpIYcup6vI0UT2j.ObwSe7o5kRjhTWcr/h0.v1rDQvL4up3W	\N	\N	\N	2023-08-28 02:24:27.127148	2023-08-28 02:24:27.127148	\N	ryandipramadhy.13	t	\N	\N
519	safri@pt-sena.co.id	$2a$12$Boq.Rib/nOwSpwWtexq3s.av.m3.7oKF98G0DjBjc2eJ1VL3jNani	\N	\N	\N	2023-08-28 02:24:27.514769	2023-08-28 02:24:27.514769	\N	safri	t	\N	\N
520	didit.slamdunk@gmail.com	$2a$12$7G.h5J7zGHIHQHkFbuM/meQPle5mIvc/Xg9d7UACPYdNGZxTEpD4C	\N	\N	\N	2023-08-28 02:24:27.912701	2023-08-28 02:24:27.912701	\N	didit.slamdunk	t	\N	\N
521	saldy.michael@pt-sena.co.id	$2a$12$YzT/XdEzDn6crfQU5V8hq.mEU6c2TFoXhQKw2AxBSU5yexi4Cms3m	\N	\N	\N	2023-08-28 02:24:28.299868	2023-08-28 02:24:28.299868	\N	saldy.michael	t	\N	\N
522	samuel.bagas@pt-sena.co.id	$2a$12$9/zAgRukmwj4ZnDsI9G9ee8nmIqbm5iwIDa3ENqK/0d8wIBGXxHWi	\N	\N	\N	2023-08-28 02:24:28.687111	2023-08-28 02:24:28.687111	\N	samuel.bagas	t	\N	\N
523	septianfirdaus229@gmail.com	$2a$12$HgB3Kx4StveH9JERqsWalu78YijX0jeqXXJiQHhkU.lpsX4ozi2/G	\N	\N	\N	2023-08-28 02:24:29.076098	2023-08-28 02:24:29.076098	\N	septianfirdaus229	t	\N	\N
524	sepbusan@gmail.com	$2a$12$0w9ozvQk8zVMvydmc6gQXeQXdI6q2.vq4rHRVtx9X.Bi9rRlpGqta	\N	\N	\N	2023-08-28 02:24:29.462465	2023-08-28 02:24:29.462465	\N	sepbusan	t	\N	\N
525	septiana@pt-sena.co.id	$2a$12$YfiYFqSadEbYEqbX7m5h5ehg/1wSwPQhArNFo8BMNs/VaNXSzM72O	\N	\N	\N	2023-08-28 02:24:29.851506	2023-08-28 02:24:29.851506	\N	septiana	t	\N	\N
526	shafiraputri@pt-sena.co.id	$2a$12$jJKAAtlFKK2HRIURueA1yuxPZoj.Y/F9jT6RPcHR25G3va9q4JQqe	\N	\N	\N	2023-08-28 02:24:30.250325	2023-08-28 02:24:30.250325	\N	shafiraputri	t	\N	\N
527	shariar.aditya@pt-sena.co.id	$2a$12$UIQXTlye399hZHRgKYtnS.Hadk1/.I2ahYMadwlKTZ6kr/T0ci3hK	\N	\N	\N	2023-08-28 02:24:30.641082	2023-08-28 02:24:30.641082	\N	shariar.aditya	t	\N	\N
528	sheila.noor@pt-sena.co.id	$2a$12$x2Id.np6Bq0n/mOlm7TEj.Btui1C2q1TkKUGarltiygIXMYZHR1tO	\N	\N	\N	2023-08-28 02:24:31.032873	2023-08-28 02:24:31.032873	\N	sheila.noor	t	\N	\N
530	shelamitha.astri@pt-sena.co.id	$2a$12$xObj/0W8QTqE2JwFcaMSdeOZgJxg494iGDQ6moYvWOpdcLPoJLS.O	\N	\N	\N	2023-08-28 02:24:31.805912	2023-08-28 02:24:31.805912	\N	shelamitha.astri	t	\N	\N
531	shintya.arnia@pt-sena.co.id	$2a$12$R31FG2p95WVuLJXUxlSmNO19Hn3Ug1G./sdyUT1b9YgCQ321FL5FS	\N	\N	\N	2023-08-28 02:24:32.198253	2023-08-28 02:24:32.198253	\N	shintya.arnia	t	\N	\N
532	shivaafifah62@gmail.com	$2a$12$Gh/NSjoauHNOTBuDa6gpROnOT44Z7Ua.jH9dK1x8la7uD.uC6.O.q	\N	\N	\N	2023-08-28 02:24:32.589883	2023-08-28 02:24:32.589883	\N	shivaafifah62	t	\N	\N
533	sibarani.djoenaid@pt-sena.co.id	$2a$12$.zKJQ17HHaI6XbJODy4.V.pLGX7rvUkB9Q8ZuclfzpNDldSZncRRG	\N	\N	\N	2023-08-28 02:24:32.987236	2023-08-28 02:24:32.987236	\N	sibarani.djoenaid	t	\N	\N
534	silla.syafira@pt-sena.co.id	$2a$12$bCwTQezmzznneJC27SyMDeTXSuTrEw3rdiHLfiyrq.Q1K4KeMCh9O	\N	\N	\N	2023-08-28 02:24:33.374708	2023-08-28 02:24:33.374708	\N	silla.syafira	t	\N	\N
535	pramudibyo61@gmail.com	$2a$12$Y2vHNpfbdbRPFUkInOjt.eI5m6TiI6pH8JVaiRYfbTYWnMYs8Xagu	\N	\N	\N	2023-08-28 02:24:33.763849	2023-08-28 02:24:33.763849	\N	Pramudibyo61	t	\N	\N
536	siska.wahyu@pt-sena.co.id	$2a$12$BsJ.BGZjSHyuR8iDAbunQu6WF.i8yBXPYQp/9DmJ6uyIIbyebZIpW	\N	\N	\N	2023-08-28 02:24:34.157233	2023-08-28 02:24:34.157233	\N	siska.wahyu	t	\N	\N
537	siti.fathimah@pt-sena.co.id	$2a$12$.ColwkBkxAIrJwL8WEpaMuhhJrB0.S0X0Do4Mt.uviRk4tT7wE.eO	\N	\N	\N	2023-08-28 02:24:34.548894	2023-08-28 02:24:34.548894	\N	siti.fathimah	t	\N	\N
538	siti.juwairiyah@pt-sena.co.id	$2a$12$osPzTI15mDEFWTVI.9wwVed1Fn2QdL0M7EsOHcM3eMI/M/v0bTv1y	\N	\N	\N	2023-08-28 02:24:34.937073	2023-08-28 02:24:34.937073	\N	siti.juwairiyah	t	\N	\N
539	sofiramadhani14@gmail.com	$2a$12$eQJ8OFQsXI0mWrADYIAUi.1ots1YJSH9GIygQCcrXG.FABjcL3hiC	\N	\N	\N	2023-08-28 02:24:35.329301	2023-08-28 02:24:35.329301	\N	sofiramadhani14	t	\N	\N
540	sonny.budiman17@gmail.com	$2a$12$g0DkkecTKMCP3oyGm/j22.kc.yXNXqNrRPfumwUZo9OpXjZg6lPjW	\N	\N	\N	2023-08-28 02:24:35.718312	2023-08-28 02:24:35.718312	\N	sonny.budiman17	t	\N	\N
541	st004dummy@sena.co.id	$2a$12$Y9h8uiAzf5yx9nrC8pU.seOYipp60tgYfbvnXn53fzsfYhw/NGRG.	\N	\N	\N	2023-08-28 02:24:36.112856	2023-08-28 02:24:36.112856	\N	st004dummy	t	\N	\N
542	s.lestari@pt-sena.co.id	$2a$12$nZeBXAsTm3pUEIZjucD8EOtfJwNblWFknr4ogLAHhKN7gzWA6L1cS	\N	\N	\N	2023-08-28 02:24:36.496404	2023-08-28 02:24:36.496404	\N	s.lestari	t	\N	\N
543	sandiwanstefanus@gmail.com	$2a$12$SuiN4mcldLQnF4YVlRRrnOtcRvg3vGzlQx81SDpTBY7bV1PakwuuK	\N	\N	\N	2023-08-28 02:24:36.883062	2023-08-28 02:24:36.883062	\N	sandiwanstefanus	t	\N	\N
544	sudiantoro@pt-sena.co.id	$2a$12$xaM8N.gehW/pAp5LNLQ0U.UtCP8p96BCNZEtb3pZ/sifdFiTESSF.	\N	\N	\N	2023-08-28 02:24:37.27511	2023-08-28 02:24:37.27511	\N	Sudiantoro	t	\N	\N
545	sugiri@pt-sena.co.id	$2a$12$JjV2PuhYL2RuYzh5JKqCxuoXXXj6ZROGZIx25MjIU6BnIl8tIdwCe	\N	\N	\N	2023-08-28 02:24:37.662311	2023-08-28 02:24:37.662311	\N	sugiri	t	\N	\N
546	suhadihasan29@gmail.com	$2a$12$ZmH4Bn4k838/sKTRaD4e2eFfk5LzftuwiM5e3ouNbF2qfXZWD96Ti	\N	\N	\N	2023-08-28 02:24:38.077347	2023-08-28 02:24:38.077347	\N	suhadihasan29	t	\N	\N
547	suhardiman@pt-sena.co.id	$2a$12$PcUiQTrCLWJ1yRqzIpZApO8kI54stKDPk64IDuK63XPTpKApY2J/y	\N	\N	\N	2023-08-28 02:24:38.467301	2023-08-28 02:24:38.467301	\N	suhardiman	t	\N	\N
548	suhartawan.bambang@pt-sena.co.id	$2a$12$3TsczqSDBrGDJmeT0623n.cm2xwy1g8RyZm6vsy/Gc08FcxRfCi8q	\N	\N	\N	2023-08-28 02:24:38.852708	2023-08-28 02:24:38.852708	\N	suhartawan.bambang	t	\N	\N
549	sukosetrosuwarnobpp@gmail.com	$2a$12$oelnJqNjm.qclJ6uRYyoSu0zRK4//pztxv7xyoBFl9Dw8ytv9rDlq	\N	\N	\N	2023-08-28 02:24:39.242959	2023-08-28 02:24:39.242959	\N	sukosetrosuwarnobpp	t	\N	\N
550	suprianto@pt-sena.co.id	$2a$12$S4MuhWpP82/Wu2bGS6LWh.TE5h8xWm2UKM07YoRSyvd4zEHyCBj52	\N	\N	\N	2023-08-28 02:24:39.631131	2023-08-28 02:24:39.631131	\N	suprianto	t	\N	\N
551	adji@pt-sena.co.id	$2a$12$H2ANjqkhvzRmY27jNzsHLOdQrJDlgAQhGK6OX204lJ3o6Ick5Z8Uy	\N	\N	\N	2023-08-28 02:24:40.019994	2023-08-28 02:24:40.019994	\N	adji	t	\N	\N
552	st005dummy@sena.co.id	$2a$12$1NqX8yR4CBLYNchbhvEOVez54PhlxYjcnZNF4cG0tF7gaw4Bm8W72	\N	\N	\N	2023-08-28 02:24:40.411348	2023-08-28 02:24:40.411348	\N	st005dummy	t	\N	\N
553	suryadarmansyah707@gmail.com	$2a$12$7khfS/xnyoCcud8vGQwF3ON0PZryhYykjoex7kMF3jf9j97X8qlxy	\N	\N	\N	2023-08-28 02:24:40.797596	2023-08-28 02:24:40.797596	\N	suryadarmansyah707	t	\N	\N
554	syafa.kansa@pt-sena.co.id	$2a$12$L/jbREaqPO8/WmGmKF1p2Oaq84ihvZNjUwlUSaHKFFdL.rx3VFcSO	\N	\N	\N	2023-08-28 02:24:41.187709	2023-08-28 02:24:41.187709	\N	syafa.kansa	t	\N	\N
555	syafira@pt-sena.co.id	$2a$12$3OZn.GVDZ6vmuVIaeQn9seWUDbUMan0Edhp2ruZI17Auz4AgcCXIm	\N	\N	\N	2023-08-28 02:24:41.578438	2023-08-28 02:24:41.578438	\N	syafira	t	\N	\N
556	syaiful.alam@pt-sena.co.id	$2a$12$UGJC/AX9V5FTHzqLv5.nluBQY7bnfe6l3bSnmnWT/9PiZF1LlCBBW	\N	\N	\N	2023-08-28 02:24:41.962649	2023-08-28 02:24:41.962649	\N	syaiful.alam	t	\N	\N
557	aazzahra2015@gmail.com	$2a$12$H1og.EXAp0H56imbpN4hp.42APQJlQjDsCzDEdpqhiIL7SKuDDlBy	\N	\N	\N	2023-08-28 02:24:42.351178	2023-08-28 02:24:42.351178	\N	aazzahra2015	t	\N	\N
558	syamsu.hadi@pt-sena.co.id	$2a$12$Jq/QdmJLIE1/WBgrIriIlebBXz9RsLuIzw15d1/KFx3ldRFKiPmGK	\N	\N	\N	2023-08-28 02:24:42.746751	2023-08-28 02:24:42.746751	\N	syamsu.hadi	t	\N	\N
559	syarifhidayatullah1192@gmail.com	$2a$12$gb.tOLZlp90ERlVmSym07OWoteSylyEyDK2ri/66PLPZM8fTfBuAy	\N	\N	\N	2023-08-28 02:24:43.13758	2023-08-28 02:24:43.13758	\N	syarifhidayatullah1192	t	\N	\N
560	syubannulmajdub98@upi.edu	$2a$12$SnYbUv0rfpG9qOBqzR0mm.XgC4DjD.J3Zz4QHoLI930OM3upUcp5C	\N	\N	\N	2023-08-28 02:24:43.529178	2023-08-28 02:24:43.529178	\N	syubannulmajdub98	t	\N	\N
561	tasyrikha.hapsari@pt-sena.co.id	$2a$12$ZT64q02EALfXXx06zFBO4OEvM4tO/in5.lxAlMqDV6cdQm9DrcZ.m	\N	\N	\N	2023-08-28 02:24:43.915853	2023-08-28 02:24:43.915853	\N	tasyrikha.hapsari	t	\N	\N
562	taufik.iskandar@pt-sena.co.id	$2a$12$tlbtjpRyr79HUpMxoue5.uDyGG/jZnK/WRMi50XPfe8mkbGhkYZnS	\N	\N	\N	2023-08-28 02:24:44.308195	2023-08-28 02:24:44.308195	\N	taufik.iskandar	t	\N	\N
564	tezar.fauzan@pt-sena.co.id	$2a$12$4SrAT2HgJxeHglj4eyrDs.RyjA5aiSGtCxmGKGth7ashOBpvvNlfy	\N	\N	\N	2023-08-28 02:24:45.085309	2023-08-28 02:24:45.085309	\N	tezar.fauzan	t	\N	\N
565	tioaudiosyahputra@gmail.com	$2a$12$jLNm1eKSWpJZe2Ufr1SXv..AIRUBhSUfEgyUH5kiRxlCEiegjgfUy	\N	\N	\N	2023-08-28 02:24:45.477227	2023-08-28 02:24:45.477227	\N	tioaudiosyahputra	t	\N	\N
566	andinititis004@gmail.com	$2a$12$6EFAdfoEJXOtwnYT.0sGQuJcy1EvMHYYq0BkdnK0EjQtS6QLYQI42	\N	\N	\N	2023-08-28 02:24:45.873932	2023-08-28 02:24:45.873932	\N	andinititis004	t	\N	\N
567	titorahmadhan27@gmail.com	$2a$12$nLqzrmL0GBoN/cLPLOwRL.yn9fkuvCvpigCV49I/1EJqCTSgrbu7y	\N	\N	\N	2023-08-28 02:24:46.268039	2023-08-28 02:24:46.268039	\N	titorahmadhan27	t	\N	\N
568	tiwang.herlangga@pt-sena.co.id	$2a$12$S3Hm0EX7FBt8lsmq7pUAWuZhkmx5m4faktpFjNGmEsIqDtloUctSC	\N	\N	\N	2023-08-28 02:24:46.656148	2023-08-28 02:24:46.656148	\N	tiwang.herlangga	t	\N	\N
563	tengku.fauzan@pt-sena.co.id	$2a$12$aT4Sc6gLg5Co8sQmQaSuL.J3CliLEhb9eO/qKZ72SNH6s0FIFk2Ie	\N	\N	\N	2023-08-28 02:24:44.701161	2023-08-28 02:37:29.973872		tengku.fauzan	t	\N	\N
569	togi.siagian@pt-sena.co.id	$2a$12$zNq7U5evnHS51dLm22G0aO2s4bKrFg5vou8zM0pT9P5DD375O81ae	\N	\N	\N	2023-08-28 02:24:47.044573	2023-08-28 02:24:47.044573	\N	togi.siagian	t	\N	\N
570	aslanest15@gmail.com	$2a$12$9YcYWzjpSctKEMu52Hvg2.smPf6HFIT/pSas1KaTvuN3KqHAWh.am	\N	\N	\N	2023-08-28 02:24:47.435639	2023-08-28 02:24:47.435639	\N	aslanest15	t	\N	\N
571	topanahmadj@gmail.com	$2a$12$jvV1Et5dWZJVoSgBxGmvFeI4Y098rF/gLp7pagZ.itw4wkMnCZCQe	\N	\N	\N	2023-08-28 02:24:47.826482	2023-08-28 02:24:47.826482	\N	topanahmadj	t	\N	\N
572	adhasari@pt-sena.co.id	$2a$12$DC1Qadd75U9aDv3LvoJh8.vP1sNgQVzxvJn4sftrTA02z975F/CS2	\N	\N	\N	2023-08-28 02:24:48.21045	2023-08-28 02:24:48.21045	\N	adhasari	t	\N	\N
573	tri.ayu@pt-sena.co.id	$2a$12$PxfZgE2EyYkXHy5ltOoKqerxNk2gggPu28nlEI7uOMfXYT67HVPXO	\N	\N	\N	2023-08-28 02:24:48.602929	2023-08-28 02:24:48.602929	\N	tri.ayu	t	\N	\N
574	tri.mulyono@pt-sena.co.id	$2a$12$TxUDIciKlMs97p8wDF/bEeHotLWZ75ZTSWzbbamO71/xHV.CpTB6C	\N	\N	\N	2023-08-28 02:24:48.992923	2023-08-28 02:24:48.992923	\N	tri.mulyono	t	\N	\N
575	tutur@pgn-solution.co.id	$2a$12$7Nm5URimzUDeFr4dMUI6y.udwAPrQEsOR2XnUKhiT7he2HylqbA3C	\N	\N	\N	2023-08-28 02:24:49.390554	2023-08-28 02:24:49.390554	\N	tutur	t	\N	\N
576	ulyazafira9@gmail.com	$2a$12$Ry1UfL9Aa.lpwt.VbDYmOujI869C1cYYkfsf4f.YBMO3lzu52p02S	\N	\N	\N	2023-08-28 02:24:49.783859	2023-08-28 02:24:49.783859	\N	ulyazafira9	t	\N	\N
13	rinalfauzi@gmail.com	$2a$12$NlaKsDqg/nbfsY0xlHztSumNY3YAWEYE9lo9qqxhuqll77VTZVHpy	\N	\N	\N	2023-06-26 01:30:03.926707	2023-08-24 05:35:52.917171	pm.engineering	pm.engineering	t	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                        3553.dat                                                                                            0000600 0004000 0002000 00000000566 14473017126 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Komersial	2023-06-12 06:56:33.070862	2023-06-12 06:56:33.070862
2	Divisi SDM & Umum	2023-06-15 00:57:06.963017	2023-06-15 00:57:06.963017
4	Keuangan	2023-06-24 08:06:31.338437	2023-06-24 08:06:31.338437
3	Engineering & Keproyekkan	2023-06-16 16:18:30.816658	2023-08-09 02:50:17.171145
5	Penilaian Kinerja & Hukum	2023-08-09 04:02:26.456135	2023-08-09 04:02:26.456135
\.


                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000132134 14473017126 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 58, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 59, true);


--
-- Name: approvals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.approvals_id_seq', 967, true);


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

SELECT pg_catalog.setval('public.positions_id_seq', 18, true);


--
-- Name: role_assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_assignments_id_seq', 658, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 7, true);


--
-- Name: sender_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sender_emails_id_seq', 235, true);


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

SELECT pg_catalog.setval('public.tickets_id_seq', 3, true);


--
-- Name: tx_errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tx_errors_id_seq', 119, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 613, true);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    