--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg20.04+1+b1)
-- Dumped by pg_dump version 14.0

-- Started on 2022-06-02 23:19:55

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
-- TOC entry 218 (class 1259 OID 5246042)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 217 (class 1259 OID 5246041)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 217
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 265 (class 1259 OID 5246278)
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 222 (class 1259 OID 5246064)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 221 (class 1259 OID 5246063)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 221
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 220 (class 1259 OID 5246053)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 219 (class 1259 OID 5246052)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 219
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 266 (class 1259 OID 5246283)
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 236 (class 1259 OID 5246139)
-- Name: administration_users; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.administration_users (
    id integer NOT NULL,
    password character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.administration_users OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 235 (class 1259 OID 5246138)
-- Name: administration_users_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.administration_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administration_users_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 235
-- Name: administration_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.administration_users_id_seq OWNED BY public.administration_users.id;


--
-- TOC entry 238 (class 1259 OID 5246148)
-- Name: bidangs; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.bidangs (
    id integer NOT NULL,
    nama_bidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.bidangs OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 237 (class 1259 OID 5246147)
-- Name: bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bidangs_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 237
-- Name: bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.bidangs_id_seq OWNED BY public.bidangs.id;


--
-- TOC entry 270 (class 1259 OID 5246309)
-- Name: bidangs_sub_bidangs_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.bidangs_sub_bidangs_links (
    bidang_id integer,
    sub_bidang_id integer
);


ALTER TABLE public.bidangs_sub_bidangs_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 289 (class 1259 OID 8159699)
-- Name: bobot_nilai; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.bobot_nilai (
    id integer NOT NULL,
    nama_bobot character varying(255),
    bobot double precision,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.bobot_nilai OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 288 (class 1259 OID 8159698)
-- Name: bobot_nilai_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.bobot_nilai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bobot_nilai_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 288
-- Name: bobot_nilai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.bobot_nilai_id_seq OWNED BY public.bobot_nilai.id;


--
-- TOC entry 240 (class 1259 OID 5246157)
-- Name: direktorats; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.direktorats (
    id integer NOT NULL,
    nama_direktorat character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.direktorats OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 271 (class 1259 OID 5246314)
-- Name: direktorats_divises_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.direktorats_divises_links (
    direktorat_id integer,
    divisi_id integer
);


ALTER TABLE public.direktorats_divises_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 239 (class 1259 OID 5246156)
-- Name: direktorats_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.direktorats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direktorats_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 239
-- Name: direktorats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.direktorats_id_seq OWNED BY public.direktorats.id;


--
-- TOC entry 242 (class 1259 OID 5246166)
-- Name: divisis; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.divisis (
    id integer NOT NULL,
    nama_divisi character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.divisis OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 272 (class 1259 OID 5246319)
-- Name: divisis_bidangs_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.divisis_bidangs_links (
    divisi_id integer,
    bidang_id integer
);


ALTER TABLE public.divisis_bidangs_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 241 (class 1259 OID 5246165)
-- Name: divisis_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.divisis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisis_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 241
-- Name: divisis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.divisis_id_seq OWNED BY public.divisis.id;


--
-- TOC entry 226 (class 1259 OID 5246086)
-- Name: files; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 225 (class 1259 OID 5246085)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 225
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 267 (class 1259 OID 5246288)
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 244 (class 1259 OID 5246175)
-- Name: fit_propers; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.fit_propers (
    id integer NOT NULL,
    tanggal_fit_proper date,
    proyeksi character varying(255),
    jenis character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    urjab character varying(255),
    ppt character varying(255),
    cv character varying(255),
    jenjang_proyeksi character varying(255)
);


ALTER TABLE public.fit_propers OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 273 (class 1259 OID 5246324)
-- Name: fit_propers_id_peserta_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.fit_propers_id_peserta_links (
    fit_proper_id integer,
    pegawai_id integer
);


ALTER TABLE public.fit_propers_id_peserta_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 243 (class 1259 OID 5246174)
-- Name: fit_propers_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.fit_propers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fit_propers_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 243
-- Name: fit_propers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.fit_propers_id_seq OWNED BY public.fit_propers.id;


--
-- TOC entry 274 (class 1259 OID 5246329)
-- Name: fit_propers_id_wawancara_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.fit_propers_id_wawancara_links (
    fit_proper_id integer,
    wawancara_id integer
);


ALTER TABLE public.fit_propers_id_wawancara_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 290 (class 1259 OID 12521063)
-- Name: fit_propers_pengujis_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.fit_propers_pengujis_links (
    fit_proper_id integer,
    penguji_id integer
);


ALTER TABLE public.fit_propers_pengujis_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 228 (class 1259 OID 5246097)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 227 (class 1259 OID 5246096)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 246 (class 1259 OID 5246186)
-- Name: jabatans; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.jabatans (
    id integer NOT NULL,
    nama_jabatan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jabatans OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 245 (class 1259 OID 5246185)
-- Name: jabatans_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.jabatans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jabatans_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 245
-- Name: jabatans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.jabatans_id_seq OWNED BY public.jabatans.id;


--
-- TOC entry 248 (class 1259 OID 5246195)
-- Name: key_competencies; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.key_competencies (
    id integer NOT NULL,
    enthusiasthic integer,
    creative integer,
    partnership integer,
    bsn_acumen integer,
    cust_focus integer,
    empowering integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    driving_execution integer
);


ALTER TABLE public.key_competencies OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 247 (class 1259 OID 5246194)
-- Name: key_competencies_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.key_competencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_competencies_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 247
-- Name: key_competencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.key_competencies_id_seq OWNED BY public.key_competencies.id;


--
-- TOC entry 275 (class 1259 OID 5246334)
-- Name: key_competencies_nilai_kc_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.key_competencies_nilai_kc_links (
    key_competency_id integer,
    fit_proper_id integer
);


ALTER TABLE public.key_competencies_nilai_kc_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 276 (class 1259 OID 5246339)
-- Name: key_competencies_penguji_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.key_competencies_penguji_links (
    key_competency_id integer,
    penguji_id integer
);


ALTER TABLE public.key_competencies_penguji_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 250 (class 1259 OID 5246204)
-- Name: pegawais; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pegawais (
    id integer NOT NULL,
    nama_pegawai character varying(255),
    nip character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    agama character varying(255),
    email character varying(255),
    gender character varying(255),
    no_hp character varying(255),
    alamat character varying(255),
    role character varying(255),
    grade character varying(255),
    jenjang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pegawais OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 249 (class 1259 OID 5246203)
-- Name: pegawais_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.pegawais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pegawais_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 249
-- Name: pegawais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.pegawais_id_seq OWNED BY public.pegawais.id;


--
-- TOC entry 280 (class 1259 OID 5246359)
-- Name: pegawais_id_user_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pegawais_id_user_links (
    pegawai_id integer,
    administration_user_id integer
);


ALTER TABLE public.pegawais_id_user_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 278 (class 1259 OID 5246349)
-- Name: pegawais_jabatan_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pegawais_jabatan_links (
    pegawai_id integer,
    jabatan_id integer
);


ALTER TABLE public.pegawais_jabatan_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 277 (class 1259 OID 5246344)
-- Name: pegawais_pendidikan_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pegawais_pendidikan_links (
    pegawai_id integer,
    pendidikan_id integer
);


ALTER TABLE public.pegawais_pendidikan_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 279 (class 1259 OID 5246354)
-- Name: pegawais_unit_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pegawais_unit_links (
    pegawai_id integer,
    unit_id integer
);


ALTER TABLE public.pegawais_unit_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 252 (class 1259 OID 5246215)
-- Name: pendidikans; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pendidikans (
    id integer NOT NULL,
    nama_pendidikan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pendidikans OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 251 (class 1259 OID 5246214)
-- Name: pendidikans_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.pendidikans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pendidikans_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 251
-- Name: pendidikans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.pendidikans_id_seq OWNED BY public.pendidikans.id;


--
-- TOC entry 254 (class 1259 OID 5246224)
-- Name: pengujis; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pengujis (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pengujis OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 291 (class 1259 OID 12521068)
-- Name: pengujis_id_fit_propers_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pengujis_id_fit_propers_links (
    penguji_id integer,
    fit_proper_id integer
);


ALTER TABLE public.pengujis_id_fit_propers_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 282 (class 1259 OID 5246380)
-- Name: pengujis_id_pe_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pengujis_id_pe_links (
    penguji_id integer,
    personal_endurance_id integer
);


ALTER TABLE public.pengujis_id_pe_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 281 (class 1259 OID 5246370)
-- Name: pengujis_id_penguji_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pengujis_id_penguji_links (
    penguji_id integer,
    pegawai_id integer
);


ALTER TABLE public.pengujis_id_penguji_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 283 (class 1259 OID 5246385)
-- Name: pengujis_id_pj_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.pengujis_id_pj_links (
    penguji_id integer,
    proyeksi_jabatan_id integer
);


ALTER TABLE public.pengujis_id_pj_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 253 (class 1259 OID 5246223)
-- Name: pengujis_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.pengujis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pengujis_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 253
-- Name: pengujis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.pengujis_id_seq OWNED BY public.pengujis.id;


--
-- TOC entry 256 (class 1259 OID 5246233)
-- Name: personal_endurances; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.personal_endurances (
    id integer NOT NULL,
    internal integer,
    external integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.personal_endurances OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 255 (class 1259 OID 5246232)
-- Name: personal_endurances_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.personal_endurances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_endurances_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 255
-- Name: personal_endurances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.personal_endurances_id_seq OWNED BY public.personal_endurances.id;


--
-- TOC entry 284 (class 1259 OID 5246390)
-- Name: personal_endurances_nilai_pe_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.personal_endurances_nilai_pe_links (
    personal_endurance_id integer,
    fit_proper_id integer
);


ALTER TABLE public.personal_endurances_nilai_pe_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 258 (class 1259 OID 5246242)
-- Name: proyeksi_jabatans; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.proyeksi_jabatans (
    id integer NOT NULL,
    pemasaran integer,
    keteknisan integer,
    k_3_l integer,
    kontribusi_kpi integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.proyeksi_jabatans OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 257 (class 1259 OID 5246241)
-- Name: proyeksi_jabatans_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.proyeksi_jabatans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyeksi_jabatans_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 257
-- Name: proyeksi_jabatans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.proyeksi_jabatans_id_seq OWNED BY public.proyeksi_jabatans.id;


--
-- TOC entry 285 (class 1259 OID 5246400)
-- Name: proyeksi_jabatans_nilai_pj_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.proyeksi_jabatans_nilai_pj_links (
    proyeksi_jabatan_id integer,
    fit_proper_id integer
);


ALTER TABLE public.proyeksi_jabatans_nilai_pj_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 224 (class 1259 OID 5246075)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 223 (class 1259 OID 5246074)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 214 (class 1259 OID 5246024)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 213 (class 1259 OID 5246023)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 213
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 212 (class 1259 OID 5246015)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 211 (class 1259 OID 5246014)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 211
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 210 (class 1259 OID 5246008)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 209 (class 1259 OID 5246007)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 209
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 216 (class 1259 OID 5246033)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 215 (class 1259 OID 5246032)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 260 (class 1259 OID 5246251)
-- Name: sub_bidangs; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.sub_bidangs (
    id integer NOT NULL,
    nama_sub_bidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sub_bidangs OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 259 (class 1259 OID 5246250)
-- Name: sub_bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.sub_bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_bidangs_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 259
-- Name: sub_bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.sub_bidangs_id_seq OWNED BY public.sub_bidangs.id;


--
-- TOC entry 262 (class 1259 OID 5246260)
-- Name: units; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.units (
    id integer NOT NULL,
    nama_unit character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.units OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 287 (class 1259 OID 5246415)
-- Name: units_direktorats_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.units_direktorats_links (
    unit_id integer,
    direktorat_id integer
);


ALTER TABLE public.units_direktorats_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 261 (class 1259 OID 5246259)
-- Name: units_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.units_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 261
-- Name: units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;


--
-- TOC entry 286 (class 1259 OID 5246410)
-- Name: units_jabatans_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.units_jabatans_links (
    unit_id integer,
    jabatan_id integer
);


ALTER TABLE public.units_jabatans_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 230 (class 1259 OID 5246108)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 229 (class 1259 OID 5246107)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 229
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 268 (class 1259 OID 5246294)
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 232 (class 1259 OID 5246117)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 231 (class 1259 OID 5246116)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 231
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 234 (class 1259 OID 5246128)
-- Name: up_users; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 233 (class 1259 OID 5246127)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 233
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 269 (class 1259 OID 5246299)
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 264 (class 1259 OID 5246270)
-- Name: wawancaras; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.wawancaras (
    id integer NOT NULL,
    tanggal_wawancara date,
    nilai_wawancara integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.wawancaras OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 263 (class 1259 OID 5246269)
-- Name: wawancaras_id_seq; Type: SEQUENCE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE SEQUENCE public.wawancaras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wawancaras_id_seq OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 263
-- Name: wawancaras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER SEQUENCE public.wawancaras_id_seq OWNED BY public.wawancaras.id;


--
-- TOC entry 292 (class 1259 OID 12526987)
-- Name: wawancaras_pewawancara_links; Type: TABLE; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE TABLE public.wawancaras_pewawancara_links (
    wawancara_id integer,
    penguji_id integer
);


ALTER TABLE public.wawancaras_pewawancara_links OWNER TO qtkyrxmefkeqow;

--
-- TOC entry 4399 (class 2604 OID 5246045)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 4401 (class 2604 OID 5246067)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 4400 (class 2604 OID 5246056)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 4408 (class 2604 OID 5246142)
-- Name: administration_users id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.administration_users ALTER COLUMN id SET DEFAULT nextval('public.administration_users_id_seq'::regclass);


--
-- TOC entry 4409 (class 2604 OID 5246151)
-- Name: bidangs id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs ALTER COLUMN id SET DEFAULT nextval('public.bidangs_id_seq'::regclass);


--
-- TOC entry 4423 (class 2604 OID 8159702)
-- Name: bobot_nilai id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bobot_nilai ALTER COLUMN id SET DEFAULT nextval('public.bobot_nilai_id_seq'::regclass);


--
-- TOC entry 4410 (class 2604 OID 5246160)
-- Name: direktorats id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats ALTER COLUMN id SET DEFAULT nextval('public.direktorats_id_seq'::regclass);


--
-- TOC entry 4411 (class 2604 OID 5246169)
-- Name: divisis id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis ALTER COLUMN id SET DEFAULT nextval('public.divisis_id_seq'::regclass);


--
-- TOC entry 4403 (class 2604 OID 5246089)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 4412 (class 2604 OID 5246178)
-- Name: fit_propers id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers ALTER COLUMN id SET DEFAULT nextval('public.fit_propers_id_seq'::regclass);


--
-- TOC entry 4404 (class 2604 OID 5246100)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 4413 (class 2604 OID 5246189)
-- Name: jabatans id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.jabatans ALTER COLUMN id SET DEFAULT nextval('public.jabatans_id_seq'::regclass);


--
-- TOC entry 4414 (class 2604 OID 5246198)
-- Name: key_competencies id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies ALTER COLUMN id SET DEFAULT nextval('public.key_competencies_id_seq'::regclass);


--
-- TOC entry 4415 (class 2604 OID 5246207)
-- Name: pegawais id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais ALTER COLUMN id SET DEFAULT nextval('public.pegawais_id_seq'::regclass);


--
-- TOC entry 4416 (class 2604 OID 5246218)
-- Name: pendidikans id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pendidikans ALTER COLUMN id SET DEFAULT nextval('public.pendidikans_id_seq'::regclass);


--
-- TOC entry 4417 (class 2604 OID 5246227)
-- Name: pengujis id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis ALTER COLUMN id SET DEFAULT nextval('public.pengujis_id_seq'::regclass);


--
-- TOC entry 4418 (class 2604 OID 5246236)
-- Name: personal_endurances id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances ALTER COLUMN id SET DEFAULT nextval('public.personal_endurances_id_seq'::regclass);


--
-- TOC entry 4419 (class 2604 OID 5246245)
-- Name: proyeksi_jabatans id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans ALTER COLUMN id SET DEFAULT nextval('public.proyeksi_jabatans_id_seq'::regclass);


--
-- TOC entry 4402 (class 2604 OID 5246078)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 4397 (class 2604 OID 5246027)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 4396 (class 2604 OID 5246018)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 4395 (class 2604 OID 5246011)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 4398 (class 2604 OID 5246036)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 4420 (class 2604 OID 5246254)
-- Name: sub_bidangs id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.sub_bidangs ALTER COLUMN id SET DEFAULT nextval('public.sub_bidangs_id_seq'::regclass);


--
-- TOC entry 4421 (class 2604 OID 5246263)
-- Name: units id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);


--
-- TOC entry 4405 (class 2604 OID 5246111)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 4406 (class 2604 OID 5246120)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 4407 (class 2604 OID 5246131)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 4422 (class 2604 OID 5246273)
-- Name: wawancaras id; Type: DEFAULT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras ALTER COLUMN id SET DEFAULT nextval('public.wawancaras_id_seq'::regclass);


--
-- TOC entry 4832 (class 0 OID 5246042)
-- Dependencies: 218
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:26.507	2022-04-21 07:18:26.507	\N	\N
2	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:26.517	2022-04-21 07:18:26.517	\N	\N
3	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:26.528	2022-04-21 07:18:26.528	\N	\N
4	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:26.536	2022-04-21 07:18:26.536	\N	\N
5	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	[]	2022-04-21 07:18:26.546	2022-04-21 07:18:26.546	\N	\N
6	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:26.557	2022-04-21 07:18:26.557	\N	\N
7	plugin::content-manager.explorer.create	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	[]	2022-04-21 07:18:26.565	2022-04-21 07:18:26.565	\N	\N
8	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:26.572	2022-04-21 07:18:26.572	\N	\N
9	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:26.582	2022-04-21 07:18:26.582	\N	\N
11	plugin::content-manager.explorer.create	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:26.595	2022-04-21 07:18:26.595	\N	\N
12	plugin::content-manager.explorer.create	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:26.602	2022-04-21 07:18:26.602	\N	\N
13	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:26.608	2022-04-21 07:18:26.608	\N	\N
14	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:26.615	2022-04-21 07:18:26.615	\N	\N
15	plugin::content-manager.explorer.create	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	[]	2022-04-21 07:18:26.622	2022-04-21 07:18:26.622	\N	\N
16	plugin::content-manager.explorer.read	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:26.628	2022-04-21 07:18:26.628	\N	\N
17	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:26.635	2022-04-21 07:18:26.635	\N	\N
18	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:26.641	2022-04-21 07:18:26.641	\N	\N
19	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:26.649	2022-04-21 07:18:26.649	\N	\N
20	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	[]	2022-04-21 07:18:26.656	2022-04-21 07:18:26.656	\N	\N
21	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:26.663	2022-04-21 07:18:26.663	\N	\N
22	plugin::content-manager.explorer.read	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	[]	2022-04-21 07:18:26.669	2022-04-21 07:18:26.669	\N	\N
23	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:26.675	2022-04-21 07:18:26.675	\N	\N
24	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:26.681	2022-04-21 07:18:26.681	\N	\N
26	plugin::content-manager.explorer.read	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:26.694	2022-04-21 07:18:26.694	\N	\N
27	plugin::content-manager.explorer.read	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:26.71	2022-04-21 07:18:26.71	\N	\N
28	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:26.717	2022-04-21 07:18:26.717	\N	\N
29	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:26.726	2022-04-21 07:18:26.726	\N	\N
30	plugin::content-manager.explorer.read	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	[]	2022-04-21 07:18:26.734	2022-04-21 07:18:26.734	\N	\N
31	plugin::content-manager.explorer.update	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:26.742	2022-04-21 07:18:26.742	\N	\N
32	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:26.748	2022-04-21 07:18:26.748	\N	\N
33	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:26.755	2022-04-21 07:18:26.755	\N	\N
34	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:26.763	2022-04-21 07:18:26.763	\N	\N
35	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	[]	2022-04-21 07:18:26.77	2022-04-21 07:18:26.77	\N	\N
36	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:26.775	2022-04-21 07:18:26.775	\N	\N
37	plugin::content-manager.explorer.update	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	[]	2022-04-21 07:18:26.781	2022-04-21 07:18:26.781	\N	\N
122	plugin::content-manager.explorer.update	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.707	2022-04-21 07:18:27.707	\N	\N
38	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:26.79	2022-04-21 07:18:26.79	\N	\N
39	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:26.797	2022-04-21 07:18:26.797	\N	\N
41	plugin::content-manager.explorer.update	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:26.808	2022-04-21 07:18:26.808	\N	\N
42	plugin::content-manager.explorer.update	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:26.814	2022-04-21 07:18:26.814	\N	\N
43	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:26.82	2022-04-21 07:18:26.82	\N	\N
44	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:26.826	2022-04-21 07:18:26.826	\N	\N
45	plugin::content-manager.explorer.update	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	[]	2022-04-21 07:18:26.832	2022-04-21 07:18:26.832	\N	\N
46	plugin::content-manager.explorer.delete	api::administration-user.administration-user	{}	[]	2022-04-21 07:18:26.838	2022-04-21 07:18:26.838	\N	\N
47	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	[]	2022-04-21 07:18:26.845	2022-04-21 07:18:26.845	\N	\N
48	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	[]	2022-04-21 07:18:26.855	2022-04-21 07:18:26.855	\N	\N
49	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	[]	2022-04-21 07:18:26.865	2022-04-21 07:18:26.865	\N	\N
50	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	[]	2022-04-21 07:18:26.88	2022-04-21 07:18:26.88	\N	\N
51	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	[]	2022-04-21 07:18:26.886	2022-04-21 07:18:26.886	\N	\N
52	plugin::content-manager.explorer.delete	api::key-competency.key-competency	{}	[]	2022-04-21 07:18:26.892	2022-04-21 07:18:26.892	\N	\N
53	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	[]	2022-04-21 07:18:26.899	2022-04-21 07:18:26.899	\N	\N
54	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	[]	2022-04-21 07:18:26.905	2022-04-21 07:18:26.905	\N	\N
55	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	[]	2022-04-21 07:18:26.914	2022-04-21 07:18:26.914	\N	\N
56	plugin::content-manager.explorer.delete	api::personal-endurance.personal-endurance	{}	[]	2022-04-21 07:18:26.921	2022-04-21 07:18:26.921	\N	\N
57	plugin::content-manager.explorer.delete	api::proyeksi-jabatan.proyeksi-jabatan	{}	[]	2022-04-21 07:18:26.927	2022-04-21 07:18:26.927	\N	\N
58	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	[]	2022-04-21 07:18:26.934	2022-04-21 07:18:26.934	\N	\N
59	plugin::content-manager.explorer.delete	api::unit.unit	{}	[]	2022-04-21 07:18:26.94	2022-04-21 07:18:26.94	\N	\N
60	plugin::content-manager.explorer.delete	api::wawancara.wawancara	{}	[]	2022-04-21 07:18:26.946	2022-04-21 07:18:26.946	\N	\N
61	plugin::content-manager.explorer.publish	api::administration-user.administration-user	{}	[]	2022-04-21 07:18:26.952	2022-04-21 07:18:26.952	\N	\N
62	plugin::content-manager.explorer.publish	api::bidang.bidang	{}	[]	2022-04-21 07:18:26.963	2022-04-21 07:18:26.963	\N	\N
63	plugin::content-manager.explorer.publish	api::direktorat.direktorat	{}	[]	2022-04-21 07:18:26.972	2022-04-21 07:18:26.972	\N	\N
64	plugin::content-manager.explorer.publish	api::divisi.divisi	{}	[]	2022-04-21 07:18:26.985	2022-04-21 07:18:26.985	\N	\N
65	plugin::content-manager.explorer.publish	api::fit-proper.fit-proper	{}	[]	2022-04-21 07:18:27.017	2022-04-21 07:18:27.017	\N	\N
66	plugin::content-manager.explorer.publish	api::jabatan.jabatan	{}	[]	2022-04-21 07:18:27.041	2022-04-21 07:18:27.041	\N	\N
67	plugin::content-manager.explorer.publish	api::key-competency.key-competency	{}	[]	2022-04-21 07:18:27.065	2022-04-21 07:18:27.065	\N	\N
68	plugin::content-manager.explorer.publish	api::pegawai.pegawai	{}	[]	2022-04-21 07:18:27.089	2022-04-21 07:18:27.089	\N	\N
69	plugin::content-manager.explorer.publish	api::pendidikan.pendidikan	{}	[]	2022-04-21 07:18:27.113	2022-04-21 07:18:27.113	\N	\N
70	plugin::content-manager.explorer.publish	api::penguji.penguji	{}	[]	2022-04-21 07:18:27.137	2022-04-21 07:18:27.137	\N	\N
71	plugin::content-manager.explorer.publish	api::personal-endurance.personal-endurance	{}	[]	2022-04-21 07:18:27.159	2022-04-21 07:18:27.159	\N	\N
72	plugin::content-manager.explorer.publish	api::proyeksi-jabatan.proyeksi-jabatan	{}	[]	2022-04-21 07:18:27.173	2022-04-21 07:18:27.173	\N	\N
73	plugin::content-manager.explorer.publish	api::sub-bidang.sub-bidang	{}	[]	2022-04-21 07:18:27.193	2022-04-21 07:18:27.193	\N	\N
74	plugin::content-manager.explorer.publish	api::unit.unit	{}	[]	2022-04-21 07:18:27.207	2022-04-21 07:18:27.207	\N	\N
75	plugin::content-manager.explorer.publish	api::wawancara.wawancara	{}	[]	2022-04-21 07:18:27.219	2022-04-21 07:18:27.219	\N	\N
76	plugin::upload.read	\N	{}	[]	2022-04-21 07:18:27.229	2022-04-21 07:18:27.229	\N	\N
77	plugin::upload.assets.create	\N	{}	[]	2022-04-21 07:18:27.249	2022-04-21 07:18:27.249	\N	\N
78	plugin::upload.assets.update	\N	{}	[]	2022-04-21 07:18:27.265	2022-04-21 07:18:27.265	\N	\N
79	plugin::upload.assets.download	\N	{}	[]	2022-04-21 07:18:27.281	2022-04-21 07:18:27.281	\N	\N
80	plugin::upload.assets.copy-link	\N	{}	[]	2022-04-21 07:18:27.297	2022-04-21 07:18:27.297	\N	\N
81	plugin::content-manager.explorer.create	api::administration-user.administration-user	{"fields": ["password", "account"]}	["admin::is-creator"]	2022-04-21 07:18:27.34	2022-04-21 07:18:27.34	\N	\N
82	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.385	2022-04-21 07:18:27.385	\N	\N
83	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	["admin::is-creator"]	2022-04-21 07:18:27.397	2022-04-21 07:18:27.397	\N	\N
84	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.412	2022-04-21 07:18:27.412	\N	\N
85	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	["admin::is-creator"]	2022-04-21 07:18:27.425	2022-04-21 07:18:27.425	\N	\N
86	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	["admin::is-creator"]	2022-04-21 07:18:27.432	2022-04-21 07:18:27.432	\N	\N
87	plugin::content-manager.explorer.create	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.438	2022-04-21 07:18:27.438	\N	\N
209	plugin::content-manager.explorer.delete	api::wawancara.wawancara	{}	[]	2022-04-21 07:18:28.612	2022-04-21 07:18:28.612	\N	\N
88	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	["admin::is-creator"]	2022-04-21 07:18:27.445	2022-04-21 07:18:27.445	\N	\N
89	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	["admin::is-creator"]	2022-04-21 07:18:27.451	2022-04-21 07:18:27.451	\N	\N
91	plugin::content-manager.explorer.create	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.465	2022-04-21 07:18:27.465	\N	\N
92	plugin::content-manager.explorer.create	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.473	2022-04-21 07:18:27.473	\N	\N
93	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	["admin::is-creator"]	2022-04-21 07:18:27.481	2022-04-21 07:18:27.481	\N	\N
94	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	["admin::is-creator"]	2022-04-21 07:18:27.486	2022-04-21 07:18:27.486	\N	\N
95	plugin::content-manager.explorer.create	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	["admin::is-creator"]	2022-04-21 07:18:27.493	2022-04-21 07:18:27.493	\N	\N
96	plugin::content-manager.explorer.read	api::administration-user.administration-user	{"fields": ["password", "account"]}	["admin::is-creator"]	2022-04-21 07:18:27.499	2022-04-21 07:18:27.499	\N	\N
97	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.507	2022-04-21 07:18:27.507	\N	\N
98	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	["admin::is-creator"]	2022-04-21 07:18:27.515	2022-04-21 07:18:27.515	\N	\N
99	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.524	2022-04-21 07:18:27.524	\N	\N
100	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	["admin::is-creator"]	2022-04-21 07:18:27.532	2022-04-21 07:18:27.532	\N	\N
101	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	["admin::is-creator"]	2022-04-21 07:18:27.539	2022-04-21 07:18:27.539	\N	\N
102	plugin::content-manager.explorer.read	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.546	2022-04-21 07:18:27.546	\N	\N
103	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	["admin::is-creator"]	2022-04-21 07:18:27.553	2022-04-21 07:18:27.553	\N	\N
104	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	["admin::is-creator"]	2022-04-21 07:18:27.563	2022-04-21 07:18:27.563	\N	\N
106	plugin::content-manager.explorer.read	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.578	2022-04-21 07:18:27.578	\N	\N
107	plugin::content-manager.explorer.read	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.585	2022-04-21 07:18:27.585	\N	\N
108	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	["admin::is-creator"]	2022-04-21 07:18:27.596	2022-04-21 07:18:27.596	\N	\N
109	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	["admin::is-creator"]	2022-04-21 07:18:27.603	2022-04-21 07:18:27.603	\N	\N
110	plugin::content-manager.explorer.read	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	["admin::is-creator"]	2022-04-21 07:18:27.61	2022-04-21 07:18:27.61	\N	\N
111	plugin::content-manager.explorer.update	api::administration-user.administration-user	{"fields": ["password", "account"]}	["admin::is-creator"]	2022-04-21 07:18:27.618	2022-04-21 07:18:27.618	\N	\N
112	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.629	2022-04-21 07:18:27.629	\N	\N
113	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	["admin::is-creator"]	2022-04-21 07:18:27.638	2022-04-21 07:18:27.638	\N	\N
114	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	["admin::is-creator"]	2022-04-21 07:18:27.647	2022-04-21 07:18:27.647	\N	\N
115	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "pengujis", "id_wawancara"]}	["admin::is-creator"]	2022-04-21 07:18:27.655	2022-04-21 07:18:27.655	\N	\N
116	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	["admin::is-creator"]	2022-04-21 07:18:27.663	2022-04-21 07:18:27.663	\N	\N
117	plugin::content-manager.explorer.update	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.669	2022-04-21 07:18:27.669	\N	\N
118	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	["admin::is-creator"]	2022-04-21 07:18:27.675	2022-04-21 07:18:27.675	\N	\N
119	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	["admin::is-creator"]	2022-04-21 07:18:27.682	2022-04-21 07:18:27.682	\N	\N
121	plugin::content-manager.explorer.update	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	["admin::is-creator"]	2022-04-21 07:18:27.701	2022-04-21 07:18:27.701	\N	\N
105	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	["admin::is-creator"]	2022-04-21 07:18:27.572	2022-06-01 06:34:57.662	\N	\N
123	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	["admin::is-creator"]	2022-04-21 07:18:27.716	2022-04-21 07:18:27.716	\N	\N
124	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	["admin::is-creator"]	2022-04-21 07:18:27.722	2022-04-21 07:18:27.722	\N	\N
125	plugin::content-manager.explorer.update	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper"]}	["admin::is-creator"]	2022-04-21 07:18:27.732	2022-04-21 07:18:27.732	\N	\N
126	plugin::content-manager.explorer.delete	api::administration-user.administration-user	{}	["admin::is-creator"]	2022-04-21 07:18:27.738	2022-04-21 07:18:27.738	\N	\N
127	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	["admin::is-creator"]	2022-04-21 07:18:27.744	2022-04-21 07:18:27.744	\N	\N
128	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	["admin::is-creator"]	2022-04-21 07:18:27.751	2022-04-21 07:18:27.751	\N	\N
129	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	["admin::is-creator"]	2022-04-21 07:18:27.76	2022-04-21 07:18:27.76	\N	\N
130	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	["admin::is-creator"]	2022-04-21 07:18:27.768	2022-04-21 07:18:27.768	\N	\N
131	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	["admin::is-creator"]	2022-04-21 07:18:27.774	2022-04-21 07:18:27.774	\N	\N
132	plugin::content-manager.explorer.delete	api::key-competency.key-competency	{}	["admin::is-creator"]	2022-04-21 07:18:27.783	2022-04-21 07:18:27.783	\N	\N
133	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	["admin::is-creator"]	2022-04-21 07:18:27.803	2022-04-21 07:18:27.803	\N	\N
134	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	["admin::is-creator"]	2022-04-21 07:18:27.81	2022-04-21 07:18:27.81	\N	\N
135	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	["admin::is-creator"]	2022-04-21 07:18:27.819	2022-04-21 07:18:27.819	\N	\N
136	plugin::content-manager.explorer.delete	api::personal-endurance.personal-endurance	{}	["admin::is-creator"]	2022-04-21 07:18:27.825	2022-04-21 07:18:27.825	\N	\N
137	plugin::content-manager.explorer.delete	api::proyeksi-jabatan.proyeksi-jabatan	{}	["admin::is-creator"]	2022-04-21 07:18:27.831	2022-04-21 07:18:27.831	\N	\N
138	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	["admin::is-creator"]	2022-04-21 07:18:27.839	2022-04-21 07:18:27.839	\N	\N
139	plugin::content-manager.explorer.delete	api::unit.unit	{}	["admin::is-creator"]	2022-04-21 07:18:27.848	2022-04-21 07:18:27.848	\N	\N
140	plugin::content-manager.explorer.delete	api::wawancara.wawancara	{}	["admin::is-creator"]	2022-04-21 07:18:27.855	2022-04-21 07:18:27.855	\N	\N
141	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-04-21 07:18:27.861	2022-04-21 07:18:27.861	\N	\N
142	plugin::upload.assets.create	\N	{}	[]	2022-04-21 07:18:27.869	2022-04-21 07:18:27.869	\N	\N
143	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-04-21 07:18:27.877	2022-04-21 07:18:27.877	\N	\N
144	plugin::upload.assets.download	\N	{}	[]	2022-04-21 07:18:27.885	2022-04-21 07:18:27.885	\N	\N
145	plugin::upload.assets.copy-link	\N	{}	[]	2022-04-21 07:18:27.891	2022-04-21 07:18:27.891	\N	\N
146	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-04-21 07:18:27.986	2022-04-21 07:18:27.986	\N	\N
147	plugin::content-manager.explorer.create	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:28	2022-04-21 07:18:28	\N	\N
148	plugin::content-manager.explorer.create	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:28.012	2022-04-21 07:18:28.012	\N	\N
149	plugin::content-manager.explorer.create	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:28.025	2022-04-21 07:18:28.025	\N	\N
150	plugin::content-manager.explorer.create	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:28.041	2022-04-21 07:18:28.041	\N	\N
152	plugin::content-manager.explorer.create	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:28.072	2022-04-21 07:18:28.072	\N	\N
154	plugin::content-manager.explorer.create	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:28.105	2022-04-21 07:18:28.105	\N	\N
155	plugin::content-manager.explorer.create	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:28.121	2022-04-21 07:18:28.121	\N	\N
157	plugin::content-manager.explorer.create	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:28.149	2022-04-21 07:18:28.149	\N	\N
158	plugin::content-manager.explorer.create	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:28.161	2022-04-21 07:18:28.161	\N	\N
159	plugin::content-manager.explorer.create	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:28.173	2022-04-21 07:18:28.173	\N	\N
160	plugin::content-manager.explorer.create	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:28.185	2022-04-21 07:18:28.185	\N	\N
162	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-04-21 07:18:28.217	2022-04-21 07:18:28.217	\N	\N
163	plugin::content-manager.explorer.read	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:28.233	2022-04-21 07:18:28.233	\N	\N
164	plugin::content-manager.explorer.read	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:28.245	2022-04-21 07:18:28.245	\N	\N
165	plugin::content-manager.explorer.read	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:28.257	2022-04-21 07:18:28.257	\N	\N
166	plugin::content-manager.explorer.read	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:28.273	2022-04-21 07:18:28.273	\N	\N
168	plugin::content-manager.explorer.read	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:28.313	2022-04-21 07:18:28.313	\N	\N
170	plugin::content-manager.explorer.read	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:28.341	2022-04-21 07:18:28.341	\N	\N
171	plugin::content-manager.explorer.read	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:28.35	2022-04-21 07:18:28.35	\N	\N
173	plugin::content-manager.explorer.read	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:28.363	2022-04-21 07:18:28.363	\N	\N
174	plugin::content-manager.explorer.read	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:28.37	2022-04-21 07:18:28.37	\N	\N
175	plugin::content-manager.explorer.read	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:28.377	2022-04-21 07:18:28.377	\N	\N
176	plugin::content-manager.explorer.read	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:28.387	2022-04-21 07:18:28.387	\N	\N
178	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-04-21 07:18:28.399	2022-04-21 07:18:28.399	\N	\N
179	plugin::content-manager.explorer.update	api::administration-user.administration-user	{"fields": ["password", "account"]}	[]	2022-04-21 07:18:28.405	2022-04-21 07:18:28.405	\N	\N
180	plugin::content-manager.explorer.update	api::bidang.bidang	{"fields": ["namaBidang", "sub_bidangs"]}	[]	2022-04-21 07:18:28.411	2022-04-21 07:18:28.411	\N	\N
181	plugin::content-manager.explorer.update	api::direktorat.direktorat	{"fields": ["namaDirektorat", "divises"]}	[]	2022-04-21 07:18:28.422	2022-04-21 07:18:28.422	\N	\N
182	plugin::content-manager.explorer.update	api::divisi.divisi	{"fields": ["namaDivisi", "bidangs"]}	[]	2022-04-21 07:18:28.429	2022-04-21 07:18:28.429	\N	\N
184	plugin::content-manager.explorer.update	api::jabatan.jabatan	{"fields": ["namaJabatan", "pegawais", "units"]}	[]	2022-04-21 07:18:28.443	2022-04-21 07:18:28.443	\N	\N
186	plugin::content-manager.explorer.update	api::pegawai.pegawai	{"fields": ["namaPegawai", "NIP", "tempatLahir", "tanggalLahir", "agama", "email", "gender", "noHP", "pendidikan", "alamat", "jabatan", "unit", "role", "grade", "jenjang", "peserta", "pengujis", "id_user"]}	[]	2022-04-21 07:18:28.461	2022-04-21 07:18:28.461	\N	\N
187	plugin::content-manager.explorer.update	api::pendidikan.pendidikan	{"fields": ["namaPendidikan", "pegawais"]}	[]	2022-04-21 07:18:28.468	2022-04-21 07:18:28.468	\N	\N
189	plugin::content-manager.explorer.update	api::personal-endurance.personal-endurance	{"fields": ["internal", "external", "nilai_pe", "penguji"]}	[]	2022-04-21 07:18:28.482	2022-04-21 07:18:28.482	\N	\N
190	plugin::content-manager.explorer.update	api::proyeksi-jabatan.proyeksi-jabatan	{"fields": ["pemasaran", "keteknisan", "k3l", "kontribusi_kpi", "nilai_pj", "penguji"]}	[]	2022-04-21 07:18:28.488	2022-04-21 07:18:28.488	\N	\N
191	plugin::content-manager.explorer.update	api::sub-bidang.sub-bidang	{"fields": ["namaSubBidang"]}	[]	2022-04-21 07:18:28.494	2022-04-21 07:18:28.494	\N	\N
192	plugin::content-manager.explorer.update	api::unit.unit	{"fields": ["namaUnit", "pegawais", "jabatans", "direktorats"]}	[]	2022-04-21 07:18:28.5	2022-04-21 07:18:28.5	\N	\N
194	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-04-21 07:18:28.511	2022-04-21 07:18:28.511	\N	\N
195	plugin::content-manager.explorer.delete	api::administration-user.administration-user	{}	[]	2022-04-21 07:18:28.517	2022-04-21 07:18:28.517	\N	\N
196	plugin::content-manager.explorer.delete	api::bidang.bidang	{}	[]	2022-04-21 07:18:28.523	2022-04-21 07:18:28.523	\N	\N
197	plugin::content-manager.explorer.delete	api::direktorat.direktorat	{}	[]	2022-04-21 07:18:28.528	2022-04-21 07:18:28.528	\N	\N
198	plugin::content-manager.explorer.delete	api::divisi.divisi	{}	[]	2022-04-21 07:18:28.534	2022-04-21 07:18:28.534	\N	\N
199	plugin::content-manager.explorer.delete	api::fit-proper.fit-proper	{}	[]	2022-04-21 07:18:28.54	2022-04-21 07:18:28.54	\N	\N
200	plugin::content-manager.explorer.delete	api::jabatan.jabatan	{}	[]	2022-04-21 07:18:28.547	2022-04-21 07:18:28.547	\N	\N
201	plugin::content-manager.explorer.delete	api::key-competency.key-competency	{}	[]	2022-04-21 07:18:28.553	2022-04-21 07:18:28.553	\N	\N
202	plugin::content-manager.explorer.delete	api::pegawai.pegawai	{}	[]	2022-04-21 07:18:28.559	2022-04-21 07:18:28.559	\N	\N
203	plugin::content-manager.explorer.delete	api::pendidikan.pendidikan	{}	[]	2022-04-21 07:18:28.566	2022-04-21 07:18:28.566	\N	\N
204	plugin::content-manager.explorer.delete	api::penguji.penguji	{}	[]	2022-04-21 07:18:28.574	2022-04-21 07:18:28.574	\N	\N
205	plugin::content-manager.explorer.delete	api::personal-endurance.personal-endurance	{}	[]	2022-04-21 07:18:28.581	2022-04-21 07:18:28.581	\N	\N
206	plugin::content-manager.explorer.delete	api::proyeksi-jabatan.proyeksi-jabatan	{}	[]	2022-04-21 07:18:28.589	2022-04-21 07:18:28.589	\N	\N
207	plugin::content-manager.explorer.delete	api::sub-bidang.sub-bidang	{}	[]	2022-04-21 07:18:28.597	2022-04-21 07:18:28.597	\N	\N
208	plugin::content-manager.explorer.delete	api::unit.unit	{}	[]	2022-04-21 07:18:28.606	2022-04-21 07:18:28.606	\N	\N
210	plugin::content-manager.explorer.publish	api::administration-user.administration-user	{}	[]	2022-04-21 07:18:28.619	2022-04-21 07:18:28.619	\N	\N
211	plugin::content-manager.explorer.publish	api::bidang.bidang	{}	[]	2022-04-21 07:18:28.625	2022-04-21 07:18:28.625	\N	\N
212	plugin::content-manager.explorer.publish	api::direktorat.direktorat	{}	[]	2022-04-21 07:18:28.633	2022-04-21 07:18:28.633	\N	\N
213	plugin::content-manager.explorer.publish	api::divisi.divisi	{}	[]	2022-04-21 07:18:28.639	2022-04-21 07:18:28.639	\N	\N
214	plugin::content-manager.explorer.publish	api::fit-proper.fit-proper	{}	[]	2022-04-21 07:18:28.646	2022-04-21 07:18:28.646	\N	\N
215	plugin::content-manager.explorer.publish	api::jabatan.jabatan	{}	[]	2022-04-21 07:18:28.652	2022-04-21 07:18:28.652	\N	\N
216	plugin::content-manager.explorer.publish	api::key-competency.key-competency	{}	[]	2022-04-21 07:18:28.659	2022-04-21 07:18:28.659	\N	\N
217	plugin::content-manager.explorer.publish	api::pegawai.pegawai	{}	[]	2022-04-21 07:18:28.665	2022-04-21 07:18:28.665	\N	\N
218	plugin::content-manager.explorer.publish	api::pendidikan.pendidikan	{}	[]	2022-04-21 07:18:28.672	2022-04-21 07:18:28.672	\N	\N
219	plugin::content-manager.explorer.publish	api::penguji.penguji	{}	[]	2022-04-21 07:18:28.679	2022-04-21 07:18:28.679	\N	\N
220	plugin::content-manager.explorer.publish	api::personal-endurance.personal-endurance	{}	[]	2022-04-21 07:18:28.688	2022-04-21 07:18:28.688	\N	\N
221	plugin::content-manager.explorer.publish	api::proyeksi-jabatan.proyeksi-jabatan	{}	[]	2022-04-21 07:18:28.695	2022-04-21 07:18:28.695	\N	\N
222	plugin::content-manager.explorer.publish	api::sub-bidang.sub-bidang	{}	[]	2022-04-21 07:18:28.703	2022-04-21 07:18:28.703	\N	\N
223	plugin::content-manager.explorer.publish	api::unit.unit	{}	[]	2022-04-21 07:18:28.709	2022-04-21 07:18:28.709	\N	\N
224	plugin::content-manager.explorer.publish	api::wawancara.wawancara	{}	[]	2022-04-21 07:18:28.715	2022-04-21 07:18:28.715	\N	\N
225	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-04-21 07:18:28.721	2022-04-21 07:18:28.721	\N	\N
226	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-04-21 07:18:28.728	2022-04-21 07:18:28.728	\N	\N
227	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-04-21 07:18:28.734	2022-04-21 07:18:28.734	\N	\N
228	plugin::content-type-builder.read	\N	{}	[]	2022-04-21 07:18:28.74	2022-04-21 07:18:28.74	\N	\N
229	plugin::email.settings.read	\N	{}	[]	2022-04-21 07:18:28.746	2022-04-21 07:18:28.746	\N	\N
230	plugin::upload.read	\N	{}	[]	2022-04-21 07:18:28.754	2022-04-21 07:18:28.754	\N	\N
231	plugin::upload.assets.create	\N	{}	[]	2022-04-21 07:18:28.768	2022-04-21 07:18:28.768	\N	\N
232	plugin::upload.assets.update	\N	{}	[]	2022-04-21 07:18:28.778	2022-04-21 07:18:28.778	\N	\N
233	plugin::upload.assets.download	\N	{}	[]	2022-04-21 07:18:28.785	2022-04-21 07:18:28.785	\N	\N
234	plugin::upload.assets.copy-link	\N	{}	[]	2022-04-21 07:18:28.795	2022-04-21 07:18:28.795	\N	\N
235	plugin::upload.settings.read	\N	{}	[]	2022-04-21 07:18:28.808	2022-04-21 07:18:28.808	\N	\N
236	plugin::i18n.locale.create	\N	{}	[]	2022-04-21 07:18:28.821	2022-04-21 07:18:28.821	\N	\N
237	plugin::i18n.locale.read	\N	{}	[]	2022-04-21 07:18:28.833	2022-04-21 07:18:28.833	\N	\N
238	plugin::i18n.locale.update	\N	{}	[]	2022-04-21 07:18:28.839	2022-04-21 07:18:28.839	\N	\N
239	plugin::i18n.locale.delete	\N	{}	[]	2022-04-21 07:18:28.846	2022-04-21 07:18:28.846	\N	\N
240	plugin::users-permissions.roles.create	\N	{}	[]	2022-04-21 07:18:28.861	2022-04-21 07:18:28.861	\N	\N
241	plugin::users-permissions.roles.read	\N	{}	[]	2022-04-21 07:18:28.873	2022-04-21 07:18:28.873	\N	\N
242	plugin::users-permissions.roles.update	\N	{}	[]	2022-04-21 07:18:28.879	2022-04-21 07:18:28.879	\N	\N
243	plugin::users-permissions.roles.delete	\N	{}	[]	2022-04-21 07:18:28.885	2022-04-21 07:18:28.885	\N	\N
244	plugin::users-permissions.providers.read	\N	{}	[]	2022-04-21 07:18:28.892	2022-04-21 07:18:28.892	\N	\N
245	plugin::users-permissions.providers.update	\N	{}	[]	2022-04-21 07:18:28.901	2022-04-21 07:18:28.901	\N	\N
246	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-04-21 07:18:28.91	2022-04-21 07:18:28.91	\N	\N
247	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-04-21 07:18:28.917	2022-04-21 07:18:28.917	\N	\N
248	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-04-21 07:18:28.924	2022-04-21 07:18:28.924	\N	\N
249	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-04-21 07:18:28.93	2022-04-21 07:18:28.93	\N	\N
250	admin::marketplace.read	\N	{}	[]	2022-04-21 07:18:28.936	2022-04-21 07:18:28.936	\N	\N
251	admin::marketplace.plugins.install	\N	{}	[]	2022-04-21 07:18:28.945	2022-04-21 07:18:28.945	\N	\N
252	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-04-21 07:18:28.957	2022-04-21 07:18:28.957	\N	\N
253	admin::webhooks.create	\N	{}	[]	2022-04-21 07:18:28.978	2022-04-21 07:18:28.978	\N	\N
254	admin::webhooks.read	\N	{}	[]	2022-04-21 07:18:28.989	2022-04-21 07:18:28.989	\N	\N
255	admin::webhooks.update	\N	{}	[]	2022-04-21 07:18:29.002	2022-04-21 07:18:29.002	\N	\N
256	admin::webhooks.delete	\N	{}	[]	2022-04-21 07:18:29.013	2022-04-21 07:18:29.013	\N	\N
257	admin::users.create	\N	{}	[]	2022-04-21 07:18:29.025	2022-04-21 07:18:29.025	\N	\N
258	admin::users.read	\N	{}	[]	2022-04-21 07:18:29.041	2022-04-21 07:18:29.041	\N	\N
259	admin::users.update	\N	{}	[]	2022-04-21 07:18:29.057	2022-04-21 07:18:29.057	\N	\N
260	admin::users.delete	\N	{}	[]	2022-04-21 07:18:29.081	2022-04-21 07:18:29.081	\N	\N
261	admin::roles.create	\N	{}	[]	2022-04-21 07:18:29.092	2022-04-21 07:18:29.092	\N	\N
262	admin::roles.read	\N	{}	[]	2022-04-21 07:18:29.109	2022-04-21 07:18:29.109	\N	\N
263	admin::roles.update	\N	{}	[]	2022-04-21 07:18:29.127	2022-04-21 07:18:29.127	\N	\N
264	admin::roles.delete	\N	{}	[]	2022-04-21 07:18:29.138	2022-04-21 07:18:29.138	\N	\N
265	admin::api-tokens.create	\N	{}	[]	2022-04-21 07:18:29.156	2022-04-21 07:18:29.156	\N	\N
266	admin::api-tokens.read	\N	{}	[]	2022-04-21 07:18:29.168	2022-04-21 07:18:29.168	\N	\N
267	admin::api-tokens.update	\N	{}	[]	2022-04-21 07:18:29.185	2022-04-21 07:18:29.185	\N	\N
268	admin::api-tokens.delete	\N	{}	[]	2022-04-21 07:18:29.197	2022-04-21 07:18:29.197	\N	\N
275	plugin::content-manager.explorer.create	api::bobot-nilai.bobot-nilai	{"fields": ["namaBobot", "bobot"]}	[]	2022-05-12 04:27:22.608	2022-05-12 04:27:22.608	\N	\N
276	plugin::content-manager.explorer.read	api::bobot-nilai.bobot-nilai	{"fields": ["namaBobot", "bobot"]}	[]	2022-05-12 04:27:22.618	2022-05-12 04:27:22.618	\N	\N
277	plugin::content-manager.explorer.update	api::bobot-nilai.bobot-nilai	{"fields": ["namaBobot", "bobot"]}	[]	2022-05-12 04:27:22.625	2022-05-12 04:27:22.625	\N	\N
278	plugin::content-manager.explorer.delete	api::bobot-nilai.bobot-nilai	{}	[]	2022-05-12 04:27:22.632	2022-05-12 04:27:22.632	\N	\N
279	plugin::content-manager.explorer.publish	api::bobot-nilai.bobot-nilai	{}	[]	2022-05-12 04:27:22.638	2022-05-12 04:27:22.638	\N	\N
283	plugin::content-manager.explorer.create	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji", "driving_execution"]}	[]	2022-05-22 12:23:47.869	2022-05-22 12:23:47.869	\N	\N
284	plugin::content-manager.explorer.read	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji", "driving_execution"]}	[]	2022-05-22 12:23:47.882	2022-05-22 12:23:47.882	\N	\N
285	plugin::content-manager.explorer.update	api::key-competency.key-competency	{"fields": ["enthusiasthic", "creative", "partnership", "bsn_acumen", "cust_focus", "empowering", "nilai_kc", "penguji", "driving_execution"]}	[]	2022-05-22 12:23:47.887	2022-05-22 12:23:47.887	\N	\N
286	plugin::content-manager.explorer.create	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "id_wawancara", "urjab", "ppt", "cv", "jenjang_proyeksi", "pengujis"]}	[]	2022-06-01 06:34:57.535	2022-06-01 06:34:57.535	\N	\N
288	plugin::content-manager.explorer.read	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "id_wawancara", "urjab", "ppt", "cv", "jenjang_proyeksi", "pengujis"]}	[]	2022-06-01 06:34:57.552	2022-06-01 06:34:57.552	\N	\N
290	plugin::content-manager.explorer.update	api::fit-proper.fit-proper	{"fields": ["tanggalFitProper", "proyeksi", "jenis", "idPeserta", "id_wawancara", "urjab", "ppt", "cv", "jenjang_proyeksi", "pengujis"]}	[]	2022-06-01 06:34:57.564	2022-06-01 06:34:57.564	\N	\N
90	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	["admin::is-creator"]	2022-04-21 07:18:27.457	2022-06-01 06:34:57.662	\N	\N
120	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	["admin::is-creator"]	2022-04-21 07:18:27.69	2022-06-01 06:34:57.662	\N	\N
25	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	[]	2022-04-21 07:18:26.687	2022-06-01 06:34:57.662	\N	\N
10	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	[]	2022-04-21 07:18:26.589	2022-06-01 06:34:57.662	\N	\N
40	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["id_penguji", "id_kc", "id_pe", "id_pj"]}	[]	2022-04-21 07:18:26.803	2022-06-01 06:34:57.662	\N	\N
298	plugin::content-manager.explorer.create	api::penguji.penguji	{"fields": ["id_fit_propers", "id_penguji", "id_kc", "id_pe", "id_pj", "mewawancara"]}	[]	2022-06-01 07:18:16.507	2022-06-01 07:18:16.507	\N	\N
299	plugin::content-manager.explorer.create	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper", "pewawancara"]}	[]	2022-06-01 07:18:16.514	2022-06-01 07:18:16.514	\N	\N
300	plugin::content-manager.explorer.read	api::penguji.penguji	{"fields": ["id_fit_propers", "id_penguji", "id_kc", "id_pe", "id_pj", "mewawancara"]}	[]	2022-06-01 07:18:16.52	2022-06-01 07:18:16.52	\N	\N
301	plugin::content-manager.explorer.read	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper", "pewawancara"]}	[]	2022-06-01 07:18:16.525	2022-06-01 07:18:16.525	\N	\N
302	plugin::content-manager.explorer.update	api::penguji.penguji	{"fields": ["id_fit_propers", "id_penguji", "id_kc", "id_pe", "id_pj", "mewawancara"]}	[]	2022-06-01 07:18:16.53	2022-06-01 07:18:16.53	\N	\N
303	plugin::content-manager.explorer.update	api::wawancara.wawancara	{"fields": ["tanggalWawancara", "nilaiWawancara", "fit_proper", "pewawancara"]}	[]	2022-06-01 07:18:16.535	2022-06-01 07:18:16.535	\N	\N
\.


--
-- TOC entry 4879 (class 0 OID 5246278)
-- Dependencies: 265
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
1	2
2	2
3	2
4	2
5	2
6	2
7	2
8	2
9	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
17	2
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
26	2
27	2
28	2
29	2
30	2
31	2
32	2
33	2
34	2
35	2
36	2
37	2
38	2
39	2
40	2
41	2
42	2
43	2
44	2
45	2
46	2
47	2
48	2
49	2
50	2
51	2
52	2
53	2
54	2
55	2
56	2
57	2
58	2
59	2
60	2
61	2
62	2
63	2
64	2
65	2
66	2
67	2
68	2
69	2
70	2
71	2
72	2
73	2
74	2
75	2
76	2
77	2
78	2
79	2
80	2
81	3
82	3
83	3
84	3
85	3
86	3
87	3
88	3
89	3
90	3
91	3
92	3
93	3
94	3
95	3
96	3
97	3
98	3
99	3
100	3
101	3
102	3
103	3
104	3
105	3
106	3
107	3
108	3
109	3
110	3
111	3
112	3
113	3
114	3
115	3
116	3
117	3
118	3
119	3
120	3
121	3
122	3
123	3
124	3
125	3
126	3
127	3
128	3
129	3
130	3
131	3
132	3
133	3
134	3
135	3
136	3
137	3
138	3
139	3
140	3
141	3
142	3
143	3
144	3
145	3
146	1
147	1
148	1
149	1
150	1
152	1
154	1
155	1
157	1
158	1
159	1
160	1
162	1
163	1
164	1
165	1
166	1
168	1
170	1
171	1
173	1
174	1
175	1
176	1
178	1
179	1
180	1
181	1
182	1
184	1
186	1
187	1
189	1
190	1
191	1
192	1
194	1
195	1
196	1
197	1
198	1
199	1
200	1
201	1
202	1
203	1
204	1
205	1
206	1
207	1
208	1
209	1
210	1
211	1
212	1
213	1
214	1
215	1
216	1
217	1
218	1
219	1
220	1
221	1
222	1
223	1
224	1
225	1
226	1
227	1
228	1
229	1
230	1
231	1
232	1
233	1
234	1
235	1
236	1
237	1
238	1
239	1
240	1
241	1
242	1
243	1
244	1
245	1
246	1
247	1
248	1
249	1
250	1
251	1
252	1
253	1
254	1
255	1
256	1
257	1
258	1
259	1
260	1
261	1
262	1
263	1
264	1
265	1
266	1
267	1
268	1
275	1
276	1
277	1
278	1
279	1
283	1
284	1
285	1
286	1
288	1
290	1
298	1
299	1
300	1
301	1
302	1
303	1
\.


--
-- TOC entry 4836 (class 0 OID 5246064)
-- Dependencies: 222
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-04-21 07:18:26.449	2022-04-21 07:18:26.449	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-04-21 07:18:26.468	2022-04-21 07:18:26.468	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-04-21 07:18:26.474	2022-04-21 07:18:26.474	\N	\N
\.


--
-- TOC entry 4834 (class 0 OID 5246053)
-- Dependencies: 220
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Athirah	Naurah	\N	naurathirahh@gmail.com	$2a$10$nHYJAqfACVXkUHJKu.hsgubu8P.FaanNDbpAKr8DqOxUC.P/DQePK	\N	\N	t	f	\N	2022-04-21 07:36:06.077	2022-04-21 07:36:06.077	\N	\N
2	Athirah	N F	\N	athirah.naurah.tif20@polban.ac.id	$2a$10$ndGLVjyIbxwEIIm3J1WIiOhAyg2S4ihgjIxWsX5OdvhtmWSl9xJ6y	\N	\N	t	f	\N	2022-04-21 07:57:04.303	2022-04-21 07:58:17.038	\N	\N
4	Oky	Bagus	\N	okkybagus87@gmail.com	$2a$10$sY.uP2QSFQzATzfubPMdD.A5EewBqdF5vo61PggtUctN6dKYeivCi	\N	\N	t	f	\N	2022-04-21 12:38:15.369	2022-04-21 16:21:40.617	\N	\N
5	Deborah	Talita	marpaung.deborah.tif20@polban.ac.id	marpaung.deborah.tif20@polban.ac.id	$2a$10$Ktg9FauWksYTRznr2hTV8uK0nSq75xGYVvFjqplL067IbjG0xgM0K	6ffc93360dcefe3836dff5674449fdad2de3e164	\N	t	f	\N	2022-04-21 12:38:59.697	2022-05-12 01:01:39.329	\N	\N
3	Salma	Azizah	salma.azizah.tif20@polban.ac.id	salma.azizah.tif20@polban.ac.id	$2a$10$OnN.tndvGBmYcxmQuaiq9eiY2f/MjH2.dWQrOve/AP9T5MxXe53ei	\N	\N	t	f	\N	2022-04-21 10:14:34.651	2022-05-12 01:02:23.53	\N	\N
7	Adrianus	Simarmata	\N	adrianus.simarmata.tif20@polban.ac.id	$2a$10$vj3vzUBuCY5TZoH.am7Hdeauu9bLW6.cbZ1xzWPR9VuHjcIRb6vau	\N	\N	t	f	\N	2022-05-12 03:42:12.561	2022-05-12 03:45:51.55	\N	\N
6	Muhammad Rafid		muhammad.rafid.tif20@polban.ac.id	muhammad.rafid.tif20@polban.ac.id	$2a$10$Oy0mpyxEf2KMXpYIWtJBU.C.ONN3fUMLwobXz.PHyAMgND9jz2cv.	\N	\N	t	f	en	2022-05-12 03:41:11.338	2022-05-12 03:49:19.074	\N	\N
\.


--
-- TOC entry 4880 (class 0 OID 5246283)
-- Dependencies: 266
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
1	1
2	1
4	1
5	1
5	2
5	3
3	1
3	2
3	3
6	1
7	1
\.


--
-- TOC entry 4850 (class 0 OID 5246139)
-- Dependencies: 236
-- Data for Name: administration_users; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.administration_users (id, password, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4852 (class 0 OID 5246148)
-- Dependencies: 238
-- Data for Name: bidangs; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.bidangs (id, nama_bidang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	BIDANG PENGEMBANGAN TALENTA EKSEKUTIF	2022-04-21 07:59:33.098	2022-04-21 07:59:44.591	2022-04-21 07:59:44.587	2	2
2	BIDANG STRATEGI REGULASI DAN MANAJEMEN STAKEHOLDER STRATEGIS	2022-05-19 01:37:47.211	2022-05-19 01:37:49.627	2022-05-19 01:37:49.623	5	5
\.


--
-- TOC entry 4884 (class 0 OID 5246309)
-- Dependencies: 270
-- Data for Name: bidangs_sub_bidangs_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.bidangs_sub_bidangs_links (bidang_id, sub_bidang_id) FROM stdin;
1	1
\.


--
-- TOC entry 4903 (class 0 OID 8159699)
-- Dependencies: 289
-- Data for Name: bobot_nilai; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.bobot_nilai (id, nama_bobot, bobot, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	key_competency	0.5	2022-05-12 04:34:09.352	2022-05-12 04:34:29.94	2022-05-12 04:34:29.938	5	5
2	personal_endurance	0.25	2022-05-12 04:34:43.706	2022-05-12 04:34:45.861	2022-05-12 04:34:45.859	5	5
3	proyeksi_jabatan	0.25	2022-05-12 04:35:03.549	2022-05-12 04:35:05.454	2022-05-12 04:35:05.451	5	5
\.


--
-- TOC entry 4854 (class 0 OID 5246157)
-- Dependencies: 240
-- Data for Name: direktorats; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.direktorats (id, nama_direktorat, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
2	DIREKTORAT KEUANGAN DAN MANAJEMEN RISIKO	2022-05-19 01:33:26.417	2022-05-19 01:36:30.872	2022-05-19 01:33:28.516	5	5
1	DIREKTORAT MANAJEMEN SUMBER DAYA MANUSIA	2022-04-21 08:02:34.149	2022-05-19 01:36:48.54	2022-04-21 08:02:35.965	1	5
4	SATUAN PUSAT KEUNGGULAN	2022-05-19 01:34:13.423	2022-05-19 01:37:17.999	2022-05-19 01:34:15.941	5	5
3	WAKIL DIREKTUR UTAMA	2022-05-19 01:34:04.106	2022-05-19 01:37:33.513	2022-05-19 01:34:06.088	5	5
\.


--
-- TOC entry 4885 (class 0 OID 5246314)
-- Dependencies: 271
-- Data for Name: direktorats_divises_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.direktorats_divises_links (direktorat_id, divisi_id) FROM stdin;
2	2
1	1
4	4
4	5
3	3
\.


--
-- TOC entry 4856 (class 0 OID 5246166)
-- Dependencies: 242
-- Data for Name: divisis; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.divisis (id, nama_divisi, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	DIVISI PENGEMBANGAN TALENTA	2022-04-21 08:02:59	2022-04-21 08:03:00.835	2022-04-21 08:03:00.832	1	1
2	SUB DIREKTORAT MANAJEMEN ASET	2022-05-19 01:35:01.881	2022-05-19 01:35:05.99	2022-05-19 01:35:05.988	5	5
4	DIVISI TRANSMISI DAN DISTRIBUSI	2022-05-19 01:35:32.548	2022-05-19 01:35:34.548	2022-05-19 01:35:34.546	5	5
5	DIVISI PEMBANGKITAN DAN EBT	2022-05-19 01:35:41.688	2022-05-19 01:35:44.745	2022-05-19 01:35:44.743	5	5
3	DIVISI MANAJEMEN REGULATOR	2022-05-19 01:35:23.629	2022-05-19 01:38:27.13	2022-05-19 01:35:26.993	5	5
\.


--
-- TOC entry 4886 (class 0 OID 5246319)
-- Dependencies: 272
-- Data for Name: divisis_bidangs_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.divisis_bidangs_links (divisi_id, bidang_id) FROM stdin;
1	1
3	2
\.


--
-- TOC entry 4840 (class 0 OID 5246086)
-- Dependencies: 226
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4881 (class 0 OID 5246288)
-- Dependencies: 267
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- TOC entry 4858 (class 0 OID 5246175)
-- Dependencies: 244
-- Data for Name: fit_propers; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.fit_propers (id, tanggal_fit_proper, proyeksi, jenis, created_at, updated_at, published_at, created_by_id, updated_by_id, urjab, ppt, cv, jenjang_proyeksi) FROM stdin;
36	2022-06-01	ANALYST ADMINISTRASI DAN PENGADAAN	Reguler	2022-06-01 07:27:59.528	2022-06-01 07:27:59.528	2022-06-01 07:27:59.525	\N	\N	\N	\N	\N	ANALYST PENGEMBANGAN EKSEKUTIF
37	2022-06-01	ANALYST APLIKASI TRANSMISI	Reguler	2022-06-01 11:19:01.75	2022-06-01 11:19:01.75	2022-06-01 11:19:01.748	\N	\N	\N	\N	\N	ANALYST ACCOUNT EXECUTIVE
39	2022-06-01	ASSISTANT ANALYST PENGEMBANGAN EKSEKUTIF	Reguler	2022-06-01 11:58:19.251	2022-06-01 11:58:19.251	2022-06-01 11:58:19.248	\N	\N	\N	\N	\N	ANALYST APLIKASI TRANSMISI
40	2022-06-04	ANALYST AKUNTANSI TRANSAKSI KANTOR PUSAT	Reguler	2022-06-02 04:04:05.081	2022-06-02 04:04:05.081	2022-06-02 04:04:05.077	\N	\N	\N	\N	\N	ANALYST AKUNTANSI MANAJEMEN
41	2022-06-02	ANALYST ADMINISTRASI DIREKTORAT MEGA PROJECT	Reguler	2022-06-02 05:20:32.443	2022-06-02 05:20:32.443	2022-06-02 05:20:32.44	\N	\N	\N	\N	\N	ANALYST PENGEMBANGAN EKSEKUTIF
42	2022-06-22	ANALYST PENGEMBANGAN EXPERT	Reguler	2022-06-02 13:51:23.345	2022-06-02 13:51:23.345	2022-06-02 13:51:23.343	\N	\N	\N	\N	\N	Fungsional IV
\.


--
-- TOC entry 4887 (class 0 OID 5246324)
-- Dependencies: 273
-- Data for Name: fit_propers_id_peserta_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.fit_propers_id_peserta_links (fit_proper_id, pegawai_id) FROM stdin;
36	2
37	2
39	4
40	4
41	5
42	7
\.


--
-- TOC entry 4888 (class 0 OID 5246329)
-- Dependencies: 274
-- Data for Name: fit_propers_id_wawancara_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.fit_propers_id_wawancara_links (fit_proper_id, wawancara_id) FROM stdin;
41	8
42	9
\.


--
-- TOC entry 4904 (class 0 OID 12521063)
-- Dependencies: 290
-- Data for Name: fit_propers_pengujis_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.fit_propers_pengujis_links (fit_proper_id, penguji_id) FROM stdin;
\.


--
-- TOC entry 4842 (class 0 OID 5246097)
-- Dependencies: 228
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-04-21 07:18:26.117	2022-04-21 07:18:26.117	\N	\N
\.


--
-- TOC entry 4860 (class 0 OID 5246186)
-- Dependencies: 246
-- Data for Name: jabatans; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.jabatans (id, nama_jabatan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	ANALYST PENGEMBANGAN EKSEKUTIF	2022-04-21 08:01:13.039	2022-04-21 08:01:15.48	2022-04-21 08:01:15.477	1	1
2	ASSISTANT ANALYST PENGEMBANGAN EKSEKUTIF	2022-04-21 08:22:09.498	2022-04-21 08:22:21.473	2022-04-21 08:22:21.471	1	1
37	ANALYST APLIKASI TRANSMISI	2022-05-19 01:58:14.656	2022-05-19 01:58:16.748	2022-05-19 01:58:16.746	3	3
3	ANALYST ACCOUNT EXECUTIVE	2022-05-19 01:34:15.481	2022-05-19 01:34:47.946	2022-05-19 01:34:18.432	3	3
4	ANALYST ADMINISTRASI DAN PENGADAAN	2022-05-19 01:35:50.335	2022-05-19 01:35:52.467	2022-05-19 01:35:52.465	3	3
5	ANALYST ADMINISTRASI DAN UMUM	2022-05-19 01:37:24.43	2022-05-19 01:37:26.581	2022-05-19 01:37:26.579	3	3
6	ANALYST ADMINISTRASI DIREKTORAT MEGA PROJECT	2022-05-19 01:37:36.504	2022-05-19 01:37:38.536	2022-05-19 01:37:38.534	3	3
7	ANALYST ADMINISTRASI DIREKTORAT MEGA PROYEK DAN ENERGI BARU TERBARUKAN	2022-05-19 01:37:48.523	2022-05-19 01:37:50.972	2022-05-19 01:37:50.97	3	3
8	ANALYST ADMINISTRASI EKSEKUTIF DIREKSI	2022-05-19 01:38:24.936	2022-05-19 01:38:26.793	2022-05-19 01:38:26.792	3	3
9	ANALYST ADMINISTRASI KOMUNIKASI	2022-05-19 01:38:57.628	2022-05-19 01:38:59.512	2022-05-19 01:38:59.51	3	3
10	ANALYST ADMINISTRASI KONSTRUKSI TRANSMISI DAN GI	2022-05-19 01:40:09.577	2022-05-19 01:40:11.494	2022-05-19 01:40:11.491	3	3
11	ANALYST ADMINISTRASI KONTRAK BATUBARA	2022-05-19 01:40:21.874	2022-05-19 01:40:24.378	2022-05-19 01:40:24.362	3	3
12	ANALYST ADMINISTRASI PENGADAAN	2022-05-19 01:41:24.101	2022-05-19 01:41:26.95	2022-05-19 01:41:26.948	3	3
13	ANALYST ADMINISTRASI PINJAMAN DAN HIBAH LUAR NEGERI	2022-05-19 01:41:48.393	2022-05-19 01:41:52.033	2022-05-19 01:41:52.029	3	3
14	ANALYST ADMINISTRASI UMUM	2022-05-19 01:42:16.17	2022-05-19 01:42:18.159	2022-05-19 01:42:18.157	3	3
15	ANALYST ADMINISTRASI UMUM (PLT MANAGER AKUNTANSI)	2022-05-19 01:42:53.261	2022-05-19 01:42:55.025	2022-05-19 01:42:55.021	3	3
16	ANALYST AGEN PROGRAM PERUBAHAN (PLT MANAGER PENGELOLAAN PROGRAM PERUBAHAN)	2022-05-19 01:43:08.81	2022-05-19 01:43:46.717	2022-05-19 01:43:46.715	3	3
17	ANALYST AKUISISI PELANGGAN BESAR BARU DAN CAPTIVE	2022-05-19 01:44:03.709	2022-05-19 01:44:06.038	2022-05-19 01:44:06.035	3	3
18	ANALYST AKUNTANSI (TK)	2022-05-19 01:45:50.36	2022-05-19 01:45:52.533	2022-05-19 01:45:52.531	3	3
19	ANALYST AKUNTANSI AKTIVA	2022-05-19 01:46:02.606	2022-05-19 01:46:04.723	2022-05-19 01:46:04.72	3	3
20	ANALYST AKUNTANSI MANAJEMEN	2022-05-19 01:46:33.287	2022-05-19 01:46:35.816	2022-05-19 01:46:35.814	3	3
21	ANALYST AKUNTANSI TRANSAKSI KANTOR PUSAT	2022-05-19 01:46:47.667	2022-05-19 01:46:49.617	2022-05-19 01:46:49.615	3	3
22	ANALYST AKUNTANSI TRANSAKSI KANTOR PUSAT (PLT MANAGER AKUNTANSI TRANSAKSI KANTOR PUSAT)	2022-05-19 01:50:05.621	2022-05-19 01:50:05.621	\N	3	3
23	ANALYST ANALISA DAN EVALUASI CORPORATE SUPPORTS	2022-05-19 01:50:37.851	2022-05-19 01:50:39.97	2022-05-19 01:50:39.968	3	3
24	ANALYST ANALISA DAN EVALUASI ENERGI PRIMER	2022-05-19 01:51:08.768	2022-05-19 01:51:11.916	2022-05-19 01:51:11.914	3	3
25	ANALYST ANALISA DAN EVALUASI TRANSMISI DAN DISTRIBUSI	2022-05-19 01:56:04.709	2022-05-19 01:56:07.418	2022-05-19 01:56:07.416	3	3
26	ANALYST ANALISA KIMIA	2022-05-19 01:56:17.118	2022-05-19 01:56:19.708	2022-05-19 01:56:19.705	3	3
27	ANALYST ANGGARAN	2022-05-19 01:56:32.336	2022-05-19 01:56:36.373	2022-05-19 01:56:36.371	3	3
28	ANALYST ANGGARAN (TK)	2022-05-19 01:56:51.032	2022-05-19 01:56:52.875	2022-05-19 01:56:52.873	3	3
30	ANALYST ANGGARAN ADMINISTRASI UMUM DAN FASILITAS	2022-05-19 01:57:01.39	2022-05-19 01:57:03.476	2022-05-19 01:57:03.474	3	3
31	ANALYST ANGGARAN HUMAN CAPITAL	2022-05-19 01:57:15.224	2022-05-19 01:57:16.876	2022-05-19 01:57:16.874	3	3
32	ANALYST APLIKASI DISTRIBUSI	2022-05-19 01:57:27.933	2022-05-19 01:57:31.462	2022-05-19 01:57:31.46	3	3
50	VICE PRESIDENT SISTEM PROTEKSI REGIONAL SUMATERA KALIMANTAN	2022-05-19 02:02:12.149	2022-05-19 02:02:13.479	2022-05-19 02:02:13.475	5	5
29	WAKIL PRESIDEN DIREKTUR	2022-05-19 01:57:00.842	2022-05-19 01:57:36.026	2022-05-19 01:57:36.024	5	5
33	ANALYST APLIKASI HUMAN CAPITAL	2022-05-19 01:57:51.762	2022-05-19 01:57:53.842	2022-05-19 01:57:53.84	3	3
34	VICE PRESIDENT VERIFIKASI UNIT	2022-05-19 01:57:55.408	2022-05-19 01:57:57.383	2022-05-19 01:57:57.381	5	5
35	ANALYST APLIKASI PENDUKUNG	2022-05-19 01:58:02.483	2022-05-19 01:58:05.959	2022-05-19 01:58:05.957	3	3
36	VICE PRESIDENT VALUASI PRODUKTIVITAS ASET	2022-05-19 01:58:09.483	2022-05-19 01:58:20.476	2022-05-19 01:58:20.474	5	5
38	ANALYST ASESMEN PRODUKTIVITAS ASET	2022-05-19 01:58:31.372	2022-05-19 01:58:33.741	2022-05-19 01:58:33.739	3	3
39	VICE PRESIDENT VALUASI INVESTASI, TRANSFER DAN DIVESTASI ASET	2022-05-19 01:58:34.409	2022-05-19 01:58:52.159	2022-05-19 01:58:52.155	5	5
40	VICE PRESIDENT TRANSAKSI TENAGA LISTRIK DAN SINGLE BUYER	2022-05-19 01:59:06.506	2022-05-19 01:59:08.392	2022-05-19 01:59:08.39	5	5
41	VICE PRESIDENT TALENTA DAN ADMINISTRASI SUMBER DAYA MANUSIA	2022-05-19 02:00:17.56	2022-05-19 02:00:19.372	2022-05-19 02:00:19.347	5	5
42	ANALYST ASSESMENT	2022-05-19 02:00:18.812	2022-05-19 02:00:21.629	2022-05-19 02:00:21.627	3	3
43	VICE PRESIDENT STRATEGI, PENGEMBANGAN DAN MANAJEMEN RANTAI PASOK	2022-05-19 02:00:27.778	2022-05-19 02:00:33.938	2022-05-19 02:00:33.935	5	5
44	VICE PRESIDENT STRATEGI REGULASI DAN MANAJEMEN STAKEHOLDER STRATEGIS	2022-05-19 02:00:45.69	2022-05-19 02:00:51.227	2022-05-19 02:00:51.224	5	5
45	VICE PRESIDENT STRATEGI PEMASARAN BAGIAN TIMUR REGIONAL JAWA, MADURA DANBALI	2022-05-19 02:01:00.384	2022-05-19 02:01:02.904	2022-05-19 02:01:02.901	5	5
46	VICE PRESIDENT STRATEGI PEMASARAN	2022-05-19 02:01:13.469	2022-05-19 02:01:17.454	2022-05-19 02:01:17.451	5	5
47	VICE PRESIDENT STRATEGI ORGANISASI	2022-05-19 02:01:23.235	2022-05-19 02:01:24.75	2022-05-19 02:01:24.748	5	5
48	VICE PRESIDENT STRATEGI GA DAN PERENCANA PENGADAAN	2022-05-19 02:01:37.656	2022-05-19 02:01:39.453	2022-05-19 02:01:39.45	5	5
51	VICE PRESIDENT SISTEM MANAJEMEN KINERJA UNGGUL DAN PELAPORAN LKPM	2022-05-19 02:02:23.615	2022-05-19 02:02:25.279	2022-05-19 02:02:25.277	5	5
49	VICE PRESIDENT STRATEGI DAN SISTEM HUMAN CAPITAL	2022-05-19 02:01:48.553	2022-05-19 02:01:53.927	2022-05-19 02:01:53.926	5	5
52	VICE PRESIDENT SISTEM INFORMASI DAN MONITORING INVESTASI PROYEK	2022-05-19 02:02:33.854	2022-05-19 02:02:35.236	2022-05-19 02:02:35.234	5	5
53	VICE PRESIDENT RISIKO STRATEGIS DAN KEUANGAN	2022-05-19 02:02:43.692	2022-05-19 02:02:52.212	2022-05-19 02:02:45.629	5	5
54	VICE PRESIDENT PROYEKSI KEUANGAN	2022-05-19 02:04:21.476	2022-05-19 02:04:22.899	2022-05-19 02:04:22.897	5	5
55	TECHNICIAN PENYAMBUNGAN DAN PEMUTUSAN	2022-05-19 02:05:11.493	2022-05-19 02:05:12.921	2022-05-19 02:05:12.919	5	5
56	TECHNICIAN PENGELOLAAN PEMBANGKITAN	2022-05-19 02:05:40.676	2022-05-19 02:05:42.097	2022-05-19 02:05:42.095	5	5
57	TECHNICIAN PENGELOLAAN KONSTRUKSI	2022-05-19 02:05:58.403	2022-05-19 02:05:59.833	2022-05-19 02:05:59.831	5	5
58	SUPERVISOR TRANSAKSI TENAGA LISTRIK DAN METERING	2022-05-19 02:07:34.978	2022-05-19 02:07:36.49	2022-05-19 02:07:36.488	5	5
59	TECHNICIAN KESELAMATAN, KESEHATAN KERJA, DAN LINGKUNGAN (K3L)	2022-05-19 02:07:50.614	2022-05-19 02:07:50.614	\N	5	5
60	ANALYST AUDIT NIAGA DAN PELAYANAN PELANGGAN	2022-05-19 02:08:01.818	2022-05-19 02:08:03.891	2022-05-19 02:08:03.89	3	3
61	SUPERVISOR TRANSAKSI TENAGA LISTRIK	2022-05-19 02:08:12.143	2022-05-19 02:08:13.53	2022-05-19 02:08:13.528	5	5
62	ANALYST AUDIT SUMBER DAYA MANUSIA	2022-05-19 02:08:19.668	2022-05-19 02:08:23.096	2022-05-19 02:08:23.094	3	3
63	ANALYST BILLING & PAYMENT PROCESS	2022-05-19 02:08:39.207	2022-05-19 02:08:45.766	2022-05-19 02:08:45.764	3	3
64	ANALYST CONTINOUS IMPROVEMENT TRANSMISI DAN DISTRIBUSI	2022-05-19 02:08:55.627	2022-05-19 02:08:57.532	2022-05-19 02:08:57.529	3	3
65	SUPERVISOR TRANSAKSI ENERGI LISTRIK	2022-05-19 02:09:11.672	2022-05-19 02:09:26.95	2022-05-19 02:09:26.946	5	5
66	ANALYST DIGITALISASI BEYOND KWH NON FINANSIAL	2022-05-19 02:09:25.631	2022-05-19 02:09:27.439	2022-05-19 02:09:27.437	3	3
67	ANALYST EFEKTIVITAS ORGANISASI DAN TENAGA KERJA AREA 6	2022-05-19 02:09:44.022	2022-05-19 02:09:45.938	2022-05-19 02:09:45.936	3	3
68	ANALYST EVALUASI ORGANISASI	2022-05-19 02:10:02.553	2022-05-19 02:10:04.873	2022-05-19 02:10:04.871	3	3
69	SUPERVISOR TRANSAKSI ENERGI	2022-05-19 02:10:08.754	2022-05-19 02:10:10.68	2022-05-19 02:10:10.678	5	5
70	ANALYST KINERJA	2022-05-19 02:10:21.792	2022-05-19 02:10:23.815	2022-05-19 02:10:23.813	3	3
71	SUPERVISOR STRATEGI OPERASI SISTEM	2022-05-19 02:11:32.392	2022-05-19 02:11:33.662	2022-05-19 02:11:33.652	5	5
72	ANALYST KINERJA KEUANGAN	2022-05-19 02:11:39.397	2022-05-19 02:11:41.594	2022-05-19 02:11:41.591	3	3
73	SUPERVISOR PROTEKSI SISTEM	2022-05-19 02:11:57.657	2022-05-19 02:11:59.745	2022-05-19 02:11:59.743	5	5
74	ANALYST KINERJA KEUANGAN, KOMUNIKASI DAN UMUM	2022-05-19 02:12:05.758	2022-05-19 02:12:07.821	2022-05-19 02:12:07.82	3	3
75	SUPERVISOR PERIJINAN DAN PERTANAHAN	2022-05-19 02:12:28.718	2022-05-19 02:12:30.358	2022-05-19 02:12:30.353	5	5
76	MANAJER SDM DAN ADMINISTRASI	2022-05-19 02:13:55.844	2022-05-19 02:13:57.621	2022-05-19 02:13:57.619	5	5
77	MANAJER PERENCANAAN KORPORAT DAN RISIKO	2022-05-19 02:14:07.938	2022-05-19 02:14:10.967	2022-05-19 02:14:10.964	5	5
78	ANALYST MANAJEMEN RISIKO DAN KEPATUHAN	2022-05-19 02:14:10.719	2022-05-19 02:14:12.315	2022-05-19 02:14:12.312	3	3
79	MANAJER PERENCANAAN DAN PENGEMBANGAN USAHA	2022-05-19 02:14:15.174	2022-05-19 02:14:16.896	2022-05-19 02:14:16.893	5	5
80	MANAJER PENGEMBANGAN SISTEM	2022-05-19 02:14:24.58	2022-05-19 02:14:25.98	2022-05-19 02:14:25.978	5	5
81	ANALYST PERENCANAAN PENGUSAHAAN	2022-05-19 02:14:30.089	2022-05-19 02:14:32.473	2022-05-19 02:14:32.471	3	3
82	MANAJER PEMELIHARAAN	2022-05-19 02:14:34.4	2022-05-19 02:14:36.874	2022-05-19 02:14:36.872	5	5
83	SUPERVISOR PERENCANAAN SISTEM	2022-05-19 02:17:58.261	2022-05-19 02:17:59.784	2022-05-19 02:17:59.782	5	5
84	SUPERVISOR PERENCANAAN DAN PENGENDALIAN PEMELIHARAAN	2022-05-19 02:18:20.601	2022-05-19 02:18:21.99	2022-05-19 02:18:21.988	5	5
85	SUPERVISOR PENGENDALIAN KONSTRUKSI	2022-05-19 02:18:44.415	2022-05-19 02:18:48.767	2022-05-19 02:18:48.765	5	5
86	ANALYST PRODUK KELISTRIKAN	2022-05-19 02:20:07.18	2022-05-19 02:20:09.247	2022-05-19 02:20:09.245	3	3
87	ASSISTANT ANALYST ACCOUNT EXECUTIVE	2022-05-19 02:20:36.446	2022-05-19 02:20:38.853	2022-05-19 02:20:38.85	3	3
88	ASSISTANT ANALYST ADMINISTRASI UMUM	2022-05-19 02:20:50.387	2022-05-19 02:20:52.153	2022-05-19 02:20:52.151	3	3
89	ASSISTANT ANALYST ASET PROPERTI	2022-05-19 02:21:10.722	2022-05-19 02:21:12.868	2022-05-19 02:21:12.865	3	3
90	ASSISTANT ANALYST AUDIT KEUANGAN, SDM DAN ADMINISTRASI	2022-05-19 02:22:01.42	2022-05-19 02:22:04.284	2022-05-19 02:22:04.282	3	3
91	ASSISTANT ANALYST KEUANGAN	2022-05-19 02:22:21.152	2022-05-19 02:22:23.452	2022-05-19 02:22:23.448	3	3
92	ASSISTANT ANALYST KINERJA	2022-05-19 02:22:35.174	2022-05-19 02:22:36.876	2022-05-19 02:22:36.874	3	3
93	ASSISTANT ANALYST LOGISTIK	2022-05-19 02:22:49.228	2022-05-19 02:22:51.691	2022-05-19 02:22:51.688	3	3
94	ASSISTANT ANALYST PEMASARAN DAN PELAYANAN PELANGGAN	2022-05-19 02:25:05.352	2022-05-19 02:25:08.386	2022-05-19 02:25:08.384	3	3
95	ASSISTANT ENGINEER ENERGI PANAS BUMI PLN	2022-05-19 02:25:40.515	2022-05-19 02:25:42.123	2022-05-19 02:25:42.122	3	3
96	ASSISTANT ENGINEER JARINGAN DAN GARDU INDUK	2022-05-19 02:25:56.478	2022-05-19 02:25:58.559	2022-05-19 02:25:58.557	3	3
97	ASSISTANT ENGINEER KONSTRUKSI PEMBANGKIT	2022-05-19 02:26:16.812	2022-05-19 02:26:18.616	2022-05-19 02:26:18.614	3	3
98	ASSISTANT ENGINEER OPERASI DAN PEMELIHARAAN DISTRIBUSI	2022-05-19 02:26:35.866	2022-05-19 02:26:37.869	2022-05-19 02:26:37.867	3	3
99	ASSISTANT ENGINEER PENGELOLA SISTEM	2022-05-19 02:27:25.697	2022-05-19 02:27:27.46	2022-05-19 02:27:27.458	3	3
100	ASSISTANT ENGINEER PENYAMBUNGAN DAN PEMUTUSAN	2022-05-19 02:27:48.249	2022-05-19 02:27:50.264	2022-05-19 02:27:50.262	3	3
101	ASSISTANT ENGINEER TEKNIK SIPIL	2022-05-19 02:28:09.105	2022-05-19 02:28:10.899	2022-05-19 02:28:10.897	3	3
102	ASSISTANT OFFICER ADMINISTRASI UMUM	2022-05-19 02:28:43.783	2022-05-19 02:28:45.459	2022-05-19 02:28:45.456	3	3
103	CHIEF AUDIT EXECUTIVE	2022-05-19 02:29:44.08	2022-05-19 02:29:45.837	2022-05-19 02:29:45.836	3	3
104	DEPUTY GROUP HEAD AUDIT ANAK PERUSAHAAN	2022-05-19 02:30:31.129	2022-05-19 02:30:32.806	2022-05-19 02:30:32.804	3	3
105	DIREKTUR KEUANGAN	2022-05-19 02:30:52.115	2022-05-19 02:30:56.503	2022-05-19 02:30:56.5	3	3
106	DIREKTUR OPERASI	2022-05-19 02:31:18.426	2022-05-19 02:31:20.368	2022-05-19 02:31:20.365	3	3
107	DIREKTUR UTAMA	2022-05-19 02:31:29.357	2022-05-19 02:31:31.191	2022-05-19 02:31:31.189	3	3
108	ENGINEER KINERJA	2022-05-19 02:32:12.701	2022-05-19 02:32:14.65	2022-05-19 02:32:14.649	3	3
109	ENGINEER KINERJA KONSTRUKSI	2022-05-19 02:33:36.629	2022-05-19 02:33:38.63	2022-05-19 02:33:38.627	3	3
110	ENGINEER KINERJA PEMELIHARAAN	2022-05-19 02:34:01.419	2022-05-19 02:34:03.126	2022-05-19 02:34:03.124	3	3
111	ENGINEER LISTRIK (TK)	2022-05-19 02:34:16.992	2022-05-19 02:34:18.84	2022-05-19 02:34:18.836	3	3
112	ENGINEER SISTEM KELISTRIKAN	2022-05-19 02:34:40.615	2022-05-19 02:34:43.661	2022-05-19 02:34:43.66	3	3
113	EXECUTIVE VICE PRESIDENT AKUNTANSI	2022-05-19 02:35:02.106	2022-05-19 02:35:03.655	2022-05-19 02:35:03.653	3	3
114	EXECUTIVE VICE PRESIDENT SUMBER DAYA MANUSIA	2022-05-19 02:35:29.679	2022-05-19 02:35:32.165	2022-05-19 02:35:32.163	3	3
115	EXPERT AUDITOR	2022-05-19 02:35:53.663	2022-05-19 02:35:55.448	2022-05-19 02:35:55.445	3	3
116	EXPERT MANAJEMEN NIAGA	2022-05-19 02:36:08.448	2022-05-19 02:36:09.986	2022-05-19 02:36:09.985	3	3
117	GENERAL MANAGER	2022-05-19 02:36:21.566	2022-05-19 02:36:23.591	2022-05-19 02:36:23.589	3	3
118	GROUP HEAD AUDIT KANTOR PUSAT 1	2022-05-19 02:37:03.242	2022-05-19 02:37:04.888	2022-05-19 02:37:04.885	3	3
119	HEAD OF DIVISION PENUNJANG OPERASIONAL, SDM DAN ADMINISTRASI AUDIT	2022-05-19 02:37:49.96	2022-05-19 02:37:51.839	2022-05-19 02:37:51.838	3	3
120	JUNIOR ANALYST ADMINISTRASI DAN UMUM	2022-05-19 02:38:15.842	2022-05-19 02:38:18.699	2022-05-19 02:38:18.697	3	3
121	JUNIOR ANALYST AKUNTANSI	2022-05-19 02:38:38.216	2022-05-19 02:38:40.092	2022-05-19 02:38:40.091	3	3
122	JUNIOR ANALYST ASET PROPERTI	2022-05-19 02:39:14.554	2022-05-19 02:39:16.233	2022-05-19 02:39:16.23	3	3
123	JUNIOR ANALYST CUSTOMER EXPERIENCE	2022-05-19 02:39:43.544	2022-05-19 02:39:46.354	2022-05-19 02:39:46.35	3	3
124	JUNIOR ANALYST KEUANGAN	2022-05-19 02:39:56.54	2022-05-19 02:39:57.976	2022-05-19 02:39:57.974	3	3
125	JUNIOR ANALYST LOGISTIK	2022-05-19 02:41:02.717	2022-05-19 02:41:02.717	\N	3	3
126	JUNIOR ANALYST SERTIFIKASI	2022-05-19 02:41:26.762	2022-05-19 02:41:28.438	2022-05-19 02:41:28.436	3	3
127	JUNIOR ENGINEER LINGKUNGAN	2022-05-19 02:42:07.834	2022-05-19 02:42:09.45	2022-05-19 02:42:09.448	3	3
128	JUNIOR ENGINEER PDKB SUTT/SUTET	2022-05-19 02:42:43.251	2022-05-19 02:42:44.878	2022-05-19 02:42:44.877	3	3
129	JUNIOR ENGINEER PENGELOLA SISTEM	2022-05-19 02:43:15.504	2022-05-19 02:43:17.092	2022-05-19 02:43:17.09	3	3
130	JUNIOR ENGINEER PENYAMBUNGAN DAN PEMUTUSAN	2022-05-19 02:43:32.736	2022-05-19 02:43:34.58	2022-05-19 02:43:34.577	3	3
131	JUNIOR OFFICER ADMINISTRASI	2022-05-19 02:45:16.364	2022-05-19 02:45:19.635	2022-05-19 02:45:19.634	3	3
132	JUNIOR OFFICER PELAKSANA PENGADAAN	2022-05-19 02:45:43.487	2022-05-19 02:45:45.735	2022-05-19 02:45:45.733	3	3
133	JUNIOR OPERATOR ALAT BANTU	2022-05-19 02:46:02.768	2022-05-19 02:46:04.215	2022-05-19 02:46:04.21	3	3
134	JUNIOR OPERATOR MESIN	2022-05-19 02:46:22.479	2022-05-19 02:46:24.012	2022-05-19 02:46:24.01	3	3
135	JUNIOR OPERATOR OPERASI DAN PEMELIHARAAN DISTRIBUSI	2022-05-19 02:46:38.009	2022-05-19 02:46:40.187	2022-05-19 02:46:40.183	3	3
136	JUNIOR OPERATOR TURBIN	2022-05-19 02:47:20.82	2022-05-19 02:47:22.825	2022-05-19 02:47:22.823	3	3
137	JUNIOR TECHNICIAN KONSTRUKSI DAN LOGISTIK	2022-05-19 02:47:40.835	2022-05-19 02:47:42.783	2022-05-19 02:47:42.779	3	3
138	JUNIOR TECHNICIAN PEMELIHARAAN DISTRIBUSI	2022-05-19 02:47:57.307	2022-05-19 02:47:59.306	2022-05-19 02:47:59.303	3	3
139	JUNIOR TECHNICIAN PEMELIHARAAN LISTRIK	2022-05-19 02:48:11.164	2022-05-19 02:48:13.206	2022-05-19 02:48:13.2	3	3
140	KEPALA DIVISI AKUNTANSI	2022-05-19 02:49:25.523	2022-05-19 02:49:27.406	2022-05-19 02:49:27.404	3	3
141	KEPALA DIVISI KONSTRUKSI PEMBANGKIT	2022-05-19 02:50:29.219	2022-05-19 02:50:30.891	2022-05-19 02:50:30.889	3	3
142	KEPALA DIVISI PROJECT MANAGEMENT 1A	2022-05-19 02:50:48.641	2022-05-19 02:50:50.425	2022-05-19 02:50:50.423	3	3
143	KEPALA SATUAN PENGAWASAN INTERN	2022-05-19 02:51:03.444	2022-05-19 02:51:05.3	2022-05-19 02:51:05.296	3	3
144	MANAGER ADMINISTRASI KOMUNIKASI	2022-05-19 02:51:22.652	2022-05-19 02:51:24.786	2022-05-19 02:51:24.784	3	3
145	MANAGER AKUNTANSI	2022-05-19 02:51:35.75	2022-05-19 02:51:37.732	2022-05-19 02:51:37.727	3	3
146	MANAGER ANGGARAN DAN NIAGA	2022-05-19 02:51:56.353	2022-05-19 02:51:57.978	2022-05-19 02:51:57.976	3	3
147	MANAGER ASET PROPERTI, KOMUNIKASI, DAN UMUM	2022-05-19 02:52:17.621	2022-05-19 02:52:19.398	2022-05-19 02:52:19.395	3	3
148	MANAGER BAGIAN KEUANGAN DAN UMUM	2022-05-19 02:52:37.077	2022-05-19 02:52:39.201	2022-05-19 02:52:39.199	3	3
149	MANAGER BAGIAN PERENCANAAN	2022-05-19 02:52:52.525	2022-05-19 02:52:54.381	2022-05-19 02:52:54.377	3	3
150	MANAGER OPERASI DAN PEMELIHARAAN SISTEM DISTRIBUSI	2022-05-19 02:53:16.776	2022-05-19 02:53:18.624	2022-05-19 02:53:18.622	3	3
151	MANAGER PROYEKSI KEUANGAN	2022-05-19 02:53:38.114	2022-05-19 02:53:39.731	2022-05-19 02:53:39.726	3	3
152	MANAGER UNIT PELAKSANA WORKSHOP DAN PEMELIHARAAN II	2022-05-19 02:54:14.969	2022-05-19 02:54:16.756	2022-05-19 02:54:16.754	3	3
153	MANAGER VALUASI AKUISISI DAN INVESTASI ASET	2022-05-19 02:54:30.544	2022-05-19 02:54:32.429	2022-05-19 02:54:32.427	3	3
154	MANAJER PROJECT MANAGEMENT OFFICE (Pjs)	2022-05-19 02:54:54.937	2022-05-19 02:54:56.491	2022-05-19 02:54:56.489	3	3
155	MASA PERSIAPAN PENSIUN	2022-05-19 02:55:12.823	2022-05-19 02:55:17.677	2022-05-19 02:55:17.675	3	3
156	MANAJER TEKNOLOGI INFORMASI	2022-05-19 02:55:23.382	2022-05-19 02:55:24.79	2022-05-19 02:55:24.788	3	3
157	OFFICER ADMINISTRASI	2022-05-19 02:56:02.831	2022-05-19 02:56:17.368	2022-05-19 02:56:17.366	3	3
158	OFFICER PELAKSANA PENGADAAN	2022-05-19 02:56:23.638	2022-05-19 02:56:25.064	2022-05-19 02:56:25.062	3	3
159	OFFICER SEKRETARIAT (TK)	2022-05-19 02:56:56.106	2022-05-19 02:56:57.65	2022-05-19 02:56:57.649	3	3
160	OPERATOR RUANG KONTROL (TK)	2022-05-19 02:57:18.358	2022-05-19 02:57:20.162	2022-05-19 02:57:20.16	3	3
161	PEGAWAI CUTI DILUAR TANGGUNGAN	2022-05-19 02:57:35.223	2022-05-19 02:57:36.846	2022-05-19 02:57:36.845	3	3
162	PEGAWAI TUGAS BELAJAR	2022-05-19 02:57:44.286	2022-05-19 02:57:45.728	2022-05-19 02:57:45.726	3	3
163	PEJABAT OPERASIONAL KEAMANAN	2022-05-19 02:57:56.853	2022-05-19 02:57:58.56	2022-05-19 02:57:58.556	3	3
\.


--
-- TOC entry 4862 (class 0 OID 5246195)
-- Dependencies: 248
-- Data for Name: key_competencies; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.key_competencies (id, enthusiasthic, creative, partnership, bsn_acumen, cust_focus, empowering, created_at, updated_at, published_at, created_by_id, updated_by_id, driving_execution) FROM stdin;
10	90	90	90	90	90	90	2022-06-01 11:48:11.855	2022-06-01 11:48:11.855	2022-06-01 11:48:11.853	\N	\N	90
11	80	80	80	80	80	80	2022-06-02 11:06:13.743	2022-06-02 11:06:13.743	2022-06-02 11:06:13.741	\N	\N	80
12	89	89	89	89	89	89	2022-06-02 13:59:45.413	2022-06-02 13:59:45.413	2022-06-02 13:59:45.411	\N	\N	89
\.


--
-- TOC entry 4889 (class 0 OID 5246334)
-- Dependencies: 275
-- Data for Name: key_competencies_nilai_kc_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.key_competencies_nilai_kc_links (key_competency_id, fit_proper_id) FROM stdin;
10	36
11	41
12	42
\.


--
-- TOC entry 4890 (class 0 OID 5246339)
-- Dependencies: 276
-- Data for Name: key_competencies_penguji_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.key_competencies_penguji_links (key_competency_id, penguji_id) FROM stdin;
12	8
\.


--
-- TOC entry 4864 (class 0 OID 5246204)
-- Dependencies: 250
-- Data for Name: pegawais; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pegawais (id, nama_pegawai, nip, tempat_lahir, tanggal_lahir, agama, email, gender, no_hp, alamat, role, grade, jenjang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
6	Sri Fatimah	6995036Z	Bandung	1980-06-21	Islam	sri.fatimah.3003@gmail.com	Wanita	081809819289	Citeureup, Cimahi Utara, Kota Cimahi	Penguji	SPE04	Fungsional V	2022-06-02 04:48:14.242	2022-06-02 11:55:36.016	2022-06-02 04:48:17.634	3	3
5	Muhammad Rafid	201512345	Bandung	2002-01-14	Islam	muhammad.rafid.tif20@polban.ac.id	Pria	081234567890	Bandung	Penguji	ST01	Fungsional I	2022-05-19 00:38:09.148	2022-06-02 08:48:20.239	2022-05-19 00:38:18.949	6	4
7	Ashfiya Nabila	6694003L	Cimahi	1981-10-16	Islam	ashfiya.nabila@gmail.com	Wanita	08976543213	Bandung	Peserta	SYS04	Fungsional V	2022-06-02 11:49:13.973	2022-06-02 13:31:41.695	2022-06-02 11:49:15.595	3	3
2	GARANG SYAHPUTRA SIREGAR	9519721ZY	Sipupus Lombang	1995-07-10	Islam	garang.syahputra@pln.co.id	Pria	082298913525	Jl Margahayu Raya	Peserta	SPE04	Fungsional V	2022-04-21 08:25:26.808	2022-06-01 10:39:13.046	2022-04-21 08:25:29.356	1	1
4	Budi	2018019201	Bandung	2022-05-01	Islam	budi@mail.com	Pria	0819282938	Jl. Bandung 20	Peserta	SYS01	Fungsional V	2022-05-19 00:36:40.244	2022-06-01 11:23:17.344	2022-05-19 00:36:41.973	4	1
3	Oky Bagus Lukmana	201511023	Malang	2001-12-05	Islam	okkybagus87@gmail.com	Pria	08133922902	Jl. Bandung 01	Penguji	STS01	Fungsional	2022-05-14 11:54:53.007	2022-06-02 09:38:11.343	2022-05-14 11:54:54.656	4	4
\.


--
-- TOC entry 4894 (class 0 OID 5246359)
-- Dependencies: 280
-- Data for Name: pegawais_id_user_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pegawais_id_user_links (pegawai_id, administration_user_id) FROM stdin;
\.


--
-- TOC entry 4892 (class 0 OID 5246349)
-- Dependencies: 278
-- Data for Name: pegawais_jabatan_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pegawais_jabatan_links (pegawai_id, jabatan_id) FROM stdin;
2	2
5	1
4	1
3	1
6	1
7	2
\.


--
-- TOC entry 4891 (class 0 OID 5246344)
-- Dependencies: 277
-- Data for Name: pegawais_pendidikan_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pegawais_pendidikan_links (pegawai_id, pendidikan_id) FROM stdin;
2	2
5	2
4	2
3	2
6	2
7	3
\.


--
-- TOC entry 4893 (class 0 OID 5246354)
-- Dependencies: 279
-- Data for Name: pegawais_unit_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pegawais_unit_links (pegawai_id, unit_id) FROM stdin;
2	1
5	1
4	1
3	1
6	1
7	1
\.


--
-- TOC entry 4866 (class 0 OID 5246215)
-- Dependencies: 252
-- Data for Name: pendidikans; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pendidikans (id, nama_pendidikan, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	S2 Psikologi	2022-04-21 08:04:15.593	2022-04-21 08:04:17.319	2022-04-21 08:04:17.315	1	1
2	S1 Teknik Informatika	2022-04-21 08:23:06.709	2022-04-21 08:23:08.335	2022-04-21 08:23:08.333	1	1
3	S1 Teknik Telekomunikasi	2022-05-19 01:42:48.57	2022-05-19 01:42:50.167	2022-05-19 01:42:50.165	5	5
4	S1 Teknik Elektro	2022-05-19 01:43:04.261	2022-05-19 01:43:05.384	2022-05-19 01:43:05.382	5	5
5	S1 Administrasi Niaga	2022-05-19 01:43:45.98	2022-05-19 01:43:48.19	2022-05-19 01:43:48.188	5	5
6	S1 Manajemen Properti	2022-05-19 01:44:40.102	2022-05-19 01:44:41.457	2022-05-19 01:44:41.454	5	5
\.


--
-- TOC entry 4868 (class 0 OID 5246224)
-- Dependencies: 254
-- Data for Name: pengujis; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pengujis (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
8	2022-06-01 07:25:00.965	2022-06-01 07:25:00.965	2022-06-01 07:25:00.963	\N	\N
10	2022-06-01 07:54:59.341	2022-06-01 07:54:59.341	2022-06-01 07:54:59.34	\N	\N
11	2022-06-01 11:08:07.701	2022-06-01 11:08:07.701	2022-06-01 11:08:07.7	\N	\N
23	2022-06-02 08:48:20.847	2022-06-02 08:48:20.847	2022-06-02 08:48:20.845	\N	\N
26	2022-06-02 11:57:15.656	2022-06-02 11:57:15.656	2022-06-02 11:57:15.655	\N	\N
\.


--
-- TOC entry 4905 (class 0 OID 12521068)
-- Dependencies: 291
-- Data for Name: pengujis_id_fit_propers_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pengujis_id_fit_propers_links (penguji_id, fit_proper_id) FROM stdin;
8	36
11	37
8	39
10	40
8	41
8	42
\.


--
-- TOC entry 4896 (class 0 OID 5246380)
-- Dependencies: 282
-- Data for Name: pengujis_id_pe_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pengujis_id_pe_links (penguji_id, personal_endurance_id) FROM stdin;
8	9
\.


--
-- TOC entry 4895 (class 0 OID 5246370)
-- Dependencies: 281
-- Data for Name: pengujis_id_penguji_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pengujis_id_penguji_links (penguji_id, pegawai_id) FROM stdin;
10	5
11	4
8	3
23	5
\.


--
-- TOC entry 4897 (class 0 OID 5246385)
-- Dependencies: 283
-- Data for Name: pengujis_id_pj_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.pengujis_id_pj_links (penguji_id, proyeksi_jabatan_id) FROM stdin;
8	9
\.


--
-- TOC entry 4870 (class 0 OID 5246233)
-- Dependencies: 256
-- Data for Name: personal_endurances; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.personal_endurances (id, internal, external, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
7	90	90	2022-06-01 11:48:12.405	2022-06-01 11:48:12.405	2022-06-01 11:48:12.404	\N	\N
8	80	80	2022-06-02 11:06:14.327	2022-06-02 11:06:14.327	2022-06-02 11:06:14.326	\N	\N
9	80	85	2022-06-02 14:04:20.902	2022-06-02 14:04:20.902	2022-06-02 14:04:20.901	\N	\N
\.


--
-- TOC entry 4898 (class 0 OID 5246390)
-- Dependencies: 284
-- Data for Name: personal_endurances_nilai_pe_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.personal_endurances_nilai_pe_links (personal_endurance_id, fit_proper_id) FROM stdin;
7	36
8	41
9	42
\.


--
-- TOC entry 4872 (class 0 OID 5246242)
-- Dependencies: 258
-- Data for Name: proyeksi_jabatans; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.proyeksi_jabatans (id, pemasaran, keteknisan, k_3_l, kontribusi_kpi, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
7	90	90	9	90	2022-06-01 11:48:12.961	2022-06-01 11:48:12.961	2022-06-01 11:48:12.959	\N	\N
8	80	80	80	80	2022-06-02 11:06:14.907	2022-06-02 11:06:14.907	2022-06-02 11:06:14.906	\N	\N
9	80	80	79	88	2022-06-02 14:07:02.466	2022-06-02 14:07:02.466	2022-06-02 14:07:02.464	\N	\N
\.


--
-- TOC entry 4899 (class 0 OID 5246400)
-- Dependencies: 285
-- Data for Name: proyeksi_jabatans_nilai_pj_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.proyeksi_jabatans_nilai_pj_links (proyeksi_jabatan_id, fit_proper_id) FROM stdin;
7	36
8	41
9	42
\.


--
-- TOC entry 4838 (class 0 OID 5246075)
-- Dependencies: 224
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4828 (class 0 OID 5246024)
-- Dependencies: 214
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
11	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
2	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::api::administration-user.administration-user	{"uid":"api::administration-user.administration-user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"account":{"edit":{"label":"account","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"account","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","account","createdAt","updatedAt"],"editRelations":["account"],"edit":[[{"name":"password","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::pendidikan.pendidikan	{"uid":"api::pendidikan.pendidikan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaPendidikan","defaultSortBy":"namaPendidikan","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaPendidikan":{"edit":{"label":"namaPendidikan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaPendidikan","searchable":true,"sortable":true}},"pegawais":{"edit":{"label":"pegawais","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"pegawais","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaPendidikan","pegawais","createdAt"],"editRelations":["pegawais"],"edit":[[{"name":"namaPendidikan","size":6}]]}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::sub-bidang.sub-bidang	{"uid":"api::sub-bidang.sub-bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaSubBidang","defaultSortBy":"namaSubBidang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaSubBidang":{"edit":{"label":"namaSubBidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaSubBidang","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaSubBidang","createdAt","updatedAt"],"editRelations":[],"edit":[[{"name":"namaSubBidang","size":6}]]}}	object	\N	\N
27	plugin_i18n_default_locale	"en"	string	\N	\N
28	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
29	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
30	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::api::bidang.bidang	{"uid":"api::bidang.bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaBidang","defaultSortBy":"namaBidang","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaBidang":{"edit":{"label":"namaBidang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaBidang","searchable":true,"sortable":true}},"sub_bidangs":{"edit":{"label":"sub_bidangs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaSubBidang"},"list":{"label":"sub_bidangs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaBidang","sub_bidangs","createdAt"],"editRelations":["sub_bidangs"],"edit":[[{"name":"namaBidang","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::api::divisi.divisi	{"uid":"api::divisi.divisi","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaDivisi","defaultSortBy":"namaDivisi","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaDivisi":{"edit":{"label":"namaDivisi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaDivisi","searchable":true,"sortable":true}},"bidangs":{"edit":{"label":"bidangs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaBidang"},"list":{"label":"bidangs","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaDivisi","bidangs","createdAt"],"editRelations":["bidangs"],"edit":[[{"name":"namaDivisi","size":6}]]}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::pegawai.pegawai	{"uid":"api::pegawai.pegawai","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaPegawai","defaultSortBy":"namaPegawai","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaPegawai":{"edit":{"label":"namaPegawai","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaPegawai","searchable":true,"sortable":true}},"NIP":{"edit":{"label":"NIP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NIP","searchable":true,"sortable":true}},"tempatLahir":{"edit":{"label":"tempatLahir","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tempatLahir","searchable":true,"sortable":true}},"tanggalLahir":{"edit":{"label":"tanggalLahir","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tanggalLahir","searchable":true,"sortable":true}},"agama":{"edit":{"label":"agama","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"agama","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"gender":{"edit":{"label":"gender","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"gender","searchable":true,"sortable":true}},"noHP":{"edit":{"label":"noHP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"noHP","searchable":true,"sortable":true}},"pendidikan":{"edit":{"label":"pendidikan","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPendidikan"},"list":{"label":"pendidikan","searchable":true,"sortable":true}},"alamat":{"edit":{"label":"alamat","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alamat","searchable":true,"sortable":true}},"jabatan":{"edit":{"label":"jabatan","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaJabatan"},"list":{"label":"jabatan","searchable":true,"sortable":true}},"unit":{"edit":{"label":"unit","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaUnit"},"list":{"label":"unit","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"grade":{"edit":{"label":"grade","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"grade","searchable":true,"sortable":true}},"jenjang":{"edit":{"label":"jenjang","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenjang","searchable":true,"sortable":true}},"peserta":{"edit":{"label":"peserta","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"peserta","searchable":false,"sortable":false}},"pengujis":{"edit":{"label":"pengujis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pengujis","searchable":false,"sortable":false}},"id_user":{"edit":{"label":"id_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"id_user","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaPegawai","NIP","tempatLahir"],"editRelations":["pendidikan","jabatan","unit","peserta","pengujis","id_user"],"edit":[[{"name":"namaPegawai","size":6},{"name":"NIP","size":6}],[{"name":"tempatLahir","size":6},{"name":"tanggalLahir","size":4}],[{"name":"agama","size":6},{"name":"email","size":6}],[{"name":"gender","size":6},{"name":"noHP","size":6}],[{"name":"alamat","size":6},{"name":"role","size":6}],[{"name":"grade","size":6},{"name":"jenjang","size":6}]]}}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::direktorat.direktorat	{"uid":"api::direktorat.direktorat","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaDirektorat","defaultSortBy":"namaDirektorat","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaDirektorat":{"edit":{"label":"namaDirektorat","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaDirektorat","searchable":true,"sortable":true}},"divises":{"edit":{"label":"divises","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaDivisi"},"list":{"label":"divises","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaDirektorat","divises","createdAt"],"editRelations":["divises"],"edit":[[{"name":"namaDirektorat","size":6}]]}}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::personal-endurance.personal-endurance	{"uid":"api::personal-endurance.personal-endurance","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"internal":{"edit":{"label":"internal","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"internal","searchable":true,"sortable":true}},"external":{"edit":{"label":"external","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"external","searchable":true,"sortable":true}},"nilai_pe":{"edit":{"label":"nilai_pe","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"nilai_pe","searchable":true,"sortable":true}},"penguji":{"edit":{"label":"penguji","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penguji","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","internal","external","nilai_pe"],"editRelations":["nilai_pe","penguji"],"edit":[[{"name":"internal","size":4},{"name":"external","size":4}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::jabatan.jabatan	{"uid":"api::jabatan.jabatan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaJabatan","defaultSortBy":"namaJabatan","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaJabatan":{"edit":{"label":"namaJabatan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaJabatan","searchable":true,"sortable":true}},"pegawais":{"edit":{"label":"pegawais","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"pegawais","searchable":false,"sortable":false}},"units":{"edit":{"label":"units","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaUnit"},"list":{"label":"units","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaJabatan","pegawais","units"],"editRelations":["pegawais","units"],"edit":[[{"name":"namaJabatan","size":6}]]}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::unit.unit	{"uid":"api::unit.unit","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaUnit","defaultSortBy":"namaUnit","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaUnit":{"edit":{"label":"namaUnit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaUnit","searchable":true,"sortable":true}},"pegawais":{"edit":{"label":"pegawais","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"pegawais","searchable":false,"sortable":false}},"jabatans":{"edit":{"label":"jabatans","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaJabatan"},"list":{"label":"jabatans","searchable":false,"sortable":false}},"direktorats":{"edit":{"label":"direktorats","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaDirektorat"},"list":{"label":"direktorats","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaUnit","pegawais","jabatans"],"editRelations":["pegawais","jabatans","direktorats"],"edit":[[{"name":"namaUnit","size":6}]]}}	object	\N	\N
26	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::fit-proper.fit-proper	{"uid":"api::fit-proper.fit-proper","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"proyeksi","defaultSortBy":"proyeksi","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tanggalFitProper":{"edit":{"label":"tanggalFitProper","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tanggalFitProper","searchable":true,"sortable":true}},"proyeksi":{"edit":{"label":"proyeksi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"proyeksi","searchable":true,"sortable":true}},"jenis":{"edit":{"label":"jenis","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenis","searchable":true,"sortable":true}},"idPeserta":{"edit":{"label":"idPeserta","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"idPeserta","searchable":true,"sortable":true}},"pengujis":{"edit":{"label":"pengujis","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pengujis","searchable":false,"sortable":false}},"id_wawancara":{"edit":{"label":"id_wawancara","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"id_wawancara","searchable":true,"sortable":true}},"urjab":{"edit":{"label":"urjab","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"urjab","searchable":true,"sortable":true}},"ppt":{"edit":{"label":"ppt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ppt","searchable":true,"sortable":true}},"cv":{"edit":{"label":"cv","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cv","searchable":true,"sortable":true}},"jenjang_proyeksi":{"edit":{"label":"jenjang_proyeksi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"jenjang_proyeksi","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","tanggalFitProper","proyeksi","jenis"],"edit":[[{"name":"tanggalFitProper","size":4},{"name":"proyeksi","size":6}],[{"name":"jenis","size":6},{"name":"urjab","size":6}],[{"name":"ppt","size":6},{"name":"cv","size":6}],[{"name":"jenjang_proyeksi","size":6}]],"editRelations":["idPeserta","pengujis","id_wawancara"]}}	object	\N	\N
31	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::penguji.penguji	{"uid":"api::penguji.penguji","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"id_fit_propers":{"edit":{"label":"id_fit_propers","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"id_fit_propers","searchable":false,"sortable":false}},"id_penguji":{"edit":{"label":"id_penguji","description":"","placeholder":"","visible":true,"editable":true,"mainField":"namaPegawai"},"list":{"label":"id_penguji","searchable":true,"sortable":true}},"id_kc":{"edit":{"label":"id_kc","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"id_kc","searchable":true,"sortable":true}},"id_pe":{"edit":{"label":"id_pe","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"id_pe","searchable":true,"sortable":true}},"id_pj":{"edit":{"label":"id_pj","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"id_pj","searchable":true,"sortable":true}},"mewawancara":{"edit":{"label":"mewawancara","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"mewawancara","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","id_penguji","id_kc","id_fit_propers"],"edit":[],"editRelations":["id_penguji","id_kc","id_pe","id_pj","id_fit_propers","mewawancara"]}}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::wawancara.wawancara	{"uid":"api::wawancara.wawancara","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"tanggalWawancara":{"edit":{"label":"tanggalWawancara","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tanggalWawancara","searchable":true,"sortable":true}},"nilaiWawancara":{"edit":{"label":"nilaiWawancara","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"nilaiWawancara","searchable":true,"sortable":true}},"fit_proper":{"edit":{"label":"fit_proper","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"fit_proper","searchable":true,"sortable":true}},"pewawancara":{"edit":{"label":"pewawancara","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"pewawancara","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","tanggalWawancara","nilaiWawancara","fit_proper"],"edit":[[{"name":"tanggalWawancara","size":4},{"name":"nilaiWawancara","size":4}]],"editRelations":["fit_proper","pewawancara"]}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::bobot-nilai.bobot-nilai	{"uid":"api::bobot-nilai.bobot-nilai","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"namaBobot","defaultSortBy":"namaBobot","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"namaBobot":{"edit":{"label":"namaBobot","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"namaBobot","searchable":true,"sortable":true}},"bobot":{"edit":{"label":"bobot","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bobot","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","namaBobot","bobot","createdAt"],"editRelations":[],"edit":[[{"name":"namaBobot","size":6},{"name":"bobot","size":4}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::administration-user.administration-user":{"kind":"collectionType","collectionName":"administration_users","info":{"singularName":"administration-user","pluralName":"administration-users","displayName":"Administration_user"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"password":{"type":"password"},"account":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"id_user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"administration_users","info":{"singularName":"administration-user","pluralName":"administration-users","displayName":"Administration_user"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"password":{"type":"password"},"account":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"id_user"}},"kind":"collectionType"},"modelType":"contentType","modelName":"administration-user","connection":"default","uid":"api::administration-user.administration-user","apiName":"administration-user","globalId":"AdministrationUser","actions":{},"lifecycles":{}},"api::bidang.bidang":{"kind":"collectionType","collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaBidang":{"type":"string","required":true,"maxLength":100,"unique":true},"sub_bidangs":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaBidang":{"type":"string","required":true,"maxLength":100,"unique":true},"sub_bidangs":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bidang","connection":"default","uid":"api::bidang.bidang","apiName":"bidang","globalId":"Bidang","actions":{},"lifecycles":{}},"api::bobot-nilai.bobot-nilai":{"kind":"collectionType","collectionName":"bobot_nilai","info":{"singularName":"bobot-nilai","pluralName":"bobot-nilais","displayName":"Bobot_nilai"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaBobot":{"type":"string"},"bobot":{"type":"float"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bobot_nilai","info":{"singularName":"bobot-nilai","pluralName":"bobot-nilais","displayName":"Bobot_nilai"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaBobot":{"type":"string"},"bobot":{"type":"float"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bobot-nilai","connection":"default","uid":"api::bobot-nilai.bobot-nilai","apiName":"bobot-nilai","globalId":"BobotNilai","actions":{},"lifecycles":{}},"api::direktorat.direktorat":{"kind":"collectionType","collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaDirektorat":{"type":"string","required":true,"maxLength":100,"unique":true},"divises":{"type":"relation","relation":"oneToMany","target":"api::divisi.divisi"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaDirektorat":{"type":"string","required":true,"maxLength":100,"unique":true},"divises":{"type":"relation","relation":"oneToMany","target":"api::divisi.divisi"}},"kind":"collectionType"},"modelType":"contentType","modelName":"direktorat","connection":"default","uid":"api::direktorat.direktorat","apiName":"direktorat","globalId":"Direktorat","actions":{},"lifecycles":{}},"api::divisi.divisi":{"kind":"collectionType","collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaDivisi":{"type":"string","required":true,"unique":true,"maxLength":100},"bidangs":{"type":"relation","relation":"oneToMany","target":"api::bidang.bidang"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaDivisi":{"type":"string","required":true,"unique":true,"maxLength":100},"bidangs":{"type":"relation","relation":"oneToMany","target":"api::bidang.bidang"}},"kind":"collectionType"},"modelType":"contentType","modelName":"divisi","connection":"default","uid":"api::divisi.divisi","apiName":"divisi","globalId":"Divisi","actions":{},"lifecycles":{}},"api::fit-proper.fit-proper":{"kind":"collectionType","collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"FitProper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tanggalFitProper":{"type":"date"},"proyeksi":{"type":"string","maxLength":150,"required":false},"jenis":{"type":"string","maxLength":20,"required":false},"idPeserta":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"peserta"},"id_wawancara":{"type":"relation","relation":"oneToOne","target":"api::wawancara.wawancara","inversedBy":"fit_proper"},"urjab":{"type":"string","maxLength":255},"ppt":{"type":"string","maxLength":255},"cv":{"type":"string","maxLength":255},"jenjang_proyeksi":{"type":"string","maxLength":255},"pengujis":{"type":"relation","relation":"manyToMany","target":"api::penguji.penguji","inversedBy":"id_fit_propers"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"FitProper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tanggalFitProper":{"type":"date"},"proyeksi":{"type":"string","maxLength":150,"required":false},"jenis":{"type":"string","maxLength":20,"required":false},"idPeserta":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"peserta"},"id_wawancara":{"type":"relation","relation":"oneToOne","target":"api::wawancara.wawancara","inversedBy":"fit_proper"},"urjab":{"type":"string","maxLength":255},"ppt":{"type":"string","maxLength":255},"cv":{"type":"string","maxLength":255},"jenjang_proyeksi":{"type":"string","maxLength":255},"pengujis":{"type":"relation","relation":"manyToMany","target":"api::penguji.penguji","inversedBy":"id_fit_propers"}},"kind":"collectionType"},"modelType":"contentType","modelName":"fit-proper","connection":"default","uid":"api::fit-proper.fit-proper","apiName":"fit-proper","globalId":"FitProper","actions":{},"lifecycles":{}},"api::jabatan.jabatan":{"kind":"collectionType","collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaJabatan":{"type":"string","required":true,"maxLength":100},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"jabatan"},"units":{"type":"relation","relation":"manyToMany","target":"api::unit.unit","mappedBy":"jabatans"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaJabatan":{"type":"string","required":true,"maxLength":100},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"jabatan"},"units":{"type":"relation","relation":"manyToMany","target":"api::unit.unit","mappedBy":"jabatans"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jabatan","connection":"default","uid":"api::jabatan.jabatan","apiName":"jabatan","globalId":"Jabatan","actions":{},"lifecycles":{}},"api::key-competency.key-competency":{"kind":"collectionType","collectionName":"key_competencies","info":{"singularName":"key-competency","pluralName":"key-competencies","displayName":"Key_Competency","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"enthusiasthic":{"type":"integer"},"creative":{"type":"integer"},"partnership":{"type":"integer"},"bsn_acumen":{"type":"integer"},"cust_focus":{"type":"integer"},"empowering":{"type":"integer"},"nilai_kc":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","inversedBy":"id_kc"},"driving_execution":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"key_competencies","info":{"singularName":"key-competency","pluralName":"key-competencies","displayName":"Key_Competency","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"enthusiasthic":{"type":"integer"},"creative":{"type":"integer"},"partnership":{"type":"integer"},"bsn_acumen":{"type":"integer"},"cust_focus":{"type":"integer"},"empowering":{"type":"integer"},"nilai_kc":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","inversedBy":"id_kc"},"driving_execution":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"key-competency","connection":"default","uid":"api::key-competency.key-competency","apiName":"key-competency","globalId":"KeyCompetency","actions":{},"lifecycles":{}},"api::pegawai.pegawai":{"kind":"collectionType","collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaPegawai":{"type":"string","required":true,"maxLength":100},"NIP":{"type":"string","required":true,"unique":true,"maxLength":18,"minLength":8},"tempatLahir":{"type":"string","maxLength":100,"required":true},"tanggalLahir":{"type":"date","required":true},"agama":{"type":"string","required":true,"unique":false,"maxLength":20},"email":{"type":"email","required":true,"maxLength":100},"gender":{"type":"enumeration","enum":["Pria","Wanita"],"required":true},"noHP":{"type":"string","maxLength":13,"required":true,"unique":true},"pendidikan":{"type":"relation","relation":"manyToOne","target":"api::pendidikan.pendidikan","inversedBy":"pegawais"},"alamat":{"type":"string","required":true,"maxLength":255},"jabatan":{"type":"relation","relation":"manyToOne","target":"api::jabatan.jabatan","inversedBy":"pegawais"},"unit":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"pegawais"},"role":{"type":"enumeration","enum":["Peserta","Penguji","None"]},"grade":{"type":"string","maxLength":10,"required":true},"jenjang":{"type":"string","maxLength":20},"peserta":{"type":"relation","relation":"oneToMany","target":"api::fit-proper.fit-proper","mappedBy":"idPeserta"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"id_penguji"},"id_user":{"type":"relation","relation":"oneToOne","target":"api::administration-user.administration-user","inversedBy":"account"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaPegawai":{"type":"string","required":true,"maxLength":100},"NIP":{"type":"string","required":true,"unique":true,"maxLength":18,"minLength":8},"tempatLahir":{"type":"string","maxLength":100,"required":true},"tanggalLahir":{"type":"date","required":true},"agama":{"type":"string","required":true,"unique":false,"maxLength":20},"email":{"type":"email","required":true,"maxLength":100},"gender":{"type":"enumeration","enum":["Pria","Wanita"],"required":true},"noHP":{"type":"string","maxLength":13,"required":true,"unique":true},"pendidikan":{"type":"relation","relation":"manyToOne","target":"api::pendidikan.pendidikan","inversedBy":"pegawais"},"alamat":{"type":"string","required":true,"maxLength":255},"jabatan":{"type":"relation","relation":"manyToOne","target":"api::jabatan.jabatan","inversedBy":"pegawais"},"unit":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"pegawais"},"role":{"type":"enumeration","enum":["Peserta","Penguji","None"]},"grade":{"type":"string","maxLength":10,"required":true},"jenjang":{"type":"string","maxLength":20},"peserta":{"type":"relation","relation":"oneToMany","target":"api::fit-proper.fit-proper","mappedBy":"idPeserta"},"pengujis":{"type":"relation","relation":"oneToMany","target":"api::penguji.penguji","mappedBy":"id_penguji"},"id_user":{"type":"relation","relation":"oneToOne","target":"api::administration-user.administration-user","inversedBy":"account"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pegawai","connection":"default","uid":"api::pegawai.pegawai","apiName":"pegawai","globalId":"Pegawai","actions":{},"lifecycles":{}},"api::pendidikan.pendidikan":{"kind":"collectionType","collectionName":"pendidikans","info":{"singularName":"pendidikan","pluralName":"pendidikans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaPendidikan":{"type":"string","required":true,"maxLength":50},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"pendidikan"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pendidikans","info":{"singularName":"pendidikan","pluralName":"pendidikans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaPendidikan":{"type":"string","required":true,"maxLength":50},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"pendidikan"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pendidikan","connection":"default","uid":"api::pendidikan.pendidikan","apiName":"pendidikan","globalId":"Pendidikan","actions":{},"lifecycles":{}},"api::penguji.penguji":{"kind":"collectionType","collectionName":"pengujis","info":{"singularName":"penguji","pluralName":"pengujis","displayName":"Penguji","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"id_fit_propers":{"type":"relation","relation":"manyToMany","target":"api::fit-proper.fit-proper","inversedBy":"pengujis"},"id_penguji":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"pengujis"},"id_kc":{"type":"relation","relation":"oneToOne","target":"api::key-competency.key-competency","mappedBy":"penguji"},"id_pe":{"type":"relation","relation":"oneToOne","target":"api::personal-endurance.personal-endurance","inversedBy":"penguji"},"id_pj":{"type":"relation","relation":"oneToOne","target":"api::proyeksi-jabatan.proyeksi-jabatan","inversedBy":"penguji"},"mewawancara":{"type":"relation","relation":"oneToMany","target":"api::wawancara.wawancara","mappedBy":"pewawancara"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pengujis","info":{"singularName":"penguji","pluralName":"pengujis","displayName":"Penguji","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"id_fit_propers":{"type":"relation","relation":"manyToMany","target":"api::fit-proper.fit-proper","inversedBy":"pengujis"},"id_penguji":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"pengujis"},"id_kc":{"type":"relation","relation":"oneToOne","target":"api::key-competency.key-competency","mappedBy":"penguji"},"id_pe":{"type":"relation","relation":"oneToOne","target":"api::personal-endurance.personal-endurance","inversedBy":"penguji"},"id_pj":{"type":"relation","relation":"oneToOne","target":"api::proyeksi-jabatan.proyeksi-jabatan","inversedBy":"penguji"},"mewawancara":{"type":"relation","relation":"oneToMany","target":"api::wawancara.wawancara","mappedBy":"pewawancara"}},"kind":"collectionType"},"modelType":"contentType","modelName":"penguji","connection":"default","uid":"api::penguji.penguji","apiName":"penguji","globalId":"Penguji","actions":{},"lifecycles":{}},"api::personal-endurance.personal-endurance":{"kind":"collectionType","collectionName":"personal_endurances","info":{"singularName":"personal-endurance","pluralName":"personal-endurances","displayName":"Personal_Endurance","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"internal":{"type":"integer"},"external":{"type":"integer"},"nilai_pe":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","mappedBy":"id_pe"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"personal_endurances","info":{"singularName":"personal-endurance","pluralName":"personal-endurances","displayName":"Personal_Endurance","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"internal":{"type":"integer"},"external":{"type":"integer"},"nilai_pe":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","mappedBy":"id_pe"}},"kind":"collectionType"},"modelType":"contentType","modelName":"personal-endurance","connection":"default","uid":"api::personal-endurance.personal-endurance","apiName":"personal-endurance","globalId":"PersonalEndurance","actions":{},"lifecycles":{}},"api::proyeksi-jabatan.proyeksi-jabatan":{"kind":"collectionType","collectionName":"proyeksi_jabatans","info":{"singularName":"proyeksi-jabatan","pluralName":"proyeksi-jabatans","displayName":"Proyeksi_Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"pemasaran":{"type":"integer"},"keteknisan":{"type":"integer"},"k3l":{"type":"integer"},"kontribusi_kpi":{"type":"integer"},"nilai_pj":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","mappedBy":"id_pj"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"proyeksi_jabatans","info":{"singularName":"proyeksi-jabatan","pluralName":"proyeksi-jabatans","displayName":"Proyeksi_Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"pemasaran":{"type":"integer"},"keteknisan":{"type":"integer"},"k3l":{"type":"integer"},"kontribusi_kpi":{"type":"integer"},"nilai_pj":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper"},"penguji":{"type":"relation","relation":"oneToOne","target":"api::penguji.penguji","mappedBy":"id_pj"}},"kind":"collectionType"},"modelType":"contentType","modelName":"proyeksi-jabatan","connection":"default","uid":"api::proyeksi-jabatan.proyeksi-jabatan","apiName":"proyeksi-jabatan","globalId":"ProyeksiJabatan","actions":{},"lifecycles":{}},"api::sub-bidang.sub-bidang":{"kind":"collectionType","collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"SubBidang"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaSubBidang":{"type":"string","required":true,"unique":true,"maxLength":100},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"SubBidang"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaSubBidang":{"type":"string","required":true,"unique":true,"maxLength":100}},"kind":"collectionType"},"modelType":"contentType","modelName":"sub-bidang","connection":"default","uid":"api::sub-bidang.sub-bidang","apiName":"sub-bidang","globalId":"SubBidang","actions":{},"lifecycles":{}},"api::unit.unit":{"kind":"collectionType","collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaUnit":{"type":"string","required":true,"maxLength":100,"unique":true},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"unit"},"jabatans":{"type":"relation","relation":"manyToMany","target":"api::jabatan.jabatan","inversedBy":"units"},"direktorats":{"type":"relation","relation":"oneToMany","target":"api::direktorat.direktorat"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"namaUnit":{"type":"string","required":true,"maxLength":100,"unique":true},"pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"unit"},"jabatans":{"type":"relation","relation":"manyToMany","target":"api::jabatan.jabatan","inversedBy":"units"},"direktorats":{"type":"relation","relation":"oneToMany","target":"api::direktorat.direktorat"}},"kind":"collectionType"},"modelType":"contentType","modelName":"unit","connection":"default","uid":"api::unit.unit","apiName":"unit","globalId":"Unit","actions":{},"lifecycles":{}},"api::wawancara.wawancara":{"kind":"collectionType","collectionName":"wawancaras","info":{"singularName":"wawancara","pluralName":"wawancaras","displayName":"Wawancara","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tanggalWawancara":{"type":"date"},"nilaiWawancara":{"type":"integer","max":100},"fit_proper":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"id_wawancara"},"pewawancara":{"type":"relation","relation":"manyToOne","target":"api::penguji.penguji","inversedBy":"mewawancara"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"wawancaras","info":{"singularName":"wawancara","pluralName":"wawancaras","displayName":"Wawancara","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"tanggalWawancara":{"type":"date"},"nilaiWawancara":{"type":"integer","max":100},"fit_proper":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"id_wawancara"},"pewawancara":{"type":"relation","relation":"manyToOne","target":"api::penguji.penguji","inversedBy":"mewawancara"}},"kind":"collectionType"},"modelType":"contentType","modelName":"wawancara","connection":"default","uid":"api::wawancara.wawancara","apiName":"wawancara","globalId":"Wawancara","actions":{},"lifecycles":{}}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::proyeksi-jabatan.proyeksi-jabatan	{"uid":"api::proyeksi-jabatan.proyeksi-jabatan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"pemasaran":{"edit":{"label":"pemasaran","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pemasaran","searchable":true,"sortable":true}},"keteknisan":{"edit":{"label":"keteknisan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keteknisan","searchable":true,"sortable":true}},"k3l":{"edit":{"label":"k3l","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"k3l","searchable":true,"sortable":true}},"kontribusi_kpi":{"edit":{"label":"kontribusi_kpi","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kontribusi_kpi","searchable":true,"sortable":true}},"nilai_pj":{"edit":{"label":"nilai_pj","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"nilai_pj","searchable":true,"sortable":true}},"penguji":{"edit":{"label":"penguji","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penguji","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","pemasaran","keteknisan","k3l"],"editRelations":["nilai_pj","penguji"],"edit":[[{"name":"pemasaran","size":4},{"name":"keteknisan","size":4},{"name":"k3l","size":4}],[{"name":"kontribusi_kpi","size":4}]]}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::key-competency.key-competency	{"uid":"api::key-competency.key-competency","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"enthusiasthic":{"edit":{"label":"enthusiasthic","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"enthusiasthic","searchable":true,"sortable":true}},"creative":{"edit":{"label":"creative","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"creative","searchable":true,"sortable":true}},"partnership":{"edit":{"label":"partnership","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"partnership","searchable":true,"sortable":true}},"bsn_acumen":{"edit":{"label":"bsn_acumen","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"bsn_acumen","searchable":true,"sortable":true}},"cust_focus":{"edit":{"label":"cust_focus","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cust_focus","searchable":true,"sortable":true}},"empowering":{"edit":{"label":"empowering","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"empowering","searchable":true,"sortable":true}},"nilai_kc":{"edit":{"label":"nilai_kc","description":"","placeholder":"","visible":true,"editable":true,"mainField":"proyeksi"},"list":{"label":"nilai_kc","searchable":true,"sortable":true}},"penguji":{"edit":{"label":"penguji","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"penguji","searchable":true,"sortable":true}},"driving_execution":{"edit":{"label":"driving_execution","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"driving_execution","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","enthusiasthic","creative","partnership"],"edit":[[{"name":"enthusiasthic","size":4},{"name":"creative","size":4},{"name":"partnership","size":4}],[{"name":"bsn_acumen","size":4},{"name":"cust_focus","size":4},{"name":"empowering","size":4}],[{"name":"driving_execution","size":4}]],"editRelations":["nilai_kc","penguji"]}}	object	\N	\N
\.


--
-- TOC entry 4826 (class 0 OID 5246015)
-- Dependencies: 212
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
11	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"administration_users","indexes":[{"name":"administration_users_created_by_id_fk","columns":["created_by_id"]},{"name":"administration_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"administration_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"administration_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bidangs","indexes":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_bidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bobot_nilai","indexes":[{"name":"bobot_nilai_created_by_id_fk","columns":["created_by_id"]},{"name":"bobot_nilai_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bobot_nilai_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bobot_nilai_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_bobot","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bobot","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"direktorats","indexes":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"]},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_direktorat","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"divisis","indexes":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"]},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_divisi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers","indexes":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"]},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tanggal_fit_proper","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proyeksi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"urjab","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ppt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cv","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenjang_proyeksi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans","indexes":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"]},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"key_competencies","indexes":[{"name":"key_competencies_created_by_id_fk","columns":["created_by_id"]},{"name":"key_competencies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"key_competencies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"key_competencies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"enthusiasthic","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"creative","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"partnership","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"bsn_acumen","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cust_focus","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"empowering","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"driving_execution","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais","indexes":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"]},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_pegawai","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tempat_lahir","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tanggal_lahir","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"agama","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"gender","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"no_hp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alamat","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"grade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pendidikans","indexes":[{"name":"pendidikans_created_by_id_fk","columns":["created_by_id"]},{"name":"pendidikans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pendidikans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pendidikans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_pendidikan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis","indexes":[{"name":"pengujis_created_by_id_fk","columns":["created_by_id"]},{"name":"pengujis_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pengujis_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pengujis_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"personal_endurances","indexes":[{"name":"personal_endurances_created_by_id_fk","columns":["created_by_id"]},{"name":"personal_endurances_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"personal_endurances_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"personal_endurances_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"internal","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"external","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proyeksi_jabatans","indexes":[{"name":"proyeksi_jabatans_created_by_id_fk","columns":["created_by_id"]},{"name":"proyeksi_jabatans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"proyeksi_jabatans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"proyeksi_jabatans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pemasaran","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keteknisan","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"k_3_l","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kontribusi_kpi","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sub_bidangs","indexes":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_sub_bidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"units","indexes":[{"name":"units_created_by_id_fk","columns":["created_by_id"]},{"name":"units_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"units_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"units_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_unit","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"wawancaras","indexes":[{"name":"wawancaras_created_by_id_fk","columns":["created_by_id"]},{"name":"wawancaras_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"wawancaras_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"wawancaras_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tanggal_wawancara","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nilai_wawancara","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bidangs_sub_bidangs_links","indexes":[{"name":"bidangs_sub_bidangs_links_fk","columns":["bidang_id"]},{"name":"bidangs_sub_bidangs_links_inv_fk","columns":["sub_bidang_id"]}],"foreignKeys":[{"name":"bidangs_sub_bidangs_links_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"},{"name":"bidangs_sub_bidangs_links_inv_fk","columns":["sub_bidang_id"],"referencedColumns":["id"],"referencedTable":"sub_bidangs","onDelete":"CASCADE"}],"columns":[{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sub_bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"direktorats_divises_links","indexes":[{"name":"direktorats_divises_links_fk","columns":["direktorat_id"]},{"name":"direktorats_divises_links_inv_fk","columns":["divisi_id"]}],"foreignKeys":[{"name":"direktorats_divises_links_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"},{"name":"direktorats_divises_links_inv_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"}],"columns":[{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"divisis_bidangs_links","indexes":[{"name":"divisis_bidangs_links_fk","columns":["divisi_id"]},{"name":"divisis_bidangs_links_inv_fk","columns":["bidang_id"]}],"foreignKeys":[{"name":"divisis_bidangs_links_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"},{"name":"divisis_bidangs_links_inv_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"}],"columns":[{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers_id_peserta_links","indexes":[{"name":"fit_propers_id_peserta_links_fk","columns":["fit_proper_id"]},{"name":"fit_propers_id_peserta_links_inv_fk","columns":["pegawai_id"]}],"foreignKeys":[{"name":"fit_propers_id_peserta_links_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"},{"name":"fit_propers_id_peserta_links_inv_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"}],"columns":[{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers_id_wawancara_links","indexes":[{"name":"fit_propers_id_wawancara_links_fk","columns":["fit_proper_id"]},{"name":"fit_propers_id_wawancara_links_inv_fk","columns":["wawancara_id"]}],"foreignKeys":[{"name":"fit_propers_id_wawancara_links_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"},{"name":"fit_propers_id_wawancara_links_inv_fk","columns":["wawancara_id"],"referencedColumns":["id"],"referencedTable":"wawancaras","onDelete":"CASCADE"}],"columns":[{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"wawancara_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers_pengujis_links","indexes":[{"name":"fit_propers_pengujis_links_fk","columns":["fit_proper_id"]},{"name":"fit_propers_pengujis_links_inv_fk","columns":["penguji_id"]}],"foreignKeys":[{"name":"fit_propers_pengujis_links_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"},{"name":"fit_propers_pengujis_links_inv_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"}],"columns":[{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"key_competencies_nilai_kc_links","indexes":[{"name":"key_competencies_nilai_kc_links_fk","columns":["key_competency_id"]},{"name":"key_competencies_nilai_kc_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"key_competencies_nilai_kc_links_fk","columns":["key_competency_id"],"referencedColumns":["id"],"referencedTable":"key_competencies","onDelete":"CASCADE"},{"name":"key_competencies_nilai_kc_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"key_competency_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"key_competencies_penguji_links","indexes":[{"name":"key_competencies_penguji_links_fk","columns":["key_competency_id"]},{"name":"key_competencies_penguji_links_inv_fk","columns":["penguji_id"]}],"foreignKeys":[{"name":"key_competencies_penguji_links_fk","columns":["key_competency_id"],"referencedColumns":["id"],"referencedTable":"key_competencies","onDelete":"CASCADE"},{"name":"key_competencies_penguji_links_inv_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"}],"columns":[{"name":"key_competency_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_pendidikan_links","indexes":[{"name":"pegawais_pendidikan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_pendidikan_links_inv_fk","columns":["pendidikan_id"]}],"foreignKeys":[{"name":"pegawais_pendidikan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_pendidikan_links_inv_fk","columns":["pendidikan_id"],"referencedColumns":["id"],"referencedTable":"pendidikans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pendidikan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_jabatan_links","indexes":[{"name":"pegawais_jabatan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_jabatan_links_inv_fk","columns":["jabatan_id"]}],"foreignKeys":[{"name":"pegawais_jabatan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_jabatan_links_inv_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_unit_links","indexes":[{"name":"pegawais_unit_links_fk","columns":["pegawai_id"]},{"name":"pegawais_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"pegawais_unit_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_user_links","indexes":[{"name":"pegawais_id_user_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_user_links_inv_fk","columns":["administration_user_id"]}],"foreignKeys":[{"name":"pegawais_id_user_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_user_links_inv_fk","columns":["administration_user_id"],"referencedColumns":["id"],"referencedTable":"administration_users","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"administration_user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_id_fit_propers_links","indexes":[{"name":"pengujis_id_fit_propers_links_fk","columns":["penguji_id"]},{"name":"pengujis_id_fit_propers_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"pengujis_id_fit_propers_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_id_fit_propers_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_id_penguji_links","indexes":[{"name":"pengujis_id_penguji_links_fk","columns":["penguji_id"]},{"name":"pengujis_id_penguji_links_inv_fk","columns":["pegawai_id"]}],"foreignKeys":[{"name":"pengujis_id_penguji_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_id_penguji_links_inv_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_id_pe_links","indexes":[{"name":"pengujis_id_pe_links_fk","columns":["penguji_id"]},{"name":"pengujis_id_pe_links_inv_fk","columns":["personal_endurance_id"]}],"foreignKeys":[{"name":"pengujis_id_pe_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_id_pe_links_inv_fk","columns":["personal_endurance_id"],"referencedColumns":["id"],"referencedTable":"personal_endurances","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"personal_endurance_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pengujis_id_pj_links","indexes":[{"name":"pengujis_id_pj_links_fk","columns":["penguji_id"]},{"name":"pengujis_id_pj_links_inv_fk","columns":["proyeksi_jabatan_id"]}],"foreignKeys":[{"name":"pengujis_id_pj_links_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"},{"name":"pengujis_id_pj_links_inv_fk","columns":["proyeksi_jabatan_id"],"referencedColumns":["id"],"referencedTable":"proyeksi_jabatans","onDelete":"CASCADE"}],"columns":[{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"proyeksi_jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"personal_endurances_nilai_pe_links","indexes":[{"name":"personal_endurances_nilai_pe_links_fk","columns":["personal_endurance_id"]},{"name":"personal_endurances_nilai_pe_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"personal_endurances_nilai_pe_links_fk","columns":["personal_endurance_id"],"referencedColumns":["id"],"referencedTable":"personal_endurances","onDelete":"CASCADE"},{"name":"personal_endurances_nilai_pe_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"personal_endurance_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"proyeksi_jabatans_nilai_pj_links","indexes":[{"name":"proyeksi_jabatans_nilai_pj_links_fk","columns":["proyeksi_jabatan_id"]},{"name":"proyeksi_jabatans_nilai_pj_links_inv_fk","columns":["fit_proper_id"]}],"foreignKeys":[{"name":"proyeksi_jabatans_nilai_pj_links_fk","columns":["proyeksi_jabatan_id"],"referencedColumns":["id"],"referencedTable":"proyeksi_jabatans","onDelete":"CASCADE"},{"name":"proyeksi_jabatans_nilai_pj_links_inv_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"}],"columns":[{"name":"proyeksi_jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"units_jabatans_links","indexes":[{"name":"units_jabatans_links_fk","columns":["unit_id"]},{"name":"units_jabatans_links_inv_fk","columns":["jabatan_id"]}],"foreignKeys":[{"name":"units_jabatans_links_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"},{"name":"units_jabatans_links_inv_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"}],"columns":[{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"units_direktorats_links","indexes":[{"name":"units_direktorats_links_fk","columns":["unit_id"]},{"name":"units_direktorats_links_inv_fk","columns":["direktorat_id"]}],"foreignKeys":[{"name":"units_direktorats_links_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"},{"name":"units_direktorats_links_inv_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"}],"columns":[{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"wawancaras_pewawancara_links","indexes":[{"name":"wawancaras_pewawancara_links_fk","columns":["wawancara_id"]},{"name":"wawancaras_pewawancara_links_inv_fk","columns":["penguji_id"]}],"foreignKeys":[{"name":"wawancaras_pewawancara_links_fk","columns":["wawancara_id"],"referencedColumns":["id"],"referencedTable":"wawancaras","onDelete":"CASCADE"},{"name":"wawancaras_pewawancara_links_inv_fk","columns":["penguji_id"],"referencedColumns":["id"],"referencedTable":"pengujis","onDelete":"CASCADE"}],"columns":[{"name":"wawancara_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"penguji_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2022-06-01 07:18:15.923	c26071fd309b7e2e9cf7d15f22e112e0
\.


--
-- TOC entry 4824 (class 0 OID 5246008)
-- Dependencies: 210
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- TOC entry 4830 (class 0 OID 5246033)
-- Dependencies: 216
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 4874 (class 0 OID 5246251)
-- Dependencies: 260
-- Data for Name: sub_bidangs; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.sub_bidangs (id, nama_sub_bidang, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	SUB BIDANG PENGEMBANGAN EKSEKUTIF	2022-04-21 07:55:26.753	2022-04-21 07:55:28.623	2022-04-21 07:55:28.619	1	1
\.


--
-- TOC entry 4876 (class 0 OID 5246260)
-- Dependencies: 262
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.units (id, nama_unit, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	PT PLN (PERSERO) KANTOR PUSAT	2022-04-21 08:01:58.931	2022-04-21 08:20:38.34	2022-04-21 08:20:38.338	1	2
2	PT PLN (PERSERO) PUSAT MANAJEMEN PROYEK	2022-05-19 01:33:02.424	2022-05-19 01:33:06.426	2022-05-19 01:33:06.423	1	1
3	PT PLN (PERSERO) PUSAT PEMELIHARAAN KETENAGALISTRIKAN	2022-05-19 01:33:39.924	2022-05-19 01:33:41.707	2022-05-19 01:33:41.704	1	1
4	PT PLN (PERSERO) PUSAT PENDIDIKAN DAN PELATIHAN (CORPORATE UNIVERSITY)	2022-05-19 01:34:24.84	2022-05-19 01:34:26.496	2022-05-19 01:34:26.494	1	1
5	PT PLN (PERSERO) PUSAT PENELITIAN DAN PENGEMBANGAN KETENAGALISTRIKAN (RESEARCH INSTITUTE)	2022-05-19 01:35:01.345	2022-05-19 01:35:03.101	2022-05-19 01:35:03.099	1	1
6	PT PLN (PERSERO) PUSAT SERTIFIKASI	2022-05-19 01:35:50.909	2022-05-19 01:35:52.295	2022-05-19 01:35:52.293	1	1
7	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI BALI	2022-05-19 01:36:46.535	2022-05-19 01:36:47.652	2022-05-19 01:36:47.65	1	1
8	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI BANTEN	2022-05-19 01:37:16.996	2022-05-19 01:37:18.13	2022-05-19 01:37:18.127	1	1
9	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAKARTA RAYA	2022-05-19 01:37:40.102	2022-05-19 01:37:41.382	2022-05-19 01:37:41.377	1	1
10	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAWA BARAT	2022-05-19 01:37:58.323	2022-05-19 01:37:59.486	2022-05-19 01:37:59.484	1	1
11	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAWA TENGAH DAN D.I. YOGYAKARTA	2022-05-19 01:39:08.715	2022-05-19 01:39:09.847	2022-05-19 01:39:09.845	1	1
12	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI JAWA TIMUR	2022-05-19 01:39:24.801	2022-05-19 01:39:25.933	2022-05-19 01:39:25.931	1	1
13	PT PLN (PERSERO) UNIT INDUK DISTRIBUSI LAMPUNG	2022-05-19 01:41:33.491	2022-05-19 01:41:34.808	2022-05-19 01:41:34.806	1	1
14	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN DAN PENYALURAN KALIMANTAN	2022-05-19 01:43:13.926	2022-05-19 01:43:15.182	2022-05-19 01:43:15.177	1	1
15	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN DAN PENYALURAN SULAWESI	2022-05-19 01:43:57.677	2022-05-19 01:43:58.866	2022-05-19 01:43:58.864	1	1
16	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN SUMATERA BAGIAN SELATAN	2022-05-19 01:44:15.676	2022-05-19 01:44:16.887	2022-05-19 01:44:16.884	1	1
17	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN SUMATERA BAGIAN UTARA	2022-05-19 01:44:48.56	2022-05-19 01:44:49.756	2022-05-19 01:44:49.754	1	1
18	PT PLN (PERSERO) UNIT INDUK PEMBANGKITAN TANJUNG JATI B	2022-05-19 01:45:16.78	2022-05-19 01:45:18.007	2022-05-19 01:45:18.005	1	1
19	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN JAWA BAGIAN BARAT	2022-05-19 01:45:58.171	2022-05-19 01:45:59.41	2022-05-19 01:45:59.407	1	1
20	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN JAWA BAGIAN TENGAH	2022-05-19 01:46:19.201	2022-05-19 01:46:20.391	2022-05-19 01:46:20.387	1	1
21	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN JAWA BAGIAN TIMUR DAN BALI	2022-05-19 01:46:48.251	2022-05-19 01:46:50.02	2022-05-19 01:46:50.017	1	1
22	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN KALIMANTAN BAGIAN TIMUR	2022-05-19 01:50:39.104	2022-05-19 01:52:37.818	2022-05-19 01:50:40.511	1	1
23	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN KALIMANTAN BAGIAN BARAT	2022-05-19 01:53:26.471	2022-05-19 01:53:27.639	2022-05-19 01:53:27.637	1	1
24	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN MALUKU PAPUA	2022-05-19 01:55:49.416	2022-05-19 01:55:50.585	2022-05-19 01:55:50.583	1	1
25	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN NUSA TENGGARA	2022-05-19 01:56:10.796	2022-05-19 01:56:11.922	2022-05-19 01:56:11.92	1	1
26	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN SULAWESI	2022-05-19 01:56:29.075	2022-05-19 01:56:30.219	2022-05-19 01:56:30.217	1	1
27	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN SUMATERA BAGIAN SELATAN	2022-05-19 01:56:50.072	2022-05-19 01:56:51.208	2022-05-19 01:56:51.206	1	1
28	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN SUMATERA BAGIAN TENGAH	2022-05-19 01:57:06.465	2022-05-19 01:57:07.608	2022-05-19 01:57:07.604	1	1
29	PT PLN (PERSERO) UNIT INDUK PEMBANGUNAN SUMATERA BAGIAN UTARA	2022-05-19 01:57:32.345	2022-05-19 01:57:33.479	2022-05-19 01:57:33.477	1	1
30	PT PLN (PERSERO) UNIT INDUK PENYALURAN DAN PUSAT PENGATUR BEBAN SUMATERA	2022-05-19 01:57:51.551	2022-05-19 01:57:52.741	2022-05-19 01:57:52.739	1	1
31	PT PLN (PERSERO) UNIT INDUK PUSAT PENGATUR BEBAN JAWA, MADURA, DAN BALI	2022-05-19 01:58:15.401	2022-05-19 01:58:16.506	2022-05-19 01:58:16.504	1	1
32	PT PLN (PERSERO) UNIT INDUK TRANSMISI JAWA BAGIAN BARAT	2022-05-19 01:58:33.3	2022-05-19 01:58:34.451	2022-05-19 01:58:34.449	1	1
33	PT PLN (PERSERO) UNIT INDUK TRANSMISI JAWA BAGIAN TENGAH	2022-05-19 01:59:50.939	2022-05-19 01:59:52.249	2022-05-19 01:59:52.247	1	1
34	PT PLN (PERSERO) UNIT INDUK TRANSMISI JAWA BAGIAN TIMUR DAN BALI	2022-05-19 02:00:26.099	2022-05-19 02:00:28.524	2022-05-19 02:00:28.522	1	1
35	PT PLN (PERSERO) UNIT INDUK WILAYAH ACEH	2022-05-19 02:00:47.565	2022-05-19 02:00:49.291	2022-05-19 02:00:49.289	1	1
36	PT PLN (PERSERO) UNIT INDUK WILAYAH KALIMANTAN BARAT	2022-05-19 02:08:00.126	2022-05-19 02:08:01.438	2022-05-19 02:08:01.436	1	1
37	PT PLN (PERSERO) UNIT INDUK WILAYAH KALIMANTAN SELATAN DAN KALIMANTAN TENGAH	2022-05-19 02:08:20.333	2022-05-19 02:08:21.417	2022-05-19 02:08:21.413	1	1
38	PT PLN (PERSERO) UNIT INDUK WILAYAH KALIMANTAN TIMUR DAN KALIMANTAN UTARA	2022-05-19 02:08:48.57	2022-05-19 02:08:49.707	2022-05-19 02:08:49.705	1	1
39	PT PLN (PERSERO) UNIT INDUK WILAYAH MALUKU DAN MALUKU UTARA	2022-05-19 02:09:10.909	2022-05-19 02:09:12.682	2022-05-19 02:09:12.681	1	1
40	PT PLN (PERSERO) UNIT INDUK WILAYAH NUSA TENGGARA BARAT	2022-05-19 02:09:34.265	2022-05-19 02:09:35.329	2022-05-19 02:09:35.327	1	1
41	PT PLN (PERSERO) UNIT INDUK WILAYAH NUSA TENGGARA TIMUR	2022-05-19 02:10:07.931	2022-05-19 02:10:09.283	2022-05-19 02:10:09.279	1	1
42	PT PLN (PERSERO) UNIT INDUK WILAYAH PAPUA DAN PAPUA BARAT	2022-05-19 02:10:28.874	2022-05-19 02:10:29.939	2022-05-19 02:10:29.937	1	1
43	PT PLN (PERSERO) UNIT INDUK WILAYAH RIAU DAN KEPULAUAN RIAU	2022-05-19 02:10:51.736	2022-05-19 02:10:52.952	2022-05-19 02:10:52.95	1	1
44	PT PLN (PERSERO) UNIT INDUK WILAYAH SULAWESI SELATAN,SULAWESI TENGGARA DAN SULAWESI BARAT	2022-05-19 02:11:13.217	2022-05-19 02:11:32.735	2022-05-19 02:11:32.732	1	1
45	PT PLN (PERSERO) UNIT INDUK WILAYAH SULAWESI UTARA, SULAWESI TENGAH DAN GORONTALO	2022-05-19 02:11:53.747	2022-05-19 02:11:54.961	2022-05-19 02:11:54.958	1	1
46	PT PLN (PERSERO) UNIT INDUK WILAYAH SUMATERA BARAT	2022-05-19 02:12:12.425	2022-05-19 02:12:13.67	2022-05-19 02:12:13.667	1	1
47	PT PLN (PERSERO) UNIT INDUK WILAYAH SUMATERA SELATAN, JAMBI DAN BENGKULU	2022-05-19 02:13:42.401	2022-05-19 02:13:43.442	2022-05-19 02:13:43.438	1	1
48	PT PLN (PERSERO) UNIT INDUK WILAYAH SUMATERA UTARA	2022-05-19 02:14:02.25	2022-05-19 02:14:03.292	2022-05-19 02:14:03.29	1	1
\.


--
-- TOC entry 4901 (class 0 OID 5246415)
-- Dependencies: 287
-- Data for Name: units_direktorats_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.units_direktorats_links (unit_id, direktorat_id) FROM stdin;
\.


--
-- TOC entry 4900 (class 0 OID 5246410)
-- Dependencies: 286
-- Data for Name: units_jabatans_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.units_jabatans_links (unit_id, jabatan_id) FROM stdin;
1	1
1	2
1	34
1	36
1	39
1	40
1	43
1	44
1	45
1	46
1	47
1	48
1	49
1	50
1	51
1	52
1	53
1	54
9	55
11	57
14	58
12	61
10	65
11	69
15	71
15	73
12	75
\.


--
-- TOC entry 4844 (class 0 OID 5246108)
-- Dependencies: 230
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2022-04-21 07:18:26.324	2022-04-21 07:18:26.324	\N	\N
2	plugin::users-permissions.auth.connect	2022-04-21 07:18:26.324	2022-04-21 07:18:26.324	\N	\N
4	plugin::users-permissions.auth.register	2022-04-21 07:18:26.35	2022-04-21 07:18:26.35	\N	\N
6	plugin::users-permissions.user.me	2022-04-21 07:18:26.35	2022-04-21 07:18:26.35	\N	\N
7	plugin::users-permissions.auth.connect	2022-04-21 07:18:26.35	2022-04-21 07:18:26.35	\N	\N
8	plugin::users-permissions.auth.callback	2022-04-21 07:18:26.35	2022-04-21 07:18:26.35	\N	\N
12	api::pegawai.pegawai.find	2022-04-21 10:52:26.002	2022-04-21 10:52:26.002	\N	\N
13	api::pegawai.pegawai.create	2022-04-21 10:52:26.002	2022-04-21 10:52:26.002	\N	\N
14	api::pegawai.pegawai.update	2022-04-21 10:52:26.002	2022-04-21 10:52:26.002	\N	\N
15	api::pegawai.pegawai.findOne	2022-04-21 10:52:26.002	2022-04-21 10:52:26.002	\N	\N
16	api::pegawai.pegawai.delete	2022-04-21 10:52:26.002	2022-04-21 10:52:26.002	\N	\N
17	api::bidang.bidang.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
18	api::bidang.bidang.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
19	api::bidang.bidang.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
20	api::bidang.bidang.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
21	api::bidang.bidang.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
22	api::direktorat.direktorat.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
24	api::direktorat.direktorat.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
23	api::direktorat.direktorat.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
26	api::direktorat.direktorat.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
25	api::direktorat.direktorat.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
27	api::divisi.divisi.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
28	api::divisi.divisi.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
29	api::divisi.divisi.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
30	api::divisi.divisi.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
31	api::divisi.divisi.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
32	api::fit-proper.fit-proper.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
33	api::fit-proper.fit-proper.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
34	api::fit-proper.fit-proper.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
35	api::fit-proper.fit-proper.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
36	api::fit-proper.fit-proper.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
37	api::jabatan.jabatan.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
38	api::jabatan.jabatan.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
39	api::jabatan.jabatan.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
40	api::jabatan.jabatan.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
41	api::jabatan.jabatan.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
42	api::key-competency.key-competency.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
43	api::key-competency.key-competency.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
44	api::key-competency.key-competency.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
45	api::key-competency.key-competency.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
46	api::key-competency.key-competency.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
47	api::pendidikan.pendidikan.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
48	api::pendidikan.pendidikan.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
49	api::pendidikan.pendidikan.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
50	api::pendidikan.pendidikan.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
51	api::pendidikan.pendidikan.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
52	api::penguji.penguji.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
53	api::penguji.penguji.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
54	api::penguji.penguji.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
55	api::penguji.penguji.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
56	api::penguji.penguji.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
57	api::personal-endurance.personal-endurance.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
58	api::personal-endurance.personal-endurance.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
59	api::personal-endurance.personal-endurance.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
60	api::personal-endurance.personal-endurance.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
61	api::personal-endurance.personal-endurance.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
62	api::proyeksi-jabatan.proyeksi-jabatan.find	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
63	api::proyeksi-jabatan.proyeksi-jabatan.findOne	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
64	api::proyeksi-jabatan.proyeksi-jabatan.update	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
65	api::proyeksi-jabatan.proyeksi-jabatan.create	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
66	api::proyeksi-jabatan.proyeksi-jabatan.delete	2022-04-21 12:47:35.478	2022-04-21 12:47:35.478	\N	\N
67	api::sub-bidang.sub-bidang.findOne	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
68	api::sub-bidang.sub-bidang.find	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
69	api::sub-bidang.sub-bidang.create	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
70	api::sub-bidang.sub-bidang.delete	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
71	api::sub-bidang.sub-bidang.update	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
72	api::unit.unit.find	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
73	api::unit.unit.findOne	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
74	api::unit.unit.create	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
75	api::unit.unit.update	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
76	api::unit.unit.delete	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
77	api::wawancara.wawancara.find	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
79	api::wawancara.wawancara.update	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
80	api::wawancara.wawancara.create	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
81	api::wawancara.wawancara.delete	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
78	api::wawancara.wawancara.findOne	2022-04-21 12:47:35.479	2022-04-21 12:47:35.479	\N	\N
82	api::bobot-nilai.bobot-nilai.create	2022-05-12 04:42:07.631	2022-05-12 04:42:07.631	\N	\N
83	api::bobot-nilai.bobot-nilai.findOne	2022-05-12 04:42:07.631	2022-05-12 04:42:07.631	\N	\N
84	api::bobot-nilai.bobot-nilai.find	2022-05-12 04:42:07.631	2022-05-12 04:42:07.631	\N	\N
85	api::bobot-nilai.bobot-nilai.update	2022-05-12 04:42:07.631	2022-05-12 04:42:07.631	\N	\N
86	api::bobot-nilai.bobot-nilai.delete	2022-05-12 04:42:07.631	2022-05-12 04:42:07.631	\N	\N
87	api::administration-user.administration-user.findOne	2022-05-19 02:02:03.047	2022-05-19 02:02:03.047	\N	\N
88	api::administration-user.administration-user.find	2022-05-19 02:02:03.047	2022-05-19 02:02:03.047	\N	\N
89	api::administration-user.administration-user.create	2022-05-19 02:02:03.047	2022-05-19 02:02:03.047	\N	\N
90	api::administration-user.administration-user.update	2022-05-19 02:02:03.047	2022-05-19 02:02:03.047	\N	\N
91	api::administration-user.administration-user.delete	2022-05-19 02:02:03.047	2022-05-19 02:02:03.047	\N	\N
\.


--
-- TOC entry 4882 (class 0 OID 5246294)
-- Dependencies: 268
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
2	1
1	1
7	2
6	2
4	2
8	2
12	2
14	2
13	2
15	2
16	2
18	2
17	2
22	2
19	2
20	2
21	2
24	2
25	2
28	2
27	2
29	2
26	2
30	2
31	2
32	2
33	2
35	2
37	2
36	2
23	2
38	2
39	2
40	2
41	2
34	2
42	2
43	2
47	2
46	2
44	2
45	2
48	2
50	2
49	2
51	2
52	2
53	2
54	2
55	2
57	2
59	2
61	2
60	2
56	2
58	2
62	2
63	2
66	2
65	2
67	2
64	2
68	2
69	2
72	2
73	2
70	2
71	2
74	2
75	2
77	2
76	2
79	2
80	2
81	2
78	2
82	2
83	2
85	2
84	2
86	2
87	2
88	2
89	2
90	2
91	2
\.


--
-- TOC entry 4846 (class 0 OID 5246117)
-- Dependencies: 232
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-04-21 07:18:26.285	2022-04-21 07:18:26.285	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-04-21 07:18:26.298	2022-05-19 02:02:13.584	\N	\N
\.


--
-- TOC entry 4848 (class 0 OID 5246128)
-- Dependencies: 234
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- TOC entry 4883 (class 0 OID 5246299)
-- Dependencies: 269
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.up_users_role_links (user_id, role_id) FROM stdin;
\.


--
-- TOC entry 4878 (class 0 OID 5246270)
-- Dependencies: 264
-- Data for Name: wawancaras; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.wawancaras (id, tanggal_wawancara, nilai_wawancara, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
8	2022-06-05	80	2022-06-02 10:23:39.411	2022-06-02 11:07:41.345	2022-06-02 10:23:39.409	\N	\N
9	2022-06-29	90	2022-06-02 14:10:47.321	2022-06-02 14:13:16.945	2022-06-02 14:10:47.32	\N	\N
\.


--
-- TOC entry 4906 (class 0 OID 12526987)
-- Dependencies: 292
-- Data for Name: wawancaras_pewawancara_links; Type: TABLE DATA; Schema: public; Owner: qtkyrxmefkeqow
--

COPY public.wawancaras_pewawancara_links (wawancara_id, penguji_id) FROM stdin;
8	8
9	8
\.


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 217
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 303, true);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 221
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 219
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 7, true);


--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 235
-- Name: administration_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.administration_users_id_seq', 1, false);


--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 237
-- Name: bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.bidangs_id_seq', 2, true);


--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 288
-- Name: bobot_nilai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.bobot_nilai_id_seq', 3, true);


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 239
-- Name: direktorats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.direktorats_id_seq', 4, true);


--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 241
-- Name: divisis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.divisis_id_seq', 5, true);


--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 225
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 243
-- Name: fit_propers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.fit_propers_id_seq', 42, true);


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 227
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 245
-- Name: jabatans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.jabatans_id_seq', 163, true);


--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 247
-- Name: key_competencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.key_competencies_id_seq', 12, true);


--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 249
-- Name: pegawais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.pegawais_id_seq', 7, true);


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 251
-- Name: pendidikans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.pendidikans_id_seq', 6, true);


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 253
-- Name: pengujis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.pengujis_id_seq', 26, true);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 255
-- Name: personal_endurances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.personal_endurances_id_seq', 9, true);


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 257
-- Name: proyeksi_jabatans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.proyeksi_jabatans_id_seq', 9, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 223
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 213
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 32, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 211
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 11, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 209
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 215
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 259
-- Name: sub_bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.sub_bidangs_id_seq', 1, true);


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 261
-- Name: units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.units_id_seq', 48, true);


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 229
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 91, true);


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 231
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 233
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 263
-- Name: wawancaras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qtkyrxmefkeqow
--

SELECT pg_catalog.setval('public.wawancaras_id_seq', 9, true);


--
-- TOC entry 4434 (class 2606 OID 5246049)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4442 (class 2606 OID 5246071)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4438 (class 2606 OID 5246060)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4470 (class 2606 OID 5246144)
-- Name: administration_users administration_users_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.administration_users
    ADD CONSTRAINT administration_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4474 (class 2606 OID 5246153)
-- Name: bidangs bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 4575 (class 2606 OID 8159704)
-- Name: bobot_nilai bobot_nilai_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bobot_nilai
    ADD CONSTRAINT bobot_nilai_pkey PRIMARY KEY (id);


--
-- TOC entry 4478 (class 2606 OID 5246162)
-- Name: direktorats direktorats_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 5246171)
-- Name: divisis divisis_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_pkey PRIMARY KEY (id);


--
-- TOC entry 4450 (class 2606 OID 5246093)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 4486 (class 2606 OID 5246182)
-- Name: fit_propers fit_propers_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_pkey PRIMARY KEY (id);


--
-- TOC entry 4454 (class 2606 OID 5246104)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 4490 (class 2606 OID 5246191)
-- Name: jabatans jabatans_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_pkey PRIMARY KEY (id);


--
-- TOC entry 4494 (class 2606 OID 5246200)
-- Name: key_competencies key_competencies_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies
    ADD CONSTRAINT key_competencies_pkey PRIMARY KEY (id);


--
-- TOC entry 4498 (class 2606 OID 5246211)
-- Name: pegawais pegawais_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_pkey PRIMARY KEY (id);


--
-- TOC entry 4502 (class 2606 OID 5246220)
-- Name: pendidikans pendidikans_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_pkey PRIMARY KEY (id);


--
-- TOC entry 4506 (class 2606 OID 5246229)
-- Name: pengujis pengujis_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_pkey PRIMARY KEY (id);


--
-- TOC entry 4510 (class 2606 OID 5246238)
-- Name: personal_endurances personal_endurances_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances
    ADD CONSTRAINT personal_endurances_pkey PRIMARY KEY (id);


--
-- TOC entry 4514 (class 2606 OID 5246247)
-- Name: proyeksi_jabatans proyeksi_jabatans_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans
    ADD CONSTRAINT proyeksi_jabatans_pkey PRIMARY KEY (id);


--
-- TOC entry 4446 (class 2606 OID 5246082)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 4429 (class 2606 OID 5246031)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 4427 (class 2606 OID 5246022)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 4425 (class 2606 OID 5246013)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4431 (class 2606 OID 5246040)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 4518 (class 2606 OID 5246256)
-- Name: sub_bidangs sub_bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 4522 (class 2606 OID 5246265)
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 5246113)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4462 (class 2606 OID 5246124)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4466 (class 2606 OID 5246135)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 4526 (class 2606 OID 5246275)
-- Name: wawancaras wawancaras_pkey; Type: CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_pkey PRIMARY KEY (id);


--
-- TOC entry 4432 (class 1259 OID 5246050)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 4528 (class 1259 OID 5246281)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 4529 (class 1259 OID 5246282)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 4435 (class 1259 OID 5246051)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 4440 (class 1259 OID 5246072)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 4443 (class 1259 OID 5246073)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 4436 (class 1259 OID 5246061)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 4530 (class 1259 OID 5246286)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 4531 (class 1259 OID 5246287)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 4439 (class 1259 OID 5246062)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 4468 (class 1259 OID 5246145)
-- Name: administration_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX administration_users_created_by_id_fk ON public.administration_users USING btree (created_by_id);


--
-- TOC entry 4471 (class 1259 OID 5246146)
-- Name: administration_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX administration_users_updated_by_id_fk ON public.administration_users USING btree (updated_by_id);


--
-- TOC entry 4472 (class 1259 OID 5246154)
-- Name: bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bidangs_created_by_id_fk ON public.bidangs USING btree (created_by_id);


--
-- TOC entry 4537 (class 1259 OID 5246312)
-- Name: bidangs_sub_bidangs_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bidangs_sub_bidangs_links_fk ON public.bidangs_sub_bidangs_links USING btree (bidang_id);


--
-- TOC entry 4538 (class 1259 OID 5246313)
-- Name: bidangs_sub_bidangs_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bidangs_sub_bidangs_links_inv_fk ON public.bidangs_sub_bidangs_links USING btree (sub_bidang_id);


--
-- TOC entry 4475 (class 1259 OID 5246155)
-- Name: bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bidangs_updated_by_id_fk ON public.bidangs USING btree (updated_by_id);


--
-- TOC entry 4573 (class 1259 OID 8159705)
-- Name: bobot_nilai_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bobot_nilai_created_by_id_fk ON public.bobot_nilai USING btree (created_by_id);


--
-- TOC entry 4576 (class 1259 OID 8159706)
-- Name: bobot_nilai_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX bobot_nilai_updated_by_id_fk ON public.bobot_nilai USING btree (updated_by_id);


--
-- TOC entry 4476 (class 1259 OID 5246163)
-- Name: direktorats_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX direktorats_created_by_id_fk ON public.direktorats USING btree (created_by_id);


--
-- TOC entry 4539 (class 1259 OID 5246317)
-- Name: direktorats_divises_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX direktorats_divises_links_fk ON public.direktorats_divises_links USING btree (direktorat_id);


--
-- TOC entry 4540 (class 1259 OID 5246318)
-- Name: direktorats_divises_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX direktorats_divises_links_inv_fk ON public.direktorats_divises_links USING btree (divisi_id);


--
-- TOC entry 4479 (class 1259 OID 5246164)
-- Name: direktorats_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX direktorats_updated_by_id_fk ON public.direktorats USING btree (updated_by_id);


--
-- TOC entry 4541 (class 1259 OID 5246322)
-- Name: divisis_bidangs_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX divisis_bidangs_links_fk ON public.divisis_bidangs_links USING btree (divisi_id);


--
-- TOC entry 4542 (class 1259 OID 5246323)
-- Name: divisis_bidangs_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX divisis_bidangs_links_inv_fk ON public.divisis_bidangs_links USING btree (bidang_id);


--
-- TOC entry 4480 (class 1259 OID 5246172)
-- Name: divisis_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX divisis_created_by_id_fk ON public.divisis USING btree (created_by_id);


--
-- TOC entry 4483 (class 1259 OID 5246173)
-- Name: divisis_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX divisis_updated_by_id_fk ON public.divisis USING btree (updated_by_id);


--
-- TOC entry 4448 (class 1259 OID 5246094)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 4532 (class 1259 OID 5246293)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 4451 (class 1259 OID 5246095)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 4484 (class 1259 OID 5246183)
-- Name: fit_propers_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_created_by_id_fk ON public.fit_propers USING btree (created_by_id);


--
-- TOC entry 4543 (class 1259 OID 5246327)
-- Name: fit_propers_id_peserta_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_id_peserta_links_fk ON public.fit_propers_id_peserta_links USING btree (fit_proper_id);


--
-- TOC entry 4544 (class 1259 OID 5246328)
-- Name: fit_propers_id_peserta_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_id_peserta_links_inv_fk ON public.fit_propers_id_peserta_links USING btree (pegawai_id);


--
-- TOC entry 4545 (class 1259 OID 5246332)
-- Name: fit_propers_id_wawancara_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_id_wawancara_links_fk ON public.fit_propers_id_wawancara_links USING btree (fit_proper_id);


--
-- TOC entry 4546 (class 1259 OID 5246333)
-- Name: fit_propers_id_wawancara_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_id_wawancara_links_inv_fk ON public.fit_propers_id_wawancara_links USING btree (wawancara_id);


--
-- TOC entry 4577 (class 1259 OID 12521066)
-- Name: fit_propers_pengujis_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_pengujis_links_fk ON public.fit_propers_pengujis_links USING btree (fit_proper_id);


--
-- TOC entry 4578 (class 1259 OID 12521067)
-- Name: fit_propers_pengujis_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_pengujis_links_inv_fk ON public.fit_propers_pengujis_links USING btree (penguji_id);


--
-- TOC entry 4487 (class 1259 OID 5246184)
-- Name: fit_propers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX fit_propers_updated_by_id_fk ON public.fit_propers USING btree (updated_by_id);


--
-- TOC entry 4452 (class 1259 OID 5246105)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 4455 (class 1259 OID 5246106)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 4488 (class 1259 OID 5246192)
-- Name: jabatans_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX jabatans_created_by_id_fk ON public.jabatans USING btree (created_by_id);


--
-- TOC entry 4491 (class 1259 OID 5246193)
-- Name: jabatans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX jabatans_updated_by_id_fk ON public.jabatans USING btree (updated_by_id);


--
-- TOC entry 4492 (class 1259 OID 5246201)
-- Name: key_competencies_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_created_by_id_fk ON public.key_competencies USING btree (created_by_id);


--
-- TOC entry 4547 (class 1259 OID 5246337)
-- Name: key_competencies_nilai_kc_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_nilai_kc_links_fk ON public.key_competencies_nilai_kc_links USING btree (key_competency_id);


--
-- TOC entry 4548 (class 1259 OID 5246338)
-- Name: key_competencies_nilai_kc_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_nilai_kc_links_inv_fk ON public.key_competencies_nilai_kc_links USING btree (fit_proper_id);


--
-- TOC entry 4549 (class 1259 OID 5246342)
-- Name: key_competencies_penguji_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_penguji_links_fk ON public.key_competencies_penguji_links USING btree (key_competency_id);


--
-- TOC entry 4550 (class 1259 OID 5246343)
-- Name: key_competencies_penguji_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_penguji_links_inv_fk ON public.key_competencies_penguji_links USING btree (penguji_id);


--
-- TOC entry 4495 (class 1259 OID 5246202)
-- Name: key_competencies_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX key_competencies_updated_by_id_fk ON public.key_competencies USING btree (updated_by_id);


--
-- TOC entry 4496 (class 1259 OID 5246212)
-- Name: pegawais_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_created_by_id_fk ON public.pegawais USING btree (created_by_id);


--
-- TOC entry 4557 (class 1259 OID 5246362)
-- Name: pegawais_id_user_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_id_user_links_fk ON public.pegawais_id_user_links USING btree (pegawai_id);


--
-- TOC entry 4558 (class 1259 OID 5246363)
-- Name: pegawais_id_user_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_id_user_links_inv_fk ON public.pegawais_id_user_links USING btree (administration_user_id);


--
-- TOC entry 4553 (class 1259 OID 5246352)
-- Name: pegawais_jabatan_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_jabatan_links_fk ON public.pegawais_jabatan_links USING btree (pegawai_id);


--
-- TOC entry 4554 (class 1259 OID 5246353)
-- Name: pegawais_jabatan_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_jabatan_links_inv_fk ON public.pegawais_jabatan_links USING btree (jabatan_id);


--
-- TOC entry 4551 (class 1259 OID 5246347)
-- Name: pegawais_pendidikan_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_pendidikan_links_fk ON public.pegawais_pendidikan_links USING btree (pegawai_id);


--
-- TOC entry 4552 (class 1259 OID 5246348)
-- Name: pegawais_pendidikan_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_pendidikan_links_inv_fk ON public.pegawais_pendidikan_links USING btree (pendidikan_id);


--
-- TOC entry 4555 (class 1259 OID 5246357)
-- Name: pegawais_unit_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_unit_links_fk ON public.pegawais_unit_links USING btree (pegawai_id);


--
-- TOC entry 4556 (class 1259 OID 5246358)
-- Name: pegawais_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_unit_links_inv_fk ON public.pegawais_unit_links USING btree (unit_id);


--
-- TOC entry 4499 (class 1259 OID 5246213)
-- Name: pegawais_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pegawais_updated_by_id_fk ON public.pegawais USING btree (updated_by_id);


--
-- TOC entry 4500 (class 1259 OID 5246221)
-- Name: pendidikans_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pendidikans_created_by_id_fk ON public.pendidikans USING btree (created_by_id);


--
-- TOC entry 4503 (class 1259 OID 5246222)
-- Name: pendidikans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pendidikans_updated_by_id_fk ON public.pendidikans USING btree (updated_by_id);


--
-- TOC entry 4504 (class 1259 OID 5246230)
-- Name: pengujis_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_created_by_id_fk ON public.pengujis USING btree (created_by_id);


--
-- TOC entry 4579 (class 1259 OID 12521071)
-- Name: pengujis_id_fit_propers_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_fit_propers_links_fk ON public.pengujis_id_fit_propers_links USING btree (penguji_id);


--
-- TOC entry 4580 (class 1259 OID 12521072)
-- Name: pengujis_id_fit_propers_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_fit_propers_links_inv_fk ON public.pengujis_id_fit_propers_links USING btree (fit_proper_id);


--
-- TOC entry 4561 (class 1259 OID 5246383)
-- Name: pengujis_id_pe_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_pe_links_fk ON public.pengujis_id_pe_links USING btree (penguji_id);


--
-- TOC entry 4562 (class 1259 OID 5246384)
-- Name: pengujis_id_pe_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_pe_links_inv_fk ON public.pengujis_id_pe_links USING btree (personal_endurance_id);


--
-- TOC entry 4559 (class 1259 OID 5246373)
-- Name: pengujis_id_penguji_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_penguji_links_fk ON public.pengujis_id_penguji_links USING btree (penguji_id);


--
-- TOC entry 4560 (class 1259 OID 5246374)
-- Name: pengujis_id_penguji_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_penguji_links_inv_fk ON public.pengujis_id_penguji_links USING btree (pegawai_id);


--
-- TOC entry 4563 (class 1259 OID 5246388)
-- Name: pengujis_id_pj_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_pj_links_fk ON public.pengujis_id_pj_links USING btree (penguji_id);


--
-- TOC entry 4564 (class 1259 OID 5246389)
-- Name: pengujis_id_pj_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_id_pj_links_inv_fk ON public.pengujis_id_pj_links USING btree (proyeksi_jabatan_id);


--
-- TOC entry 4507 (class 1259 OID 5246231)
-- Name: pengujis_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX pengujis_updated_by_id_fk ON public.pengujis USING btree (updated_by_id);


--
-- TOC entry 4508 (class 1259 OID 5246239)
-- Name: personal_endurances_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX personal_endurances_created_by_id_fk ON public.personal_endurances USING btree (created_by_id);


--
-- TOC entry 4565 (class 1259 OID 5246393)
-- Name: personal_endurances_nilai_pe_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX personal_endurances_nilai_pe_links_fk ON public.personal_endurances_nilai_pe_links USING btree (personal_endurance_id);


--
-- TOC entry 4566 (class 1259 OID 5246394)
-- Name: personal_endurances_nilai_pe_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX personal_endurances_nilai_pe_links_inv_fk ON public.personal_endurances_nilai_pe_links USING btree (fit_proper_id);


--
-- TOC entry 4511 (class 1259 OID 5246240)
-- Name: personal_endurances_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX personal_endurances_updated_by_id_fk ON public.personal_endurances USING btree (updated_by_id);


--
-- TOC entry 4512 (class 1259 OID 5246248)
-- Name: proyeksi_jabatans_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX proyeksi_jabatans_created_by_id_fk ON public.proyeksi_jabatans USING btree (created_by_id);


--
-- TOC entry 4567 (class 1259 OID 5246403)
-- Name: proyeksi_jabatans_nilai_pj_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX proyeksi_jabatans_nilai_pj_links_fk ON public.proyeksi_jabatans_nilai_pj_links USING btree (proyeksi_jabatan_id);


--
-- TOC entry 4568 (class 1259 OID 5246404)
-- Name: proyeksi_jabatans_nilai_pj_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX proyeksi_jabatans_nilai_pj_links_inv_fk ON public.proyeksi_jabatans_nilai_pj_links USING btree (fit_proper_id);


--
-- TOC entry 4515 (class 1259 OID 5246249)
-- Name: proyeksi_jabatans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX proyeksi_jabatans_updated_by_id_fk ON public.proyeksi_jabatans USING btree (updated_by_id);


--
-- TOC entry 4444 (class 1259 OID 5246083)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 4447 (class 1259 OID 5246084)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 4516 (class 1259 OID 5246257)
-- Name: sub_bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX sub_bidangs_created_by_id_fk ON public.sub_bidangs USING btree (created_by_id);


--
-- TOC entry 4519 (class 1259 OID 5246258)
-- Name: sub_bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX sub_bidangs_updated_by_id_fk ON public.sub_bidangs USING btree (updated_by_id);


--
-- TOC entry 4520 (class 1259 OID 5246267)
-- Name: units_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_created_by_id_fk ON public.units USING btree (created_by_id);


--
-- TOC entry 4571 (class 1259 OID 5246418)
-- Name: units_direktorats_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_direktorats_links_fk ON public.units_direktorats_links USING btree (unit_id);


--
-- TOC entry 4572 (class 1259 OID 5246419)
-- Name: units_direktorats_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_direktorats_links_inv_fk ON public.units_direktorats_links USING btree (direktorat_id);


--
-- TOC entry 4569 (class 1259 OID 5246413)
-- Name: units_jabatans_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_jabatans_links_fk ON public.units_jabatans_links USING btree (unit_id);


--
-- TOC entry 4570 (class 1259 OID 5246414)
-- Name: units_jabatans_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_jabatans_links_inv_fk ON public.units_jabatans_links USING btree (jabatan_id);


--
-- TOC entry 4523 (class 1259 OID 5246268)
-- Name: units_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX units_updated_by_id_fk ON public.units USING btree (updated_by_id);


--
-- TOC entry 4456 (class 1259 OID 5246114)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 4533 (class 1259 OID 5246297)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 4534 (class 1259 OID 5246298)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 4459 (class 1259 OID 5246115)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 4460 (class 1259 OID 5246125)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 4463 (class 1259 OID 5246126)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 4464 (class 1259 OID 5246136)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 4535 (class 1259 OID 5246302)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 4536 (class 1259 OID 5246303)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 4467 (class 1259 OID 5246137)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 4524 (class 1259 OID 5246276)
-- Name: wawancaras_created_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX wawancaras_created_by_id_fk ON public.wawancaras USING btree (created_by_id);


--
-- TOC entry 4581 (class 1259 OID 12526990)
-- Name: wawancaras_pewawancara_links_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX wawancaras_pewawancara_links_fk ON public.wawancaras_pewawancara_links USING btree (wawancara_id);


--
-- TOC entry 4582 (class 1259 OID 12526991)
-- Name: wawancaras_pewawancara_links_inv_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX wawancaras_pewawancara_links_inv_fk ON public.wawancaras_pewawancara_links USING btree (penguji_id);


--
-- TOC entry 4527 (class 1259 OID 5246277)
-- Name: wawancaras_updated_by_id_fk; Type: INDEX; Schema: public; Owner: qtkyrxmefkeqow
--

CREATE INDEX wawancaras_updated_by_id_fk ON public.wawancaras USING btree (updated_by_id);


--
-- TOC entry 4583 (class 2606 OID 5246425)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4631 (class 2606 OID 5246665)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4632 (class 2606 OID 5246670)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4584 (class 2606 OID 5246430)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4587 (class 2606 OID 5246445)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4588 (class 2606 OID 5246450)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4585 (class 2606 OID 5246435)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4633 (class 2606 OID 5246675)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 4634 (class 2606 OID 5246680)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4586 (class 2606 OID 5246440)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4601 (class 2606 OID 5246515)
-- Name: administration_users administration_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.administration_users
    ADD CONSTRAINT administration_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4602 (class 2606 OID 5246520)
-- Name: administration_users administration_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.administration_users
    ADD CONSTRAINT administration_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4603 (class 2606 OID 5246525)
-- Name: bidangs bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4640 (class 2606 OID 5246720)
-- Name: bidangs_sub_bidangs_links bidangs_sub_bidangs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs_sub_bidangs_links
    ADD CONSTRAINT bidangs_sub_bidangs_links_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4641 (class 2606 OID 5246725)
-- Name: bidangs_sub_bidangs_links bidangs_sub_bidangs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs_sub_bidangs_links
    ADD CONSTRAINT bidangs_sub_bidangs_links_inv_fk FOREIGN KEY (sub_bidang_id) REFERENCES public.sub_bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4604 (class 2606 OID 5246530)
-- Name: bidangs bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4676 (class 2606 OID 8159707)
-- Name: bobot_nilai bobot_nilai_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bobot_nilai
    ADD CONSTRAINT bobot_nilai_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4677 (class 2606 OID 8159712)
-- Name: bobot_nilai bobot_nilai_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.bobot_nilai
    ADD CONSTRAINT bobot_nilai_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4605 (class 2606 OID 5246535)
-- Name: direktorats direktorats_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4642 (class 2606 OID 5246730)
-- Name: direktorats_divises_links direktorats_divises_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats_divises_links
    ADD CONSTRAINT direktorats_divises_links_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 4643 (class 2606 OID 5246735)
-- Name: direktorats_divises_links direktorats_divises_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats_divises_links
    ADD CONSTRAINT direktorats_divises_links_inv_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 4606 (class 2606 OID 5246540)
-- Name: direktorats direktorats_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4644 (class 2606 OID 5246740)
-- Name: divisis_bidangs_links divisis_bidangs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis_bidangs_links
    ADD CONSTRAINT divisis_bidangs_links_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 4645 (class 2606 OID 5246745)
-- Name: divisis_bidangs_links divisis_bidangs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis_bidangs_links
    ADD CONSTRAINT divisis_bidangs_links_inv_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 4607 (class 2606 OID 5246545)
-- Name: divisis divisis_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4608 (class 2606 OID 5246550)
-- Name: divisis divisis_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4591 (class 2606 OID 5246465)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4635 (class 2606 OID 5246685)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 4592 (class 2606 OID 5246470)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4609 (class 2606 OID 5246555)
-- Name: fit_propers fit_propers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4646 (class 2606 OID 5246750)
-- Name: fit_propers_id_peserta_links fit_propers_id_peserta_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_id_peserta_links
    ADD CONSTRAINT fit_propers_id_peserta_links_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4647 (class 2606 OID 5246755)
-- Name: fit_propers_id_peserta_links fit_propers_id_peserta_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_id_peserta_links
    ADD CONSTRAINT fit_propers_id_peserta_links_inv_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4648 (class 2606 OID 5246760)
-- Name: fit_propers_id_wawancara_links fit_propers_id_wawancara_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_id_wawancara_links
    ADD CONSTRAINT fit_propers_id_wawancara_links_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4649 (class 2606 OID 5246765)
-- Name: fit_propers_id_wawancara_links fit_propers_id_wawancara_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_id_wawancara_links
    ADD CONSTRAINT fit_propers_id_wawancara_links_inv_fk FOREIGN KEY (wawancara_id) REFERENCES public.wawancaras(id) ON DELETE CASCADE;


--
-- TOC entry 4678 (class 2606 OID 12521073)
-- Name: fit_propers_pengujis_links fit_propers_pengujis_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_pengujis_links
    ADD CONSTRAINT fit_propers_pengujis_links_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4679 (class 2606 OID 12521078)
-- Name: fit_propers_pengujis_links fit_propers_pengujis_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers_pengujis_links
    ADD CONSTRAINT fit_propers_pengujis_links_inv_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4610 (class 2606 OID 5246560)
-- Name: fit_propers fit_propers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4593 (class 2606 OID 5246475)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4594 (class 2606 OID 5246480)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4611 (class 2606 OID 5246565)
-- Name: jabatans jabatans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4612 (class 2606 OID 5246570)
-- Name: jabatans jabatans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4613 (class 2606 OID 5246575)
-- Name: key_competencies key_competencies_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies
    ADD CONSTRAINT key_competencies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4650 (class 2606 OID 5246770)
-- Name: key_competencies_nilai_kc_links key_competencies_nilai_kc_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies_nilai_kc_links
    ADD CONSTRAINT key_competencies_nilai_kc_links_fk FOREIGN KEY (key_competency_id) REFERENCES public.key_competencies(id) ON DELETE CASCADE;


--
-- TOC entry 4651 (class 2606 OID 5246775)
-- Name: key_competencies_nilai_kc_links key_competencies_nilai_kc_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies_nilai_kc_links
    ADD CONSTRAINT key_competencies_nilai_kc_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4652 (class 2606 OID 5246780)
-- Name: key_competencies_penguji_links key_competencies_penguji_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies_penguji_links
    ADD CONSTRAINT key_competencies_penguji_links_fk FOREIGN KEY (key_competency_id) REFERENCES public.key_competencies(id) ON DELETE CASCADE;


--
-- TOC entry 4653 (class 2606 OID 5246785)
-- Name: key_competencies_penguji_links key_competencies_penguji_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies_penguji_links
    ADD CONSTRAINT key_competencies_penguji_links_inv_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4614 (class 2606 OID 5246580)
-- Name: key_competencies key_competencies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.key_competencies
    ADD CONSTRAINT key_competencies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4615 (class 2606 OID 5246585)
-- Name: pegawais pegawais_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4660 (class 2606 OID 5246820)
-- Name: pegawais_id_user_links pegawais_id_user_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_id_user_links
    ADD CONSTRAINT pegawais_id_user_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 5246825)
-- Name: pegawais_id_user_links pegawais_id_user_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_id_user_links
    ADD CONSTRAINT pegawais_id_user_links_inv_fk FOREIGN KEY (administration_user_id) REFERENCES public.administration_users(id) ON DELETE CASCADE;


--
-- TOC entry 4656 (class 2606 OID 5246800)
-- Name: pegawais_jabatan_links pegawais_jabatan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_jabatan_links
    ADD CONSTRAINT pegawais_jabatan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4657 (class 2606 OID 5246805)
-- Name: pegawais_jabatan_links pegawais_jabatan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_jabatan_links
    ADD CONSTRAINT pegawais_jabatan_links_inv_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4654 (class 2606 OID 5246790)
-- Name: pegawais_pendidikan_links pegawais_pendidikan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_pendidikan_links
    ADD CONSTRAINT pegawais_pendidikan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4655 (class 2606 OID 5246795)
-- Name: pegawais_pendidikan_links pegawais_pendidikan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_pendidikan_links
    ADD CONSTRAINT pegawais_pendidikan_links_inv_fk FOREIGN KEY (pendidikan_id) REFERENCES public.pendidikans(id) ON DELETE CASCADE;


--
-- TOC entry 4658 (class 2606 OID 5246810)
-- Name: pegawais_unit_links pegawais_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_unit_links
    ADD CONSTRAINT pegawais_unit_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4659 (class 2606 OID 5246815)
-- Name: pegawais_unit_links pegawais_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais_unit_links
    ADD CONSTRAINT pegawais_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 4616 (class 2606 OID 5246590)
-- Name: pegawais pegawais_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4617 (class 2606 OID 5246595)
-- Name: pendidikans pendidikans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4618 (class 2606 OID 5246600)
-- Name: pendidikans pendidikans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pendidikans
    ADD CONSTRAINT pendidikans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4619 (class 2606 OID 5246605)
-- Name: pengujis pengujis_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4680 (class 2606 OID 12521083)
-- Name: pengujis_id_fit_propers_links pengujis_id_fit_propers_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_fit_propers_links
    ADD CONSTRAINT pengujis_id_fit_propers_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4681 (class 2606 OID 12521088)
-- Name: pengujis_id_fit_propers_links pengujis_id_fit_propers_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_fit_propers_links
    ADD CONSTRAINT pengujis_id_fit_propers_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4664 (class 2606 OID 5246860)
-- Name: pengujis_id_pe_links pengujis_id_pe_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_pe_links
    ADD CONSTRAINT pengujis_id_pe_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4665 (class 2606 OID 5246865)
-- Name: pengujis_id_pe_links pengujis_id_pe_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_pe_links
    ADD CONSTRAINT pengujis_id_pe_links_inv_fk FOREIGN KEY (personal_endurance_id) REFERENCES public.personal_endurances(id) ON DELETE CASCADE;


--
-- TOC entry 4662 (class 2606 OID 5246840)
-- Name: pengujis_id_penguji_links pengujis_id_penguji_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_penguji_links
    ADD CONSTRAINT pengujis_id_penguji_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4663 (class 2606 OID 5246845)
-- Name: pengujis_id_penguji_links pengujis_id_penguji_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_penguji_links
    ADD CONSTRAINT pengujis_id_penguji_links_inv_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 4666 (class 2606 OID 5246870)
-- Name: pengujis_id_pj_links pengujis_id_pj_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_pj_links
    ADD CONSTRAINT pengujis_id_pj_links_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4667 (class 2606 OID 5246875)
-- Name: pengujis_id_pj_links pengujis_id_pj_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis_id_pj_links
    ADD CONSTRAINT pengujis_id_pj_links_inv_fk FOREIGN KEY (proyeksi_jabatan_id) REFERENCES public.proyeksi_jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4620 (class 2606 OID 5246610)
-- Name: pengujis pengujis_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.pengujis
    ADD CONSTRAINT pengujis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4621 (class 2606 OID 5246615)
-- Name: personal_endurances personal_endurances_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances
    ADD CONSTRAINT personal_endurances_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4668 (class 2606 OID 5246880)
-- Name: personal_endurances_nilai_pe_links personal_endurances_nilai_pe_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances_nilai_pe_links
    ADD CONSTRAINT personal_endurances_nilai_pe_links_fk FOREIGN KEY (personal_endurance_id) REFERENCES public.personal_endurances(id) ON DELETE CASCADE;


--
-- TOC entry 4669 (class 2606 OID 5246885)
-- Name: personal_endurances_nilai_pe_links personal_endurances_nilai_pe_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances_nilai_pe_links
    ADD CONSTRAINT personal_endurances_nilai_pe_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4622 (class 2606 OID 5246620)
-- Name: personal_endurances personal_endurances_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.personal_endurances
    ADD CONSTRAINT personal_endurances_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4623 (class 2606 OID 5246625)
-- Name: proyeksi_jabatans proyeksi_jabatans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans
    ADD CONSTRAINT proyeksi_jabatans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4670 (class 2606 OID 5246900)
-- Name: proyeksi_jabatans_nilai_pj_links proyeksi_jabatans_nilai_pj_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans_nilai_pj_links
    ADD CONSTRAINT proyeksi_jabatans_nilai_pj_links_fk FOREIGN KEY (proyeksi_jabatan_id) REFERENCES public.proyeksi_jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4671 (class 2606 OID 5246905)
-- Name: proyeksi_jabatans_nilai_pj_links proyeksi_jabatans_nilai_pj_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans_nilai_pj_links
    ADD CONSTRAINT proyeksi_jabatans_nilai_pj_links_inv_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 4624 (class 2606 OID 5246630)
-- Name: proyeksi_jabatans proyeksi_jabatans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.proyeksi_jabatans
    ADD CONSTRAINT proyeksi_jabatans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4589 (class 2606 OID 5246455)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4590 (class 2606 OID 5246460)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4625 (class 2606 OID 5246635)
-- Name: sub_bidangs sub_bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4626 (class 2606 OID 5246640)
-- Name: sub_bidangs sub_bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4627 (class 2606 OID 5246645)
-- Name: units units_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4674 (class 2606 OID 5246930)
-- Name: units_direktorats_links units_direktorats_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units_direktorats_links
    ADD CONSTRAINT units_direktorats_links_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 4675 (class 2606 OID 5246935)
-- Name: units_direktorats_links units_direktorats_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units_direktorats_links
    ADD CONSTRAINT units_direktorats_links_inv_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 4672 (class 2606 OID 5246920)
-- Name: units_jabatans_links units_jabatans_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units_jabatans_links
    ADD CONSTRAINT units_jabatans_links_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 4673 (class 2606 OID 5246925)
-- Name: units_jabatans_links units_jabatans_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units_jabatans_links
    ADD CONSTRAINT units_jabatans_links_inv_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 4628 (class 2606 OID 5246650)
-- Name: units units_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4595 (class 2606 OID 5246485)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4636 (class 2606 OID 5246690)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 4637 (class 2606 OID 5246695)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4596 (class 2606 OID 5246490)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4597 (class 2606 OID 5246495)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4598 (class 2606 OID 5246500)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4599 (class 2606 OID 5246505)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4638 (class 2606 OID 5246700)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 4639 (class 2606 OID 5246705)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 4600 (class 2606 OID 5246510)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4629 (class 2606 OID 5246655)
-- Name: wawancaras wawancaras_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4682 (class 2606 OID 12526992)
-- Name: wawancaras_pewawancara_links wawancaras_pewawancara_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras_pewawancara_links
    ADD CONSTRAINT wawancaras_pewawancara_links_fk FOREIGN KEY (wawancara_id) REFERENCES public.wawancaras(id) ON DELETE CASCADE;


--
-- TOC entry 4683 (class 2606 OID 12526997)
-- Name: wawancaras_pewawancara_links wawancaras_pewawancara_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras_pewawancara_links
    ADD CONSTRAINT wawancaras_pewawancara_links_inv_fk FOREIGN KEY (penguji_id) REFERENCES public.pengujis(id) ON DELETE CASCADE;


--
-- TOC entry 4630 (class 2606 OID 5246660)
-- Name: wawancaras wawancaras_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: qtkyrxmefkeqow
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: qtkyrxmefkeqow
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO qtkyrxmefkeqow;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 1070
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO qtkyrxmefkeqow;


-- Completed on 2022-06-02 23:21:58

--
-- PostgreSQL database dump complete
--

