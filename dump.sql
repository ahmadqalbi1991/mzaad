--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: admin_designation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_designation (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    is_deletd integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.admin_designation OWNER TO postgres;

--
-- Name: admin_designation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_designation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_designation_id_seq OWNER TO postgres;

--
-- Name: admin_designation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_designation_id_seq OWNED BY admin_designation.id;


--
-- Name: amount_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE amount_type (
    id bigint NOT NULL,
    name character varying(600) NOT NULL
);


ALTER TABLE public.amount_type OWNER TO postgres;

--
-- Name: amount_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE amount_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amount_type_id_seq OWNER TO postgres;

--
-- Name: amount_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE amount_type_id_seq OWNED BY amount_type.id;


--
-- Name: app_banners; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_banners (
    id bigint NOT NULL,
    banner_title character varying(600),
    banner_image character varying(600),
    active integer DEFAULT 1,
    created_by integer DEFAULT 0,
    updated_by integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.app_banners OWNER TO postgres;

--
-- Name: app_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_banners_id_seq OWNER TO postgres;

--
-- Name: app_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_banners_id_seq OWNED BY app_banners.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE articles (
    id bigint NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    status integer DEFAULT 1 NOT NULL,
    desc_en text,
    desc_ar text,
    meta_title text,
    meta_keyword text,
    meta_description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: attribute_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute_type (
    id bigint NOT NULL,
    attribute_type_name character varying(255) NOT NULL,
    attribute_type_uid character varying(50) NOT NULL,
    attribute_type_status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.attribute_type OWNER TO postgres;

--
-- Name: attribute_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE attribute_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_type_id_seq OWNER TO postgres;

--
-- Name: attribute_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attribute_type_id_seq OWNED BY attribute_type.id;


--
-- Name: attribute_values; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attribute_values (
    id bigint NOT NULL,
    attribute_id integer NOT NULL,
    attribute_values character varying(255) NOT NULL,
    attribute_value_in integer DEFAULT 1 NOT NULL,
    attribute_value_color character varying(30),
    deleted integer DEFAULT 0 NOT NULL,
    created_uid integer NOT NULL,
    updated_uid integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.attribute_values OWNER TO postgres;

--
-- Name: attribute_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE attribute_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_values_id_seq OWNER TO postgres;

--
-- Name: attribute_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attribute_values_id_seq OWNED BY attribute_values.id;


--
-- Name: attribute_values_request; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE attribute_values_request (
    id bigint NOT NULL,
    request_id integer DEFAULT 0 NOT NULL,
    attribute character varying(600) NOT NULL,
    value character varying(1600) NOT NULL
);


ALTER TABLE public.attribute_values_request OWNER TO postgresuser;

--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE attribute_values_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_values_request_id_seq OWNER TO postgresuser;

--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE attribute_values_request_id_seq OWNED BY attribute_values_request.id;


--
-- Name: attributes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attributes (
    id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    active integer DEFAULT 1 NOT NULL,
    attribute_type integer NOT NULL,
    industry_type integer NOT NULL,
    company_id integer DEFAULT 0 NOT NULL,
    store_id integer DEFAULT 0 NOT NULL,
    is_common integer DEFAULT 1 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_uid integer NOT NULL,
    updated_uid integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.attributes OWNER TO postgres;

--
-- Name: attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attributes_id_seq OWNER TO postgres;

--
-- Name: attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attributes_id_seq OWNED BY attributes.id;


--
-- Name: bank; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bank (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.bank OWNER TO postgres;

--
-- Name: bank_code_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bank_code_types (
    id bigint NOT NULL,
    name character varying(500),
    country_id integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.bank_code_types OWNER TO postgres;

--
-- Name: bank_code_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bank_code_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_code_types_id_seq OWNER TO postgres;

--
-- Name: bank_code_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bank_code_types_id_seq OWNED BY bank_code_types.id;


--
-- Name: bank_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bank_details (
    id bigint NOT NULL,
    bank_name character varying(600),
    company_account character varying(600),
    code_type integer DEFAULT 0 NOT NULL,
    account_no character varying(600),
    branch_code character varying(300),
    branch_name character varying(300),
    bank_statement_doc character varying(600),
    credit_card_sta_doc character varying(600),
    country integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    iban character varying(600)
);


ALTER TABLE public.bank_details OWNER TO postgres;

--
-- Name: bank_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bank_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_details_id_seq OWNER TO postgres;

--
-- Name: bank_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bank_details_id_seq OWNED BY bank_details.id;


--
-- Name: bank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_id_seq OWNER TO postgres;

--
-- Name: bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bank_id_seq OWNED BY bank.id;


--
-- Name: blog; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog (
    id integer NOT NULL,
    title character varying(500),
    description text,
    image text,
    created_by integer,
    created_on time without time zone,
    updated_by integer,
    updated_on time without time zone,
    active integer DEFAULT 1
);


ALTER TABLE public.blog OWNER TO postgres;

--
-- Name: blog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_id_seq OWNER TO postgres;

--
-- Name: blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_id_seq OWNED BY blog.id;


--
-- Name: brand; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE brand (
    id bigint NOT NULL,
    name character varying(600),
    industry_type integer DEFAULT 0 NOT NULL,
    image character varying(600),
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.brand OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_id_seq OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE brand_id_seq OWNED BY brand.id;


--
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cart (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    product_attribute_id integer NOT NULL,
    quantity integer NOT NULL,
    user_id integer NOT NULL,
    store_id integer NOT NULL,
    device_cart_id character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_id_seq OWNER TO postgres;

--
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cart_id_seq OWNED BY cart.id;


--
-- Name: cart_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cart_service (
    id bigint NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    device_cart_id character varying(600),
    booked_time character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cart_service OWNER TO postgres;

--
-- Name: cart_service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cart_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_service_id_seq OWNER TO postgres;

--
-- Name: cart_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cart_service_id_seq OWNED BY cart_service.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(1500),
    banner_image character varying(1500),
    parent_id integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 1 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_uid integer NOT NULL,
    updated_uid integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE category_id_seq OWNED BY category.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cities (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    active smallint DEFAULT 1::smallint NOT NULL,
    country_id integer NOT NULL,
    state_id integer NOT NULL,
    created_uid bigint,
    updated_uid bigint,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cities_id_seq OWNED BY cities.id;


--
-- Name: comment_likes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comment_likes (
    id bigint NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.comment_likes OWNER TO postgres;

--
-- Name: comment_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comment_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_likes_id_seq OWNER TO postgres;

--
-- Name: comment_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comment_likes_id_seq OWNED BY comment_likes.id;


--
-- Name: comment_taged_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comment_taged_users (
    id bigint NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.comment_taged_users OWNER TO postgres;

--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comment_taged_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_taged_users_id_seq OWNER TO postgres;

--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comment_taged_users_id_seq OWNED BY comment_taged_users.id;


--
-- Name: common_faq; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE common_faq (
    cf_id integer NOT NULL,
    head_title character varying,
    title character varying,
    description1 text,
    description2 text,
    created_date_time timestamp without time zone
);


ALTER TABLE public.common_faq OWNER TO postgres;

--
-- Name: common_faq_cf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE common_faq_cf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.common_faq_cf_id_seq OWNER TO postgres;

--
-- Name: common_faq_cf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE common_faq_cf_id_seq OWNED BY common_faq.cf_id;


--
-- Name: contact_us; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_us (
    id bigint NOT NULL,
    name character varying(600),
    email character varying(600),
    dial_code character varying(600),
    mobile_number character varying(600),
    message text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.contact_us OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_id_seq OWNER TO postgres;

--
-- Name: contact_us_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contact_us_id_seq OWNED BY contact_us.id;


--
-- Name: contact_us_settings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_us_settings (
    id bigint NOT NULL,
    title_en character varying(300),
    title_ar character varying(300),
    email character varying(300),
    mobile character varying(50),
    desc_en text,
    desc_ar text,
    location text,
    latitude text,
    longitude text,
    twitter character varying(600),
    instagram character varying(600),
    facebook character varying(600),
    youtube character varying(600),
    linkedin character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.contact_us_settings OWNER TO postgres;

--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_us_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_settings_id_seq OWNER TO postgres;

--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contact_us_settings_id_seq OWNED BY contact_us_settings.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE country (
    id bigint NOT NULL,
    name character varying(1500) NOT NULL,
    prefix character varying(20) NOT NULL,
    dial_code character varying(100) NOT NULL,
    active character varying(255) DEFAULT '1'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted smallint DEFAULT 0::smallint NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE country_id_seq OWNED BY country.id;


--
-- Name: coupon; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE coupon (
    id bigint NOT NULL,
    coupon_title character varying(600),
    coupon_description text,
    coupon_end_date timestamp(0) without time zone,
    coupon_amount double precision,
    coupon_minimum_spend double precision,
    coupon_max_spend double precision,
    coupon_usage_percoupon double precision,
    coupon_usage_perx double precision,
    coupon_usage_peruser double precision,
    coupon_vender_id integer DEFAULT 0 NOT NULL,
    coupon_status integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    coupon_code character varying(100),
    amount_type integer DEFAULT 0 NOT NULL,
    start_date character varying(600),
    applied_to integer DEFAULT 0 NOT NULL,
    minimum_amount double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.coupon OWNER TO postgres;

--
-- Name: coupon_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE coupon_category (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_category OWNER TO postgres;

--
-- Name: coupon_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE coupon_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_category_id_seq OWNER TO postgres;

--
-- Name: coupon_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE coupon_category_id_seq OWNED BY coupon_category.id;


--
-- Name: coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_id_seq OWNER TO postgres;

--
-- Name: coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE coupon_id_seq OWNED BY coupon.id;


--
-- Name: coupon_products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE coupon_products (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_products OWNER TO postgres;

--
-- Name: coupon_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE coupon_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_products_id_seq OWNER TO postgres;

--
-- Name: coupon_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE coupon_products_id_seq OWNED BY coupon_products.id;


--
-- Name: coupon_services; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE coupon_services (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_services OWNER TO postgresuser;

--
-- Name: coupon_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE coupon_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_services_id_seq OWNER TO postgresuser;

--
-- Name: coupon_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE coupon_services_id_seq OWNED BY coupon_services.id;


--
-- Name: designations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE designations (
    id bigint NOT NULL,
    user_id bigint,
    user_type integer DEFAULT 0 NOT NULL,
    designation character varying(255) NOT NULL,
    status smallint DEFAULT 1::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.designations OWNER TO postgres;

--
-- Name: designations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE designations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designations_id_seq OWNER TO postgres;

--
-- Name: designations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE designations_id_seq OWNED BY designations.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE failed_jobs_id_seq OWNED BY failed_jobs.id;


--
-- Name: faq; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE faq (
    id bigint NOT NULL,
    title character varying(600),
    description text,
    created_by integer DEFAULT 0 NOT NULL,
    updated_by integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.faq OWNER TO postgres;

--
-- Name: faq_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE faq_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_id_seq OWNER TO postgres;

--
-- Name: faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE faq_id_seq OWNED BY faq.id;


--
-- Name: featured_products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE featured_products (
    id bigint NOT NULL,
    master_product integer DEFAULT 0 NOT NULL,
    description character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.featured_products OWNER TO postgres;

--
-- Name: featured_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE featured_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.featured_products_id_seq OWNER TO postgres;

--
-- Name: featured_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE featured_products_id_seq OWNED BY featured_products.id;


--
-- Name: featured_products_img; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE featured_products_img (
    id bigint NOT NULL,
    featured_product_id integer DEFAULT 0 NOT NULL,
    image character varying(600) NOT NULL
);


ALTER TABLE public.featured_products_img OWNER TO postgres;

--
-- Name: featured_products_img_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE featured_products_img_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.featured_products_img_id_seq OWNER TO postgres;

--
-- Name: featured_products_img_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE featured_products_img_id_seq OWNED BY featured_products_img.id;


--
-- Name: hair_colors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE hair_colors (
    id bigint NOT NULL,
    name character varying(255),
    color character varying(30) NOT NULL,
    active smallint DEFAULT 1::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.hair_colors OWNER TO postgres;

--
-- Name: hair_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hair_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hair_colors_id_seq OWNER TO postgres;

--
-- Name: hair_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE hair_colors_id_seq OWNED BY hair_colors.id;


--
-- Name: help; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE help (
    id bigint NOT NULL,
    title character varying(600),
    description text,
    created_by integer DEFAULT 0 NOT NULL,
    updated_by integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.help OWNER TO postgres;

--
-- Name: help_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE help_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_id_seq OWNER TO postgres;

--
-- Name: help_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE help_id_seq OWNED BY help.id;


--
-- Name: industry_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE industry_types (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    active integer DEFAULT 1 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_uid integer NOT NULL,
    updated_uid integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.industry_types OWNER TO postgres;

--
-- Name: industry_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE industry_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.industry_types_id_seq OWNER TO postgres;

--
-- Name: industry_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE industry_types_id_seq OWNED BY industry_types.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE likes (
    id bigint NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    vendor_id integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO postgres;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE likes_id_seq OWNED BY likes.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- Name: moda_main_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE moda_main_categories (
    id bigint NOT NULL,
    name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.moda_main_categories OWNER TO postgres;

--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE moda_main_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moda_main_categories_id_seq OWNER TO postgres;

--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE moda_main_categories_id_seq OWNED BY moda_main_categories.id;


--
-- Name: moda_sub_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE moda_sub_categories (
    id bigint NOT NULL,
    main_category integer NOT NULL,
    name character varying(255),
    gender integer NOT NULL,
    image character varying(900),
    active smallint DEFAULT 1::smallint NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.moda_sub_categories OWNER TO postgres;

--
-- Name: COLUMN moda_sub_categories.gender; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN moda_sub_categories.gender IS '1.Male,2.female';


--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE moda_sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moda_sub_categories_id_seq OWNER TO postgres;

--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE moda_sub_categories_id_seq OWNED BY moda_sub_categories.id;


--
-- Name: my_moda; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE my_moda (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.my_moda OWNER TO postgres;

--
-- Name: my_moda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE my_moda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_moda_id_seq OWNER TO postgres;

--
-- Name: my_moda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE my_moda_id_seq OWNED BY my_moda.id;


--
-- Name: my_moda_items; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE my_moda_items (
    id bigint NOT NULL,
    my_moda_id integer NOT NULL,
    product_id integer NOT NULL,
    product_attribute_id integer NOT NULL,
    moda_sub_category integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.my_moda_items OWNER TO postgres;

--
-- Name: my_moda_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE my_moda_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_moda_items_id_seq OWNER TO postgres;

--
-- Name: my_moda_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE my_moda_items_id_seq OWNED BY my_moda_items.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE notifications (
    id bigint NOT NULL,
    description character varying(600),
    title character varying(600),
    image character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE notifications_id_seq OWNED BY notifications.id;


--
-- Name: order_products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE order_products (
    id bigint NOT NULL,
    order_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    product_type integer DEFAULT 0 NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    price double precision,
    discount double precision,
    total double precision,
    vendor_id integer DEFAULT 0 NOT NULL,
    order_status integer DEFAULT 0 NOT NULL,
    admin_commission double precision,
    vendor_commission double precision,
    shipping_charge double precision
);


ALTER TABLE public.order_products OWNER TO postgres;

--
-- Name: order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_products_id_seq OWNER TO postgres;

--
-- Name: order_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_products_id_seq OWNED BY order_products.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orders (
    order_id bigint NOT NULL,
    invoice_id character varying(100),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision DEFAULT 0::double precision,
    vat double precision DEFAULT 0::double precision,
    discount double precision DEFAULT 0::double precision,
    grand_total double precision DEFAULT 0::double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    booking_date timestamp(0) without time zone,
    total_qty integer DEFAULT 0 NOT NULL,
    total_items_qty integer DEFAULT 0 NOT NULL,
    oder_type integer DEFAULT 0 NOT NULL,
    admin_commission double precision DEFAULT 0::double precision,
    vendor_commission double precision DEFAULT 0::double precision,
    shipping_charge double precision DEFAULT 0::double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orders_order_id_seq OWNED BY orders.order_id;


--
-- Name: orders_services; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE orders_services (
    order_id bigint NOT NULL,
    invoice_id character varying(600),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision,
    vat double precision,
    discount double precision,
    grand_total double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    booking_date character varying(600),
    admin_commission double precision,
    vendor_commission double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders_services OWNER TO postgresuser;

--
-- Name: orders_services_items; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE orders_services_items (
    id bigint NOT NULL,
    order_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    price double precision,
    discount double precision,
    total double precision,
    order_status double precision,
    admin_commission double precision,
    vendor_commission double precision,
    booking_date character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders_services_items OWNER TO postgresuser;

--
-- Name: orders_services_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE orders_services_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_services_items_id_seq OWNER TO postgresuser;

--
-- Name: orders_services_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE orders_services_items_id_seq OWNED BY orders_services_items.id;


--
-- Name: orders_services_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE orders_services_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_services_order_id_seq OWNER TO postgresuser;

--
-- Name: orders_services_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE orders_services_order_id_seq OWNED BY orders_services.order_id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: payment_report; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE payment_report (
    id bigint NOT NULL,
    transaction_id character varying(255),
    payment_status character varying(255),
    user_id integer DEFAULT 0 NOT NULL,
    ref_id character varying(255),
    amount numeric(8,2) NOT NULL,
    method_type integer DEFAULT 1 NOT NULL,
    vat numeric(8,2) DEFAULT 0::numeric NOT NULL,
    wallet_amount_used numeric(8,2) DEFAULT 0::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.payment_report OWNER TO postgres;

--
-- Name: payment_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE payment_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_report_id_seq OWNER TO postgres;

--
-- Name: payment_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE payment_report_id_seq OWNED BY payment_report.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE personal_access_tokens_id_seq OWNED BY personal_access_tokens.id;


--
-- Name: post_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_comments (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    comment text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    comment_node_id text
);


ALTER TABLE public.post_comments OWNER TO postgres;

--
-- Name: post_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_comments_id_seq OWNER TO postgres;

--
-- Name: post_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_comments_id_seq OWNED BY post_comments.id;


--
-- Name: post_likes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_likes (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.post_likes OWNER TO postgres;

--
-- Name: post_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_likes_id_seq OWNER TO postgres;

--
-- Name: post_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_likes_id_seq OWNED BY post_likes.id;


--
-- Name: post_saves; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_saves (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.post_saves OWNER TO postgres;

--
-- Name: post_saves_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_saves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_saves_id_seq OWNER TO postgres;

--
-- Name: post_saves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_saves_id_seq OWNED BY post_saves.id;


--
-- Name: post_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post_users (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.post_users OWNER TO postgres;

--
-- Name: post_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE post_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_users_id_seq OWNER TO postgres;

--
-- Name: post_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE post_users_id_seq OWNED BY post_users.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE posts (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    caption character varying(2500),
    file_type integer DEFAULT 1 NOT NULL,
    file text,
    location_name text,
    lattitude character varying(250),
    longitude character varying(250),
    post_firebase_node_id character varying(250),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    active integer DEFAULT 1 NOT NULL,
    visibility character varying(20) DEFAULT 'public'::character varying NOT NULL,
    extra_file_names text
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product (
    id bigint NOT NULL,
    product_type integer DEFAULT 0 NOT NULL,
    product_desc_full text,
    product_desc_short text,
    product_sale_from character varying(200),
    product_sale_to character varying(200),
    product_featured_image character varying(600),
    product_tag character varying(600),
    product_created_by integer DEFAULT 0 NOT NULL,
    product_updated_by integer DEFAULT 0 NOT NULL,
    product_status integer DEFAULT 0 NOT NULL,
    product_deleted integer DEFAULT 0 NOT NULL,
    product_name character varying(900),
    product_variation_type integer DEFAULT 0 NOT NULL,
    product_taxable integer DEFAULT 1 NOT NULL,
    product_vender_id integer DEFAULT 0 NOT NULL,
    product_image character varying(200),
    product_unique_iden character varying(200),
    product_brand_id integer DEFAULT 0 NOT NULL,
    product_name_arabic character varying(900),
    product_desc_full_arabic text,
    product_desc_short_arabic text,
    cash_points integer DEFAULT 0 NOT NULL,
    offer_enabled integer DEFAULT 0 NOT NULL,
    deal_enabled integer DEFAULT 0 NOT NULL,
    is_today_offer integer DEFAULT 0 NOT NULL,
    today_offer_date character varying(200),
    thanku_perc double precision,
    custom_status integer,
    meta_title text,
    meta_keyword text,
    meta_description text,
    product_vendor_status integer DEFAULT 0 NOT NULL,
    product_gender character varying(100),
    is_kandora integer DEFAULT 0 NOT NULL,
    collection_id integer DEFAULT 0 NOT NULL,
    hot_offer_enabled integer DEFAULT 0 NOT NULL,
    trending_enabled integer DEFAULT 0 NOT NULL,
    offers_list integer DEFAULT 0 NOT NULL,
    zero_quantity_orders integer DEFAULT 0 NOT NULL,
    product_code character varying(300),
    product_tags character varying(1000),
    sort_order integer DEFAULT 0 NOT NULL,
    offer_for_short integer DEFAULT 0 NOT NULL,
    hot_offer_sort_order integer DEFAULT 0 NOT NULL,
    new_trending_sort_order integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    default_category_id integer DEFAULT 0 NOT NULL,
    default_attribute_id integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    brand character varying(600),
    store_id integer DEFAULT 0 NOT NULL,
    moda_main_category integer DEFAULT 0 NOT NULL,
    moda_sub_category integer DEFAULT 0 NOT NULL,
    featured integer DEFAULT 0 NOT NULL,
    master_product integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_attribute; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_attribute (
    attribute_id bigint NOT NULL,
    attribute_name character varying(400),
    attribute_status integer DEFAULT 0 NOT NULL,
    attribute_created_date timestamp(0) without time zone,
    attribute_name_arabic character varying(600),
    attribute_type integer,
    is_deleted integer DEFAULT 0
);


ALTER TABLE public.product_attribute OWNER TO postgres;

--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_attribute_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_attribute_id_seq OWNER TO postgres;

--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_attribute_attribute_id_seq OWNED BY product_attribute.attribute_id;


--
-- Name: product_attribute_values; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_attribute_values (
    attribute_values_id bigint NOT NULL,
    attribute_id integer DEFAULT 0 NOT NULL,
    attribute_values character varying(600),
    attribute_values_arabic character varying(600) NOT NULL,
    attribute_value_in integer DEFAULT 1 NOT NULL,
    attribute_value_color character varying(600),
    attribute_value_label character varying(600),
    attribute_value_label_arabic character varying(600),
    attribute_value_image character varying(600),
    is_deleted integer DEFAULT 0 NOT NULL,
    attribute_value_sort_order integer DEFAULT 0 NOT NULL,
    attribute_color character varying(600)
);


ALTER TABLE public.product_attribute_values OWNER TO postgres;

--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_attribute_values_attribute_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_values_attribute_values_id_seq OWNER TO postgres;

--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_attribute_values_attribute_values_id_seq OWNED BY product_attribute_values.attribute_values_id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category (
    product_category_id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_category OWNER TO postgres;

--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_product_category_id_seq OWNER TO postgres;

--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_product_category_id_seq OWNED BY product_category.product_category_id;


--
-- Name: product_docs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_docs (
    id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    title character varying(600),
    doc_path character varying(600)
);


ALTER TABLE public.product_docs OWNER TO postgres;

--
-- Name: product_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_docs_id_seq OWNER TO postgres;

--
-- Name: product_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_docs_id_seq OWNED BY product_docs.id;


--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- Name: product_images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_images (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    image_name text NOT NULL,
    product_attribute_id integer NOT NULL
);


ALTER TABLE public.product_images OWNER TO postgres;

--
-- Name: product_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_images_id_seq OWNER TO postgres;

--
-- Name: product_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_images_id_seq OWNED BY product_images.id;


--
-- Name: product_likes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_likes (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_likes OWNER TO postgres;

--
-- Name: product_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_likes_id_seq OWNER TO postgres;

--
-- Name: product_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_likes_id_seq OWNED BY product_likes.id;


--
-- Name: product_master; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_master (
    id bigint NOT NULL,
    name character varying(600),
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_master OWNER TO postgres;

--
-- Name: product_master_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_master_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_master_id_seq OWNER TO postgres;

--
-- Name: product_master_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_master_id_seq OWNED BY product_master.id;


--
-- Name: product_master_request; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE product_master_request (
    id bigint NOT NULL,
    name character varying(600),
    description character varying(600),
    vendor_id integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    accepted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    product_type integer DEFAULT 0 NOT NULL,
    category character varying(600)
);


ALTER TABLE public.product_master_request OWNER TO postgresuser;

--
-- Name: product_master_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE product_master_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_master_request_id_seq OWNER TO postgresuser;

--
-- Name: product_master_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE product_master_request_id_seq OWNED BY product_master_request.id;


--
-- Name: product_selected_attribute_list; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_selected_attribute_list (
    product_attribute_id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    manage_stock integer DEFAULT 0 NOT NULL,
    stock_quantity double precision,
    allow_back_order integer DEFAULT 0 NOT NULL,
    stock_status integer DEFAULT 0 NOT NULL,
    sold_individually integer DEFAULT 0 NOT NULL,
    weight double precision,
    length double precision,
    height double precision,
    width double precision,
    shipping_class integer DEFAULT 0 NOT NULL,
    sale_price double precision,
    regular_price double precision,
    taxable integer DEFAULT 0 NOT NULL,
    image character varying(600),
    shipping_note character varying(600),
    title character varying(600),
    rating double precision,
    rated_users integer DEFAULT 0 NOT NULL,
    image_temp character varying(600),
    barcode character varying(600),
    image_action character varying(600),
    pr_code character varying(600),
    product_desc text,
    product_full_descr text,
    size_chart character varying(600)
);


ALTER TABLE public.product_selected_attribute_list OWNER TO postgres;

--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_selected_attribute_list_product_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_selected_attribute_list_product_attribute_id_seq OWNER TO postgres;

--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_selected_attribute_list_product_attribute_id_seq OWNED BY product_selected_attribute_list.product_attribute_id;


--
-- Name: product_selected_attributes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_selected_attributes (
    product_selected_attributes_id bigint NOT NULL,
    attribute_id integer DEFAULT 0 NOT NULL,
    attribute_values_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_selected_attributes OWNER TO postgres;

--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_selected_attributes_product_selected_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_selected_attributes_product_selected_attributes_id_seq OWNER TO postgres;

--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_selected_attributes_product_selected_attributes_id_seq OWNED BY product_selected_attributes.product_selected_attributes_id;


--
-- Name: product_specifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_specifications (
    prod_spec_id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    spec_title text,
    spec_descp text,
    lang integer DEFAULT 1,
    spec_title_arabic text,
    spec_descp_arabic text
);


ALTER TABLE public.product_specifications OWNER TO postgres;

--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_specifications_prod_spec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_specifications_prod_spec_id_seq OWNER TO postgres;

--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_specifications_prod_spec_id_seq OWNED BY product_specifications.prod_spec_id;


--
-- Name: product_temp_image; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_temp_image (
    id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    image character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_temp_image OWNER TO postgres;

--
-- Name: product_temp_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_temp_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_temp_image_id_seq OWNER TO postgres;

--
-- Name: product_temp_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_temp_image_id_seq OWNED BY product_temp_image.id;


--
-- Name: product_variations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_variations (
    product_variations_id bigint NOT NULL,
    attribute_id integer DEFAULT 0 NOT NULL,
    attribute_values_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_variations OWNER TO postgres;

--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_variations_product_variations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_variations_product_variations_id_seq OWNER TO postgres;

--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_variations_product_variations_id_seq OWNED BY product_variations.product_variations_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE products (
    id bigint NOT NULL,
    product_type integer DEFAULT 1 NOT NULL,
    name character varying(2500) NOT NULL,
    active integer DEFAULT 1 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_by integer DEFAULT 0 NOT NULL,
    updated_by integer DEFAULT 0 NOT NULL,
    company_id integer DEFAULT 0 NOT NULL,
    store_id integer DEFAULT 0 NOT NULL,
    description text NOT NULL,
    featured integer DEFAULT 0 NOT NULL,
    meta_title text,
    meta_description text,
    meta_keywords text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ratings (
    id bigint NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_varient_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    vendor_id integer DEFAULT 0 NOT NULL,
    rating double precision,
    title text,
    comment text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ratings_id_seq OWNED BY ratings.id;


--
-- Name: service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE service (
    id bigint NOT NULL,
    name character varying(600),
    image character varying(600),
    service_price double precision,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    description character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.service OWNER TO postgres;

--
-- Name: service_category; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE service_category (
    id bigint NOT NULL,
    name character varying(600),
    image character varying(600),
    banner_image character varying(600),
    parent_id integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    description character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.service_category OWNER TO postgres;

--
-- Name: service_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_category_id_seq OWNER TO postgres;

--
-- Name: service_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_category_id_seq OWNED BY service_category.id;


--
-- Name: service_category_selected; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE service_category_selected (
    id bigint NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.service_category_selected OWNER TO postgres;

--
-- Name: service_category_selected_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_category_selected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_category_selected_id_seq OWNER TO postgres;

--
-- Name: service_category_selected_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_category_selected_id_seq OWNED BY service_category_selected.id;


--
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_id_seq OWNER TO postgres;

--
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_id_seq OWNED BY service.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE settings (
    id bigint NOT NULL,
    admin_commission double precision NOT NULL,
    shipping_charge double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tax_percentage double precision DEFAULT 0::double precision NOT NULL
);


ALTER TABLE public.settings OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: skin_colors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE skin_colors (
    id bigint NOT NULL,
    name character varying(255),
    color character varying(30) NOT NULL,
    active smallint DEFAULT 1::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.skin_colors OWNER TO postgres;

--
-- Name: skin_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE skin_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skin_colors_id_seq OWNER TO postgres;

--
-- Name: skin_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE skin_colors_id_seq OWNED BY skin_colors.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE states (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    active smallint DEFAULT 1::smallint NOT NULL,
    country_id integer,
    created_uid integer,
    updated_uid integer,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: store_images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE store_images (
    id bigint NOT NULL,
    image character varying(900),
    store_id bigint NOT NULL
);


ALTER TABLE public.store_images OWNER TO postgres;

--
-- Name: store_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE store_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_images_id_seq OWNER TO postgres;

--
-- Name: store_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE store_images_id_seq OWNED BY store_images.id;


--
-- Name: store_likes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE store_likes (
    id bigint NOT NULL,
    store_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.store_likes OWNER TO postgres;

--
-- Name: store_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE store_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_likes_id_seq OWNER TO postgres;

--
-- Name: store_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE store_likes_id_seq OWNED BY store_likes.id;


--
-- Name: store_managers_types; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE store_managers_types (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    vendor_id bigint
);


ALTER TABLE public.store_managers_types OWNER TO postgres;

--
-- Name: store_managers_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE store_managers_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_managers_types_id_seq OWNER TO postgres;

--
-- Name: store_managers_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE store_managers_types_id_seq OWNED BY store_managers_types.id;


--
-- Name: store_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE store_type (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    banner_image character varying(600),
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.store_type OWNER TO postgres;

--
-- Name: store_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE store_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_type_id_seq OWNER TO postgres;

--
-- Name: store_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE store_type_id_seq OWNED BY store_type.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE stores (
    id bigint NOT NULL,
    vendor_id bigint NOT NULL,
    industry_type integer DEFAULT 0,
    store_name character varying(1000),
    business_email character varying(250),
    dial_code character varying(5),
    mobile character varying(20),
    description text,
    location character varying(1500) NOT NULL,
    latitude character varying(50) NOT NULL,
    longitude character varying(50) NOT NULL,
    address_line1 character varying(900),
    address_line2 character varying(255),
    country_id bigint NOT NULL,
    state_id bigint NOT NULL,
    city_id bigint NOT NULL,
    zip character varying(10),
    logo character varying(900),
    cover_image character varying(900),
    license_number character varying(100),
    license_doc character varying(900),
    vat_cert_number character varying(100),
    vat_cert_doc character varying(900),
    active smallint DEFAULT 1::smallint NOT NULL,
    verified smallint DEFAULT 0::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_uid bigint,
    updated_uid bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    commission double precision
);


ALTER TABLE public.stores OWNER TO postgres;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO postgres;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: temp_order_products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temp_order_products (
    id bigint NOT NULL,
    order_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    product_type integer DEFAULT 0 NOT NULL,
    quantity integer DEFAULT 0 NOT NULL,
    price double precision,
    discount double precision,
    total double precision,
    vendor_id integer DEFAULT 0 NOT NULL,
    admin_commission double precision,
    vendor_commission double precision,
    shipping_charge double precision
);


ALTER TABLE public.temp_order_products OWNER TO postgres;

--
-- Name: temp_order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temp_order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_order_products_id_seq OWNER TO postgres;

--
-- Name: temp_order_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temp_order_products_id_seq OWNED BY temp_order_products.id;


--
-- Name: temp_orders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temp_orders (
    id bigint NOT NULL,
    invoice_id character varying(100),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision DEFAULT 0::double precision,
    vat double precision DEFAULT 0::double precision,
    discount double precision DEFAULT 0::double precision,
    grand_total double precision DEFAULT 0::double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    admin_commission double precision DEFAULT 0::double precision,
    vendor_commission double precision DEFAULT 0::double precision,
    shipping_charge double precision DEFAULT 0::double precision,
    temp_id character varying(255) NOT NULL
);


ALTER TABLE public.temp_orders OWNER TO postgres;

--
-- Name: temp_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temp_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_orders_id_seq OWNER TO postgres;

--
-- Name: temp_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temp_orders_id_seq OWNED BY temp_orders.id;


--
-- Name: temp_service_order_items; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE temp_service_order_items (
    id bigint NOT NULL,
    order_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    price double precision NOT NULL,
    discount double precision NOT NULL,
    total double precision NOT NULL,
    admin_commission double precision NOT NULL,
    vendor_commission double precision NOT NULL,
    booking_date character varying(600)
);


ALTER TABLE public.temp_service_order_items OWNER TO postgresuser;

--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE temp_service_order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_service_order_items_id_seq OWNER TO postgresuser;

--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE temp_service_order_items_id_seq OWNED BY temp_service_order_items.id;


--
-- Name: temp_service_orders; Type: TABLE; Schema: public; Owner: postgresuser; Tablespace: 
--

CREATE TABLE temp_service_orders (
    id bigint NOT NULL,
    invoice_id character varying(600),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision,
    vat double precision,
    discount double precision,
    grand_total double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    admin_commission double precision,
    vendor_commission double precision,
    temp_id character varying(600)
);


ALTER TABLE public.temp_service_orders OWNER TO postgresuser;

--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE temp_service_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_service_orders_id_seq OWNER TO postgresuser;

--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE temp_service_orders_id_seq OWNED BY temp_service_orders.id;


--
-- Name: user_address; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_address (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    full_name character varying(255) NOT NULL,
    dial_code character varying(5) NOT NULL,
    phone character varying(20) NOT NULL,
    address text NOT NULL,
    country_id integer DEFAULT 0 NOT NULL,
    state_id integer DEFAULT 0 NOT NULL,
    city_id integer DEFAULT 0 NOT NULL,
    address_type character varying(255) DEFAULT 'Home'::character varying NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    is_default integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    land_mark character varying(600),
    building_name character varying(600),
    latitude character varying(600),
    longitude character varying(600),
    location character varying(1600)
);


ALTER TABLE public.user_address OWNER TO postgres;

--
-- Name: user_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_address_id_seq OWNER TO postgres;

--
-- Name: user_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_address_id_seq OWNED BY user_address.id;


--
-- Name: user_follows; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_follows (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    follow_user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.user_follows OWNER TO postgres;

--
-- Name: user_follows_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_follows_id_seq OWNER TO postgres;

--
-- Name: user_follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_follows_id_seq OWNED BY user_follows.id;


--
-- Name: user_privileges; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_privileges (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    designation_id bigint NOT NULL,
    privileges character varying(1600),
    status smallint DEFAULT 1::smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.user_privileges OWNER TO postgres;

--
-- Name: user_privileges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_privileges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_privileges_id_seq OWNER TO postgres;

--
-- Name: user_privileges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_privileges_id_seq OWNED BY user_privileges.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id bigint NOT NULL,
    name character varying(255),
    email character varying(255),
    dial_code character varying(255),
    phone character varying(255) NOT NULL,
    phone_verified integer DEFAULT 0 NOT NULL,
    password character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    role character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    user_image character varying(255),
    user_phone_otp character varying(255),
    user_device_token character varying(255),
    user_device_type character varying(255),
    user_access_token character varying(255),
    firebase_user_key character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    country_id integer DEFAULT 0 NOT NULL,
    state_id integer DEFAULT 0 NOT NULL,
    city_id integer DEFAULT 0 NOT NULL,
    area integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    display_name character varying(600),
    business_name character varying(600),
    email_verified integer DEFAULT 0 NOT NULL,
    user_email_otp character varying(255),
    dob date,
    vendor integer DEFAULT 0 NOT NULL,
    store integer DEFAULT 0 NOT NULL,
    previllege integer DEFAULT 0 NOT NULL,
    about_me text,
    verified integer DEFAULT 0 NOT NULL,
    designation_id bigint,
    is_private_profile integer DEFAULT 0 NOT NULL,
    user_name character varying(150),
    gender integer DEFAULT 1 NOT NULL,
    website character varying(2500),
    wallet_amount double precision DEFAULT 0::double precision NOT NULL,
    password_reset_code character varying(600),
    password_reset_time character varying(600),
    approve integer DEFAULT 0 NOT NULL,
    user_permissions text,
    password_reset_otp character varying(600)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_role; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users_role (
    id bigint NOT NULL,
    role_name character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users_role OWNER TO postgres;

--
-- Name: users_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_role_id_seq OWNER TO postgres;

--
-- Name: users_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_role_id_seq OWNED BY users_role.id;


--
-- Name: vendor_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vendor_details (
    id bigint NOT NULL,
    homedelivery integer DEFAULT 1 NOT NULL,
    logo character varying(600),
    key_control integer DEFAULT 0 NOT NULL,
    branches integer DEFAULT 0 NOT NULL,
    company_name character varying(600),
    company_brand character varying(600),
    legal_staus character varying(600),
    reg_date timestamp(0) without time zone,
    trade_license character varying(600),
    trade_license_expiry timestamp(0) without time zone,
    vat_reg_number character varying(600),
    vat_reg_expiry timestamp(0) without time zone,
    address1 character varying(600),
    address2 character varying(600),
    street character varying(600),
    state integer DEFAULT 0 NOT NULL,
    city integer DEFAULT 0 NOT NULL,
    zip character varying(300),
    trade_license_doc character varying(600),
    chamber_of_commerce_doc character varying(600),
    share_certificate_doc character varying(600),
    power_attorny_doc character varying(600),
    vat_reg_doc character varying(600),
    signed_agreement_doc character varying(600),
    identy1_type integer DEFAULT 0 NOT NULL,
    identy1_doc character varying(600),
    identy2_type integer DEFAULT 0 NOT NULL,
    identy2_doc character varying(600),
    company_identy1_type integer DEFAULT 0 NOT NULL,
    company_identy1_doc character varying(600),
    company_identy2_type integer DEFAULT 0 NOT NULL,
    company_identy2_doc character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    industry_type integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    store_type integer DEFAULT 0 NOT NULL,
    txt_location character varying(600),
    location character varying(600),
    latitude character varying(600),
    longitude character varying(600),
    area character varying(600),
    pharmacycommission double precision,
    servicecommission double precision,
    featured_flag integer DEFAULT 0 NOT NULL,
    open_time character varying(600),
    close_time character varying(600),
    description text,
    cover_image character varying(600)
);


ALTER TABLE public.vendor_details OWNER TO postgres;

--
-- Name: vendor_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vendor_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_details_id_seq OWNER TO postgres;

--
-- Name: vendor_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vendor_details_id_seq OWNED BY vendor_details.id;


--
-- Name: vendor_services; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vendor_services (
    id bigint NOT NULL,
    vendor_id bigint NOT NULL,
    service_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.vendor_services OWNER TO postgres;

--
-- Name: vendor_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vendor_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_services_id_seq OWNER TO postgres;

--
-- Name: vendor_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vendor_services_id_seq OWNED BY vendor_services.id;


--
-- Name: wallet_histories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wallet_histories (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    wallet_amount double precision DEFAULT 0::double precision NOT NULL,
    pay_type character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    pay_method integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.wallet_histories OWNER TO postgres;

--
-- Name: wallet_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wallet_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallet_histories_id_seq OWNER TO postgres;

--
-- Name: wallet_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wallet_histories_id_seq OWNED BY wallet_histories.id;


--
-- Name: wallet_payment_report; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wallet_payment_report (
    id bigint NOT NULL,
    transaction_id character varying(255),
    payment_status character varying(255),
    user_id integer DEFAULT 0 NOT NULL,
    ref_id character varying(255),
    amount numeric(8,2) NOT NULL,
    method_type integer DEFAULT 1 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.wallet_payment_report OWNER TO postgres;

--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wallet_payment_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallet_payment_report_id_seq OWNER TO postgres;

--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wallet_payment_report_id_seq OWNED BY wallet_payment_report.id;


--
-- Name: websockets_statistics_entries; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE websockets_statistics_entries (
    id integer NOT NULL,
    app_id character varying(255) NOT NULL,
    peak_connection_count integer NOT NULL,
    websocket_message_count integer NOT NULL,
    api_message_count integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.websockets_statistics_entries OWNER TO postgres;

--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE websockets_statistics_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.websockets_statistics_entries_id_seq OWNER TO postgres;

--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE websockets_statistics_entries_id_seq OWNED BY websockets_statistics_entries.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_designation ALTER COLUMN id SET DEFAULT nextval('admin_designation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amount_type ALTER COLUMN id SET DEFAULT nextval('amount_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_banners ALTER COLUMN id SET DEFAULT nextval('app_banners_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attribute_type ALTER COLUMN id SET DEFAULT nextval('attribute_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attribute_values ALTER COLUMN id SET DEFAULT nextval('attribute_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY attribute_values_request ALTER COLUMN id SET DEFAULT nextval('attribute_values_request_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY attributes ALTER COLUMN id SET DEFAULT nextval('attributes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank ALTER COLUMN id SET DEFAULT nextval('bank_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank_code_types ALTER COLUMN id SET DEFAULT nextval('bank_code_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank_details ALTER COLUMN id SET DEFAULT nextval('bank_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog ALTER COLUMN id SET DEFAULT nextval('blog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY brand ALTER COLUMN id SET DEFAULT nextval('brand_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cart ALTER COLUMN id SET DEFAULT nextval('cart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cart_service ALTER COLUMN id SET DEFAULT nextval('cart_service_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cities ALTER COLUMN id SET DEFAULT nextval('cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_likes ALTER COLUMN id SET DEFAULT nextval('comment_likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_taged_users ALTER COLUMN id SET DEFAULT nextval('comment_taged_users_id_seq'::regclass);


--
-- Name: cf_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY common_faq ALTER COLUMN cf_id SET DEFAULT nextval('common_faq_cf_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_us ALTER COLUMN id SET DEFAULT nextval('contact_us_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_us_settings ALTER COLUMN id SET DEFAULT nextval('contact_us_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY country ALTER COLUMN id SET DEFAULT nextval('country_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY coupon ALTER COLUMN id SET DEFAULT nextval('coupon_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY coupon_category ALTER COLUMN id SET DEFAULT nextval('coupon_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY coupon_products ALTER COLUMN id SET DEFAULT nextval('coupon_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY coupon_services ALTER COLUMN id SET DEFAULT nextval('coupon_services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY designations ALTER COLUMN id SET DEFAULT nextval('designations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY failed_jobs ALTER COLUMN id SET DEFAULT nextval('failed_jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY faq ALTER COLUMN id SET DEFAULT nextval('faq_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featured_products ALTER COLUMN id SET DEFAULT nextval('featured_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY featured_products_img ALTER COLUMN id SET DEFAULT nextval('featured_products_img_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY hair_colors ALTER COLUMN id SET DEFAULT nextval('hair_colors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY help ALTER COLUMN id SET DEFAULT nextval('help_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY industry_types ALTER COLUMN id SET DEFAULT nextval('industry_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY likes ALTER COLUMN id SET DEFAULT nextval('likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY moda_main_categories ALTER COLUMN id SET DEFAULT nextval('moda_main_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY moda_sub_categories ALTER COLUMN id SET DEFAULT nextval('moda_sub_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY my_moda ALTER COLUMN id SET DEFAULT nextval('my_moda_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY my_moda_items ALTER COLUMN id SET DEFAULT nextval('my_moda_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notifications ALTER COLUMN id SET DEFAULT nextval('notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY order_products ALTER COLUMN id SET DEFAULT nextval('order_products_id_seq'::regclass);


--
-- Name: order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders ALTER COLUMN order_id SET DEFAULT nextval('orders_order_id_seq'::regclass);


--
-- Name: order_id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY orders_services ALTER COLUMN order_id SET DEFAULT nextval('orders_services_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY orders_services_items ALTER COLUMN id SET DEFAULT nextval('orders_services_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY payment_report ALTER COLUMN id SET DEFAULT nextval('payment_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('personal_access_tokens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_comments ALTER COLUMN id SET DEFAULT nextval('post_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_likes ALTER COLUMN id SET DEFAULT nextval('post_likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_saves ALTER COLUMN id SET DEFAULT nextval('post_saves_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_users ALTER COLUMN id SET DEFAULT nextval('post_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- Name: attribute_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_attribute ALTER COLUMN attribute_id SET DEFAULT nextval('product_attribute_attribute_id_seq'::regclass);


--
-- Name: attribute_values_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_attribute_values ALTER COLUMN attribute_values_id SET DEFAULT nextval('product_attribute_values_attribute_values_id_seq'::regclass);


--
-- Name: product_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category ALTER COLUMN product_category_id SET DEFAULT nextval('product_category_product_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_docs ALTER COLUMN id SET DEFAULT nextval('product_docs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_images ALTER COLUMN id SET DEFAULT nextval('product_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_likes ALTER COLUMN id SET DEFAULT nextval('product_likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_master ALTER COLUMN id SET DEFAULT nextval('product_master_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY product_master_request ALTER COLUMN id SET DEFAULT nextval('product_master_request_id_seq'::regclass);


--
-- Name: product_attribute_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_selected_attribute_list ALTER COLUMN product_attribute_id SET DEFAULT nextval('product_selected_attribute_list_product_attribute_id_seq'::regclass);


--
-- Name: product_selected_attributes_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_selected_attributes ALTER COLUMN product_selected_attributes_id SET DEFAULT nextval('product_selected_attributes_product_selected_attributes_id_seq'::regclass);


--
-- Name: prod_spec_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_specifications ALTER COLUMN prod_spec_id SET DEFAULT nextval('product_specifications_prod_spec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_temp_image ALTER COLUMN id SET DEFAULT nextval('product_temp_image_id_seq'::regclass);


--
-- Name: product_variations_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_variations ALTER COLUMN product_variations_id SET DEFAULT nextval('product_variations_product_variations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ratings ALTER COLUMN id SET DEFAULT nextval('ratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service ALTER COLUMN id SET DEFAULT nextval('service_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_category ALTER COLUMN id SET DEFAULT nextval('service_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_category_selected ALTER COLUMN id SET DEFAULT nextval('service_category_selected_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY skin_colors ALTER COLUMN id SET DEFAULT nextval('skin_colors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY store_images ALTER COLUMN id SET DEFAULT nextval('store_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY store_likes ALTER COLUMN id SET DEFAULT nextval('store_likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY store_managers_types ALTER COLUMN id SET DEFAULT nextval('store_managers_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY store_type ALTER COLUMN id SET DEFAULT nextval('store_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temp_order_products ALTER COLUMN id SET DEFAULT nextval('temp_order_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temp_orders ALTER COLUMN id SET DEFAULT nextval('temp_orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY temp_service_order_items ALTER COLUMN id SET DEFAULT nextval('temp_service_order_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY temp_service_orders ALTER COLUMN id SET DEFAULT nextval('temp_service_orders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_address ALTER COLUMN id SET DEFAULT nextval('user_address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_follows ALTER COLUMN id SET DEFAULT nextval('user_follows_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_privileges ALTER COLUMN id SET DEFAULT nextval('user_privileges_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users_role ALTER COLUMN id SET DEFAULT nextval('users_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vendor_details ALTER COLUMN id SET DEFAULT nextval('vendor_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vendor_services ALTER COLUMN id SET DEFAULT nextval('vendor_services_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallet_histories ALTER COLUMN id SET DEFAULT nextval('wallet_histories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallet_payment_report ALTER COLUMN id SET DEFAULT nextval('wallet_payment_report_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY websockets_statistics_entries ALTER COLUMN id SET DEFAULT nextval('websockets_statistics_entries_id_seq'::regclass);


--
-- Data for Name: admin_designation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_designation (id, name, is_deletd) FROM stdin;
1	Sub admin	0
2	Customer Support	0
\.


--
-- Name: admin_designation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_designation_id_seq', 2, true);


--
-- Data for Name: amount_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY amount_type (id, name) FROM stdin;
1	%
2	Amount
\.


--
-- Name: amount_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('amount_type_id_seq', 2, true);


--
-- Data for Name: app_banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_banners (id, banner_title, banner_image, active, created_by, updated_by, created_at, updated_at) FROM stdin;
2	TEST	1668505214pills-medicine-capsules-wallpaper-preview.jpg	1	1	1	2022-10-27 12:10:51	2022-11-15 09:40:14
\.


--
-- Name: app_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_banners_id_seq', 2, true);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY articles (id, title_en, title_ar, status, desc_en, desc_ar, meta_title, meta_keyword, meta_description, created_at, updated_at) FROM stdin;
1	About Us	About Us	1	About Us	About Us	\N	\N	\N	2022-11-01 13:58:12	2022-11-01 13:58:12
2	Terms And Conditions	Terms And Conditions	1	terms and conditions	terms and conditions	\N	\N	\N	2022-11-01 13:58:34	2022-11-01 13:58:34
3	Privacy Policy	Privacy Policy	1	privacy policy	privacy policy	\N	\N	\N	2022-11-01 13:58:50	2022-11-01 13:58:50
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('articles_id_seq', 3, true);


--
-- Data for Name: attribute_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attribute_type (id, attribute_type_name, attribute_type_uid, attribute_type_status) FROM stdin;
1	Dropdown	dropdown	1
2	Button	radio	1
3	Image Selection	radio_image	1
4	Color Box	radio_button_group	1
\.


--
-- Name: attribute_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attribute_type_id_seq', 4, true);


--
-- Data for Name: attribute_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attribute_values (id, attribute_id, attribute_values, attribute_value_in, attribute_value_color, deleted, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attribute_values_id_seq', 1, false);


--
-- Data for Name: attribute_values_request; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY attribute_values_request (id, request_id, attribute, value) FROM stdin;
\.


--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('attribute_values_request_id_seq', 1, false);


--
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attributes (id, attribute_name, active, attribute_type, industry_type, company_id, store_id, is_common, deleted, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attributes_id_seq', 1, false);


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bank (id, name, created_at, updated_at) FROM stdin;
1	Emirates National Bank of Dubai (ENBD)	2022-11-08 04:02:59	\N
2	Abu Dhabi Commercial Bank (ADCB)	2022-11-08 04:03:11	\N
3	State Bank of Dubai	2022-11-14 14:26:02	\N
\.


--
-- Data for Name: bank_code_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bank_code_types (id, name, country_id, active, deleted, created_at, updated_at) FROM stdin;
1	IFSC (India)	0	0	0	\N	\N
2	SORT CODE (UK)	0	0	0	\N	\N
3	SWIFT CODE	0	0	0	\N	\N
\.


--
-- Name: bank_code_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bank_code_types_id_seq', 3, true);


--
-- Data for Name: bank_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bank_details (id, bank_name, company_account, code_type, account_no, branch_code, branch_name, bank_statement_doc, credit_card_sta_doc, country, user_id, created_at, updated_at, iban) FROM stdin;
3	1	12113	0	33131313	2113	22323	\N	\N	1	40	2022-11-09 05:02:46	2022-11-09 05:02:46	ads
4	1	12113	0	33131313	2113	AVHH	\N	\N	1	18	2022-11-11 04:06:05	2022-11-11 04:06:05	ads
1	1	12113	1	2323	232242	244	/uploads/company/6369d541971be_1667880257.jpg	/uploads/company/6369d5419738b_1667880257.jpg	1	17	2022-11-08 04:04:17	2022-11-11 04:06:23	32323
2	1	12113	1	33131313	2113	34545	\N	\N	1	15	2022-11-08 05:16:30	2022-11-11 04:06:53	ads
5	2	12113	0	11323	2113	AVHH	\N	\N	1	6	2022-11-11 10:33:10	2022-11-11 10:33:10	11221
6	1	Binay	0	1234567890	MD_1234	Abu dhabi	/uploads/company/636e2a5de5d50_1668164189.jpg	\N	1	46	2022-11-11 10:56:29	2022-11-11 10:56:29	123456
7	1	test	0	13123123	2312312	123123123	\N	\N	1	13	2022-11-14 09:05:45	2022-11-14 09:05:45	1231231312312
8	1	12113	0	33131313	2113	AVHH	\N	\N	2	7	2022-11-15 10:21:09	2022-11-15 10:21:09	ads
9	1	hh	0	7888686	668hj	hhh	\N	\N	1	5	2022-11-15 18:01:59	2022-11-15 18:01:59	hyuii
\.


--
-- Name: bank_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bank_details_id_seq', 9, true);


--
-- Name: bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bank_id_seq', 3, true);


--
-- Data for Name: blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog (id, title, description, image, created_by, created_on, updated_by, updated_on, active) FROM stdin;
\.


--
-- Name: blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_id_seq', 1, false);


--
-- Data for Name: brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY brand (id, name, industry_type, image, active, created_at, updated_at, deleted) FROM stdin;
1	Natco	0	/uploads/brand/634025308b5e7_1665148208.jpg	1	2022-10-07 13:10:08	2022-10-07 13:10:08	0
2	GLS	0	/uploads/brand/6340257f7939f_1665148287.jpg	1	2022-10-07 13:11:27	2022-10-07 13:11:27	0
3	GMP	0	/uploads/brand/637245b24489d_1668433330.png	1	2022-11-14 13:42:10	2022-11-14 13:42:10	0
\.


--
-- Name: brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('brand_id_seq', 3, true);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cart (id, product_id, product_attribute_id, quantity, user_id, store_id, device_cart_id, created_at, updated_at) FROM stdin;
47	25	27	1	54	40	\N	2022-11-15 21:18:40	2022-11-15 21:18:40
49	23	25	1	54	40	\N	2022-11-15 21:18:47	2022-11-15 21:18:47
50	21	23	1	54	40	\N	2022-11-15 21:18:50	2022-11-15 21:18:50
51	20	22	1	54	40	\N	2022-11-15 21:18:52	2022-11-15 21:18:52
52	19	21	1	54	40	\N	2022-11-15 21:18:54	2022-11-15 21:18:54
48	24	26	2	54	40	\N	2022-11-15 21:18:42	2022-11-15 21:21:03
46	14	16	2	54	40	\N	2022-11-15 21:15:15	2022-11-15 21:21:08
36	25	27	1	58	40	\N	2022-11-15 15:21:12	2022-11-15 15:21:12
37	24	26	1	58	40	\N	2022-11-15 15:21:14	2022-11-15 15:21:14
38	18	20	1	58	40	\N	2022-11-15 15:21:19	2022-11-15 15:21:19
41	25	27	1	39	40	\N	2022-11-15 19:45:49	2022-11-15 19:45:49
42	24	26	1	39	40	\N	2022-11-15 19:46:59	2022-11-15 19:46:59
\.


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cart_id_seq', 52, true);


--
-- Data for Name: cart_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cart_service (id, service_id, user_id, device_cart_id, booked_time, created_at, updated_at) FROM stdin;
59	3	56	\N	2022-11-16 09:00:00	2022-11-15 10:15:17	2022-11-15 10:15:17
64	4	76	\N	2022-11-17 08:30:00	2022-11-16 04:07:44	2022-11-16 04:07:44
\.


--
-- Name: cart_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cart_service_id_seq', 64, true);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY category (id, name, image, banner_image, parent_id, active, deleted, sort_order, created_uid, updated_uid, created_at, updated_at) FROM stdin;
1	Nutrition	\N	\N	0	0	1	0	1	1	2022-09-23 14:42:03	2022-09-26 09:05:13
2	Beauty	\N	\N	0	0	1	0	1	1	2022-09-23 14:42:16	2022-09-26 09:05:19
3	Equipment & Homecare	\N	\N	0	0	1	0	1	1	2022-09-23 14:42:28	2022-09-26 09:05:27
4	Medical Essentials	\N	\N	0	0	1	0	1	1	2022-09-23 14:42:41	2022-09-26 09:05:32
5	Mother & Baby	\N	\N	0	0	1	0	1	1	2022-09-23 14:42:55	2022-09-26 09:05:39
6	Personal Care	\N	\N	0	0	1	0	1	1	2022-09-23 14:43:09	2022-09-26 09:05:44
7	Lifestyle	\N	\N	0	0	1	0	1	1	2022-09-23 14:43:20	2022-09-26 09:05:50
8	Children Supplement	\N	\N	5	0	1	0	1	1	2022-09-23 14:43:38	2022-09-26 09:05:56
9	Sports nutrition	\N	\N	1	0	1	0	1	1	2022-09-23 14:44:10	2022-09-26 09:06:02
10	Capsules	/uploads/category/63402612d3b33_1665148434.jpg	\N	0	1	0	0	1	1	2022-10-07 13:13:54	2022-10-07 13:13:54
11	Syrup	/uploads/category/63402686c799f_1665148550.jpg	\N	0	1	0	0	1	1	2022-10-07 13:15:50	2022-10-07 13:15:50
12	Gelatin capsules	\N	\N	10	1	0	0	1	1	2022-10-22 10:07:32	2022-10-22 10:11:54
13	Starch capsules.	\N	\N	10	1	0	0	1	1	2022-10-22 10:12:07	2022-10-22 10:12:07
14	tablets	\N	\N	0	1	0	0	1	1	2022-10-26 13:06:44	2022-10-26 13:06:44
15	Healthy Foods	/uploads/category/6373941373105_1668518931.png	/uploads/category/637394137337a_1668518931.png	0	1	0	0	1	1	2022-11-15 13:28:51	2022-11-15 13:28:51
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('category_id_seq', 15, true);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cities (id, name, active, country_id, state_id, created_uid, updated_uid, deleted, created_at, updated_at) FROM stdin;
1	Dubai	1	1	1	1	\N	0	2022-09-23 14:37:55	2022-09-23 14:37:55
\.


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cities_id_seq', 1, true);


--
-- Data for Name: comment_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comment_likes (id, comment_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comment_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comment_likes_id_seq', 1, false);


--
-- Data for Name: comment_taged_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comment_taged_users (id, comment_id, user_id) FROM stdin;
\.


--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comment_taged_users_id_seq', 1, false);


--
-- Data for Name: common_faq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY common_faq (cf_id, head_title, title, description1, description2, created_date_time) FROM stdin;
\.


--
-- Name: common_faq_cf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('common_faq_cf_id_seq', 1, false);


--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contact_us (id, name, email, dial_code, mobile_number, message, created_at, updated_at) FROM stdin;
1	Rusvin	rusvinaroor@gmail.com	91	7034526952	Test contact	2022-11-09 05:42:30	2022-11-09 05:42:30
2	Rusvin	rusvinaroor@gmail.com	91	7034526952	Test contact	2022-11-09 15:09:52	2022-11-09 15:09:52
3	Hamid Raza	razahamid34@gmail.com	971	3441562554	Hello	2022-11-09 16:58:51	2022-11-09 16:58:51
4	Binay	Itsmebinaythakur@gmail.com	971	1234567	vh	2022-11-10 08:35:59	2022-11-10 08:35:59
5	Hamid	razahamid34@gmail.com	971	3460102419663	Asd	2022-11-10 12:50:32	2022-11-10 12:50:32
6	Hamid	razahamid34@gmail.com	971	3441562554	Helo	2022-11-15 18:58:51	2022-11-15 18:58:51
\.


--
-- Name: contact_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_us_id_seq', 6, true);


--
-- Data for Name: contact_us_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contact_us_settings (id, title_en, title_ar, email, mobile, desc_en, desc_ar, location, latitude, longitude, twitter, instagram, facebook, youtube, linkedin, created_at, updated_at) FROM stdin;
1	Healthy Wealthy	\N	rusvinaroor@gmail.com	\N	\N	\N	Al Safa St - Dubai - United Arab Emirates	\N	\N	\N	\N	\N	\N	\N	\N	2022-10-10 15:13:55
\.


--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_us_settings_id_seq', 1, true);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY country (id, name, prefix, dial_code, active, created_at, updated_at, deleted) FROM stdin;
1	United Arab Emirates	971	971	1	2022-09-22 15:10:35	2022-09-23 11:34:41	0
2	India	91	91	1	2022-11-14 14:27:52	2022-11-14 14:39:39	0
\.


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('country_id_seq', 2, true);


--
-- Data for Name: coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY coupon (id, coupon_title, coupon_description, coupon_end_date, coupon_amount, coupon_minimum_spend, coupon_max_spend, coupon_usage_percoupon, coupon_usage_perx, coupon_usage_peruser, coupon_vender_id, coupon_status, deleted, coupon_code, amount_type, start_date, applied_to, minimum_amount, created_at, updated_at) FROM stdin;
1	test	ABCD DESCRIPTION	2022-11-26 00:00:00	20	\N	\N	1	\N	1	14	1	0	HUJK100	1	2022-10-27	2	100	2022-10-27 07:47:20	\N
2	Coupons for product	User only use this for first time registration	2022-11-30 00:00:00	20	\N	\N	50	\N	50	40	1	0	HW_1234	1	2022-11-14	2	50	2022-11-14 13:17:17	\N
\.


--
-- Data for Name: coupon_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY coupon_category (id, coupon_id, category_id) FROM stdin;
\.


--
-- Name: coupon_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coupon_category_id_seq', 1, false);


--
-- Name: coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coupon_id_seq', 2, true);


--
-- Data for Name: coupon_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY coupon_products (id, coupon_id, product_id) FROM stdin;
1	1	4
\.


--
-- Name: coupon_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coupon_products_id_seq', 1, true);


--
-- Data for Name: coupon_services; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY coupon_services (id, coupon_id, service_id) FROM stdin;
1	1	1
\.


--
-- Name: coupon_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('coupon_services_id_seq', 1, true);


--
-- Data for Name: designations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY designations (id, user_id, user_type, designation, status, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: designations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('designations_id_seq', 1, false);


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('failed_jobs_id_seq', 1, false);


--
-- Data for Name: faq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY faq (id, title, description, created_by, updated_by, active, created_at, updated_at) FROM stdin;
1	Help Questian	Help Questian	1	1	1	2022-11-01 13:59:25	2022-11-01 13:59:25
2	Help Questian 1	Help Questian	1	1	1	2022-11-01 13:59:33	2022-11-01 13:59:33
\.


--
-- Name: faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('faq_id_seq', 2, true);


--
-- Data for Name: featured_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY featured_products (id, master_product, description, created_at, updated_at) FROM stdin;
1	1	test	2022-11-04 13:45:41	2022-11-04 13:45:57
2	3	Relieves headaches and bodyaches	2022-11-04 15:32:29	2022-11-04 15:32:29
3	12	Description	2022-11-14 13:10:11	2022-11-14 13:10:11
\.


--
-- Name: featured_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featured_products_id_seq', 3, true);


--
-- Data for Name: featured_products_img; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY featured_products_img (id, featured_product_id, image) FROM stdin;
1	1	/uploads/store/63651785c52cd_1667569541.jpg
2	1	/uploads/store/63651795c73a8_1667569557.jpg
3	2	/uploads/store/6365308db21c1_1667575949.jpg
\.


--
-- Name: featured_products_img_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('featured_products_img_id_seq', 3, true);


--
-- Data for Name: hair_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY hair_colors (id, name, color, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Name: hair_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hair_colors_id_seq', 1, false);


--
-- Data for Name: help; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY help (id, title, description, created_by, updated_by, active, created_at, updated_at) FROM stdin;
\.


--
-- Name: help_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('help_id_seq', 1, false);


--
-- Data for Name: industry_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY industry_types (id, name, active, deleted, sort_order, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Name: industry_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('industry_types_id_seq', 1, false);


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY likes (id, user_id, product_id, vendor_id, created_at, updated_at) FROM stdin;
3	35	22	0	2022-11-08 05:03:22	2022-11-08 05:03:22
4	44	0	6	2022-11-08 05:18:31	2022-11-08 05:18:31
5	35	1	0	2022-11-08 05:22:11	2022-11-08 05:22:11
7	35	7	0	2022-11-08 05:24:15	2022-11-08 05:24:15
37	39	0	22	2022-11-10 04:42:22	2022-11-10 04:42:22
40	39	0	6	2022-11-10 04:57:25	2022-11-10 04:57:25
42	20	0	7	2022-11-10 08:37:23	2022-11-10 08:37:23
43	20	0	20	2022-11-10 08:38:07	2022-11-10 08:38:07
46	20	0	6	2022-11-10 10:19:21	2022-11-10 10:19:21
47	20	0	15	2022-11-10 10:19:22	2022-11-10 10:19:22
52	35	0	15	2022-11-13 17:07:46	2022-11-13 17:07:46
53	58	0	6	2022-11-14 09:36:20	2022-11-14 09:36:20
\.


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('likes_id_seq', 58, true);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY migrations (id, migration, batch) FROM stdin;
1	0000_00_00_000000_create_websockets_statistics_entries_table	1
2	2014_10_12_000000_create_users_table	1
3	2014_10_12_100000_create_password_resets_table	1
4	2019_08_19_000000_create_failed_jobs_table	1
5	2019_12_14_000001_create_personal_access_tokens_table	1
6	2022_07_22_072324_create_country_models_table	1
7	2022_07_28_095424_create_category_table	1
8	2022_07_29_113349_create_products_table	1
9	2022_07_29_115922_create_product_attributes_table	1
10	2022_07_29_121226_create_product_images_table	1
11	2022_08_01_044301_add_deleted_to_country_table	1
12	2022_08_01_052546_create_industry_types_table	1
13	2022_08_01_072954_create_attributes_table	1
14	2022_08_01_081612_create_attribute_type_table	1
15	2022_08_01_105755_create_attribute_values_table	1
16	2022_08_03_162220_create_users_role_table	1
17	2022_08_04_085250_create_states_table	1
18	2022_08_04_085323_create_cities_table	1
19	2022_08_04_102446_create_stores_table	1
20	2022_08_04_153341_update_users_table	1
21	2022_08_05_041320_create_vendor_details	1
22	2022_08_05_044559_create_bank_details	1
23	2022_08_05_055145_create_store_images_table	1
24	2022_08_05_162828_add_active_to_users	1
25	2022_08_05_165055_add_deleted_to_users	1
26	2022_08_06_042655_add_industry_type_to_vendor_details	1
27	2022_08_06_052804_update_vendor_details_table	1
28	2022_08_06_053808_alter_table_vendor_details_change_chamber_of_commerce_doc	1
29	2022_08_06_071210_alter_product_attribute_add_extra	1
30	2022_08_06_072956_alter_product_images_add_attribute_id	1
31	2022_08_06_155049_update_bank_details_table	1
32	2022_08_10_034617_alter_table_vendor_details_change_homedelivery	1
33	2022_08_10_153155_create_app_banners	1
34	2022_08_11_065227_create_articles	1
35	2022_08_11_071259_create_faq	1
36	2022_08_11_162220_create_bank	1
37	2022_08_14_152538_create_contact_us_settings	1
38	2022_08_14_154810_create_settings	1
39	2022_08_14_160604_create_notifications	1
40	2022_08_16_151905_create_product	1
41	2022_08_16_160300_add_display_name_to_users	1
42	2022_08_16_160422_add_business_name_to_users	1
43	2022_08_16_163007_create_product_attribute	1
44	2022_08_16_163708_create_product_attribute_values	1
45	2022_08_17_105931_create_product_category	1
46	2022_08_17_111528_drop_product_attributes	1
47	2022_08_17_113326_create_product_selected_attribute_list	1
48	2022_08_17_114730_create_product_docs	1
49	2022_08_17_143257_create_order_products	1
50	2022_08_17_144802_create_product_specifications	1
51	2022_08_17_145318_create_product_variations	1
52	2022_08_19_041937_create_brand	1
53	2022_08_19_042907_add_deleted_to_brand	1
54	2022_08_19_103034_alter_table_product_attribute_change_attribute_type	1
55	2022_08_19_103645_alter_table_product_attribute_change_is_deleted	1
56	2022_08_19_121718_alter_table_product_attribute_values_change_attribute_value_color	1
57	2022_08_19_121948_alter_table_product_attribute_values_change_attribute_value_label	1
58	2022_08_19_124250_create_product_selected_attributes_table	1
59	2022_08_20_050413_add_brand_to_product	1
60	2022_08_23_124030_create_bank_code_types	1
61	2022_08_24_035518_create_store_managers_types	1
62	2022_08_24_081624_add_columns_to_users_table	1
63	2022_08_25_093923_create_posts_table	1
64	2022_08_25_102809_create_post_users_table	1
65	2022_08_26_075605_create_post_likes_table	1
66	2022_08_26_083919_create_post_comments_table	1
67	2022_08_26_094609_create_comment_taged_users_table	1
68	2022_08_26_120123_alter_post_commets_add_extra	1
69	2022_08_26_131152_create_comment_likes_table	1
70	2022_08_27_182018_add_store_id_to_product	1
71	2022_08_29_020455_add_vendor_to_users	1
72	2022_08_30_023652_add_commission_to_stores	1
73	2022_08_30_035602_create_store_likes_table	1
74	2022_08_30_035706_create_product_likes_table	1
75	2022_08_30_053123_create_user_follows_table	1
76	2022_08_30_083554_add_vendor_id_column_to_store_managers_types	1
77	2022_08_30_110300_alter_user_add_about_me	1
78	2022_08_30_113554_alter_post_add_post_status	1
79	2022_08_31_175858_add_verified_to_users	1
80	2022_09_01_093209_create_coupon	1
81	2022_09_02_042305_create_amount_type	1
82	2022_09_02_062335_add_applied_to_coupon	1
83	2022_09_02_070349_create_designation_table	1
84	2022_09_02_105714_add_columns_to_user_table	1
85	2022_09_02_151343_create_coupon_category	1
86	2022_09_02_162532_create_user_privileges_table	1
87	2022_09_03_060222_create_product_temp_image	1
88	2022_09_03_093842_alter_product_attribute_change_attribute_type	1
89	2022_09_04_035948_create_admin_designation	1
90	2022_09_04_144626_create_cart_table	1
91	2022_09_05_073828_add_tax_percentage_to_settings_table	1
92	2022_09_05_094102_remove_unique_phone_from_users_table	1
93	2022_09_06_011715_create_orders	1
94	2022_09_07_014840_add_start_date_coupon	1
95	2022_09_07_015521_add_minimum_amount_coupon	1
96	2022_09_08_010349_create_user_adresses_table	1
97	2022_09_08_024755_create_temp_order_products_table	1
98	2022_09_08_024821_create_temp_orders_table	1
99	2022_09_08_035231_alter_order_products	1
100	2022_09_08_042318_create_payment_report_table	1
101	2022_09_12_124711_drop_amount_type	1
102	2022_09_12_124846_amount_type	1
103	2022_09_13_043222_create_moda_main_categories_table	1
104	2022_09_13_043731_create_moda_sub_categories_table	1
105	2022_09_13_063112_create_hair_colors_table	1
106	2022_09_13_063148_create_skin_colors_table	1
107	2022_09_13_094928_alter_product_add_moda_categories	1
108	2022_09_13_100148_alter_users_add_extra	1
109	2022_09_14_052904_create_store_type_table	1
110	2022_09_14_072323_create_wallet_histories_table	1
111	2022_09_14_072738_alter_users_add_wallet_amount	1
112	2022_09_14_102301_create_my_moda_table	1
113	2022_09_14_104738_create_my_moda_items_table	1
114	2022_09_16_045220_create_post_saves_table	1
115	2022_09_17_060127_alter_posts_add_visibity	1
116	2022_09_19_041614_add_password_reset_code	1
117	2022_09_19_132546_create_help_table	1
118	2022_09_19_141934_add_land_mark	1
119	2022_09_20_094958_add_size_chart	1
120	2022_09_20_114010_add_store_type	1
121	2022_09_21_044300_alter_table_user_privileges_change_user_privileges	1
122	2022_09_21_063311_alter_post_add_extra_image_names	1
123	2022_09_23_125130_alter_table_store_type_change_banner_image	2
124	2022_09_23_135257_add_txt_location	2
125	2022_09_24_034810_add_approve	3
126	2022_10_10_144757_create_service_category	4
127	2022_10_11_053449_create_service	5
128	2022_10_22_112559_create_service_category_selected	6
129	2022_10_22_122802_drop_category_from_service	6
130	2022_10_25_030016_create_vendor_services_table	7
131	2022_10_25_051258_drop_area_from_vendor_details	8
132	2022_10_25_051355_add_area	8
133	2022_10_27_061349_drop_coupon	9
134	2022_10_27_062118_create_coupon	9
135	2022_10_27_063447_create_coupon_products	9
136	2022_10_27_071451_add_featured	9
137	2022_10_27_102343_add_user_permissions_column	10
138	2022_10_27_103447_add_password_reset_otp	10
139	2022_10_28_054725_add_pharmacycommission	11
140	2022_10_28_055919_add_featured_flag	11
141	2022_10_29_165317_create_product_master	12
142	2022_10_30_102118_add_master_product	13
143	2022_10_31_070219_create_likes	13
144	2022_10_31_072641_add_description	13
145	2022_11_02_050059_add_location	14
146	2022_11_02_052609_create_wallet_payment_report	14
147	2022_11_03_064022_create_ratings	15
148	2022_11_04_123322_create_featured_products	15
149	2022_11_04_123438_create_featured_products_img	15
150	2022_11_07_115737_create_cart_service	16
151	2022_11_09_042245_add_iban	17
152	2022_11_09_053111_create_contact_us	18
153	2022_11_10_052857_create_temp_service_orders	19
154	2022_11_10_053649_create_temp_service_order_items	19
155	2022_11_10_065916_create_orders_services_items	20
156	2022_11_10_071401_add_booking_date	20
157	2022_11_10_072709_create_orders_services	20
158	2022_11_10_074136_create_product_master_request	21
159	2022_11_10_120556_add_product_type	22
160	2022_11_10_121824_create_attribute_values_request	22
161	2022_11_11_043038_create_coupon_services	23
163	2022_11_11_100549_add_cover_image	24
164	2022_11_14_045017_add_pay_method	25
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('migrations_id_seq', 164, true);


--
-- Data for Name: moda_main_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY moda_main_categories (id, name, created_at, updated_at) FROM stdin;
1	Head	2022-09-22 15:10:05	\N
2	Upper Body	2022-09-22 15:10:05	\N
3	Lower Body	2022-09-22 15:10:05	\N
4	Footwear	2022-09-22 15:10:05	\N
5	Makeup	2022-09-22 15:10:05	\N
6	Accessories	2022-09-22 15:10:05	\N
\.


--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('moda_main_categories_id_seq', 6, true);


--
-- Data for Name: moda_sub_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY moda_sub_categories (id, main_category, name, gender, image, active, sort_order, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('moda_sub_categories_id_seq', 1, false);


--
-- Data for Name: my_moda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY my_moda (id, user_id, date, created_at, updated_at) FROM stdin;
\.


--
-- Name: my_moda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('my_moda_id_seq', 1, false);


--
-- Data for Name: my_moda_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY my_moda_items (id, my_moda_id, product_id, product_attribute_id, moda_sub_category, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: my_moda_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('my_moda_items_id_seq', 1, false);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notifications (id, description, title, image, created_at, updated_at) FROM stdin;
1	abcd	test		2022-11-08 13:11:00	\N
\.


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('notifications_id_seq', 1, true);


--
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY order_products (id, order_id, product_id, product_attribute_id, product_type, quantity, price, discount, total, vendor_id, order_status, admin_commission, vendor_commission, shipping_charge) FROM stdin;
1	1	7	9	1	1	100	0	100	17	1	0	0	0
2	2	5	7	1	1	101.5	0	101.5	5	1	0	0	0
3	2	3	4	1	1	120	0	120	6	1	0	0	0
4	3	2	3	2	3	25	0	75	6	1	0	0	0
5	3	3	4	1	3	120	0	360	6	1	0	0	0
6	3	4	6	2	1	100	0	100	6	1	0	0	0
7	3	9	11	1	1	80	0	80	40	1	0	0	0
8	4	2	3	2	3	25	0	75	6	1	0	0	0
9	4	3	4	1	3	120	0	360	6	1	0	0	0
10	4	4	6	2	1	100	0	100	6	1	0	0	0
11	4	9	11	1	1	80	0	80	40	1	0	0	0
12	5	3	4	1	1	120	0	120	6	1	0	0	0
13	6	3	4	1	1	120	0	120	6	1	0	0	0
14	6	4	6	2	1	100	0	100	6	1	0	0	0
15	7	3	4	1	1	120	0	120	6	1	0	0	0
16	7	4	6	2	1	100	0	100	6	1	0	0	0
17	8	3	4	1	1	120	0	120	6	1	0	0	0
18	8	4	6	2	1	100	0	100	6	1	0	0	0
19	9	3	4	1	1	120	0	120	6	1	0	0	0
20	9	4	6	2	1	100	0	100	6	1	0	0	0
21	10	10	12	1	1	190	0	190	46	1	0	0	0
22	11	4	6	2	1	100	0	100	6	1	0	0	0
23	11	3	4	1	1	120	0	120	6	1	0	0	0
24	12	3	4	1	1	120	0	120	6	1	0	0	0
25	13	3	4	1	4	120	0	480	6	1	0	0	0
26	13	4	6	2	1	100	0	100	6	1	0	0	0
27	14	4	6	2	1	100	0	100	6	1	0	0	0
28	14	3	4	1	1	120	0	120	6	1	0	0	0
29	15	14	16	1	5	100	0	500	40	1	0	0	0
30	15	9	11	1	6	80	0	480	40	1	0	0	0
31	16	3	4	1	1	120	0	120	6	1	0	0	0
32	16	2	3	2	1	25	0	25	6	1	0	0	0
33	16	4	6	2	1	100	0	100	6	1	0	0	0
34	17	25	27	1	1	80	0	80	40	1	0	0	0
35	18	4	6	2	1	100	0	100	6	1	0	0	0
36	19	14	16	1	1	100	0	100	40	1	0	0	0
\.


--
-- Name: order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_products_id_seq', 36, true);


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY orders (order_id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, status, booking_date, total_qty, total_items_qty, oder_type, admin_commission, vendor_commission, shipping_charge, created_at, updated_at) FROM stdin;
2	356370e8a1072931668343969	35	8	221.5	0	0	221.5	2	1	2022-11-13 12:53:19	2	2	0	0	0	0	2022-11-13 12:53:19	2022-11-13 12:53:19
3	356371d3dfa322f1668404191	35	9	615	0	0	615	1	1	2022-11-14 05:36:31	4	8	0	0	0	0	2022-11-14 05:36:31	2022-11-14 05:36:31
4	356371d3e3f28461668404195	35	9	615	0	0	615	2	1	2022-11-14 05:37:12	4	8	0	0	0	0	2022-11-14 05:37:12	2022-11-14 05:37:12
5	356371d5ad511011668404653	35	9	120	0	0	120	2	1	2022-11-14 05:44:39	1	1	0	0	0	0	2022-11-14 05:44:39	2022-11-14 05:44:39
6	566371e1c2eed571668407746	56	14	220	0	0	220	1	1	2022-11-14 06:35:46	2	2	0	0	0	0	2022-11-14 06:35:46	2022-11-14 06:35:46
7	566371e2c77bede1668408007	56	14	220	0	0	220	1	1	2022-11-14 06:40:07	2	2	0	0	0	0	2022-11-14 06:40:07	2022-11-14 06:40:07
8	566371e2ff0304d1668408063	56	14	220	0	0	220	1	1	2022-11-14 06:41:03	2	2	0	0	0	0	2022-11-14 06:41:03	2022-11-14 06:41:03
9	566371e513ca71c1668408595	56	14	220	0	0	220	2	1	2022-11-14 06:50:22	2	2	0	0	0	0	2022-11-14 06:50:22	2022-11-14 06:50:22
10	396371e7f71a6bf1668409335	39	11	190	0	0	190	1	1	2022-11-14 07:02:15	1	1	0	0	0	0	2022-11-14 07:02:15	2022-11-14 07:02:15
11	566371eb5c928781668410204	56	14	220	0	0	220	1	1	2022-11-14 07:16:44	2	2	0	0	0	0	2022-11-14 07:16:44	2022-11-14 07:16:44
12	566371eba8d2bf51668410280	56	14	120	0	0	120	1	1	2022-11-14 07:18:00	1	1	0	0	0	0	2022-11-14 07:18:00	2022-11-14 07:18:00
13	566371ee3c848c81668410940	56	14	580	0	0	580	5	1	2022-11-14 07:29:01	2	5	0	0	0	0	2022-11-14 07:29:01	2022-11-14 07:29:01
14	5863720be8660911668418536	58	17	220	0	0	220	5	1	2022-11-14 09:35:37	2	2	0	0	0	0	2022-11-14 09:35:37	2022-11-14 09:35:37
15	566373a2a1565321668522657	56	16	980	0	0	980	1	1	2022-11-15 14:30:57	2	11	0	0	0	0	2022-11-15 14:30:57	2022-11-15 14:30:57
16	586373aaeec63641668524782	58	17	245	0	0	245	5	1	2022-11-15 15:06:23	3	3	0	0	0	0	2022-11-15 15:06:23	2022-11-15 15:06:23
17	546373bd87046d21668529543	54	15	80	0	0	80	5	1	2022-11-15 16:25:43	1	1	0	0	0	0	2022-11-15 16:25:43	2022-11-15 16:25:43
18	766373e56f288131668539759	76	24	100	0	0	100	1	1	2022-11-15 19:15:59	1	1	0	0	0	0	2022-11-15 19:15:59	2022-11-15 19:15:59
19	766373fef2146b61668546290	76	24	100	0	0	100	4	1	2022-11-15 21:05:09	1	1	0	0	0	0	2022-11-15 21:05:09	2022-11-15 21:05:09
\.


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orders_order_id_seq', 19, true);


--
-- Data for Name: orders_services; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY orders_services (order_id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, status, booking_date, admin_commission, vendor_commission, created_at, updated_at) FROM stdin;
1	39636caa0344d811668065795	39	4	100	0	0	100	2	1	2022-11-10 07:36:56	\N	\N	2022-11-10 07:36:56	2022-11-10 07:36:56
2	356371c83d8b7161668401213	35	9	100	0	0	100	1	1	2022-11-14 04:46:53	\N	\N	2022-11-14 04:46:53	2022-11-14 04:46:53
3	356371c8aa3eb2b1668401322	35	9	110	0	0	110	2	1	2022-11-14 04:49:16	\N	\N	2022-11-14 04:49:16	2022-11-14 04:49:16
4	356371d16c62ec41668403564	35	9	100	0	0	100	1	1	2022-11-14 05:26:04	\N	\N	2022-11-14 05:26:04	2022-11-14 05:26:04
5	356371d180324311668403584	35	9	100	0	0	100	1	1	2022-11-14 05:26:24	\N	\N	2022-11-14 05:26:24	2022-11-14 05:26:24
6	356371d1cd967d71668403661	35	9	100	0	0	100	1	1	2022-11-14 05:27:41	\N	\N	2022-11-14 05:27:41	2022-11-14 05:27:41
7	356371d235023db1668403765	35	9	100	0	0	100	1	1	2022-11-14 05:29:25	\N	\N	2022-11-14 05:29:25	2022-11-14 05:29:25
8	356371d23c47c551668403772	35	9	100	0	0	100	1	1	2022-11-14 05:29:32	\N	\N	2022-11-14 05:29:32	2022-11-14 05:29:32
9	356371d250dbc2e1668403792	35	9	100	0	0	100	1	1	2022-11-14 05:29:52	\N	\N	2022-11-14 05:29:52	2022-11-14 05:29:52
10	356371d6bf867821668404927	35	9	100	0	0	100	1	1	2022-11-14 05:48:47	\N	\N	2022-11-14 05:48:47	2022-11-14 05:48:47
11	356371d6c285aca1668404930	35	9	100	0	0	100	2	1	2022-11-14 05:49:15	\N	\N	2022-11-14 05:49:15	2022-11-14 05:49:15
12	396371d8c3b44b61668405443	39	12	110	0	0	110	2	1	2022-11-14 05:57:43	\N	\N	2022-11-14 05:57:43	2022-11-14 05:57:43
13	396371d98a30c551668405642	39	12	110	0	0	110	2	1	2022-11-14 06:00:58	\N	\N	2022-11-14 06:00:58	2022-11-14 06:00:58
14	20637243ec1f2f51668432876	20	18	120	0	0	120	5	1	2022-11-14 13:34:36	\N	\N	2022-11-14 13:34:36	2022-11-14 13:34:36
15	396373683f837871668507711	39	4	110	0	0	110	5	1	2022-11-15 10:21:52	\N	\N	2022-11-15 10:21:52	2022-11-15 10:21:52
16	766373fea82a8811668546216	76	24	100	0	0	100	4	1	2022-11-15 21:04:01	\N	\N	2022-11-15 21:04:01	2022-11-15 21:04:01
\.


--
-- Data for Name: orders_services_items; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY orders_services_items (id, order_id, service_id, price, discount, total, order_status, admin_commission, vendor_commission, booking_date, created_at, updated_at) FROM stdin;
1	1	1	100	0	100	1	0	0	2022-11-30 00:30:00	2022-11-10 07:36:56	2022-11-10 07:36:56
2	2	1	100	0	100	1	0	0	2022-11-14 08:30:00	2022-11-14 04:46:53	2022-11-14 04:46:53
3	3	3	110	0	110	1	0	0	2022-11-16 10:00:00	2022-11-14 04:49:16	2022-11-14 04:49:16
4	4	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:26:04	2022-11-14 05:26:04
5	5	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:26:24	2022-11-14 05:26:24
6	6	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:27:41	2022-11-14 05:27:41
7	7	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:29:25	2022-11-14 05:29:25
8	8	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:29:32	2022-11-14 05:29:32
9	9	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:29:52	2022-11-14 05:29:52
10	10	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:48:47	2022-11-14 05:48:47
11	11	1	100	0	100	1	0	0	2022-11-15 08:30:00	2022-11-14 05:49:15	2022-11-14 05:49:15
12	12	3	110	0	110	1	0	0	2022-11-30 00:30:00	2022-11-14 05:57:43	2022-11-14 05:57:43
13	13	3	110	0	110	1	0	0	2022-11-30 00:30:00	2022-11-14 06:00:58	2022-11-14 06:00:58
14	14	7	120	0	120	1	0	0	2022-11-15 08:30:00	2022-11-14 13:34:36	2022-11-14 13:34:36
15	15	3	110	0	110	1	0	0	2022-11-30 00:30:00	2022-11-15 10:21:52	2022-11-15 10:21:52
16	16	1	100	0	100	1	0	0	2022-11-17 09:00:00	2022-11-15 21:04:01	2022-11-15 21:04:01
\.


--
-- Name: orders_services_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('orders_services_items_id_seq', 16, true);


--
-- Name: orders_services_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('orders_services_order_id_seq', 16, true);


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payment_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY payment_report (id, transaction_id, payment_status, user_id, ref_id, amount, method_type, vat, wallet_amount_used, created_at, updated_at) FROM stdin;
1	21636271ae147891667396014	A	21	21636271ae147891667396014	100.00	1	0.00	0.00	2022-11-02 13:33:34	2022-11-02 13:33:59
2	39636caa0344d811668065795	A	39	39636caa0344d811668065795	100.00	1	0.00	0.00	2022-11-10 07:36:35	2022-11-10 07:36:56
3	39636d04d6422161668089046	P	39	39636d04d6422161668089046	120.00	1	0.00	0.00	2022-11-10 14:04:06	\N
4	356370e8a1072931668343969	A	35	356370e8a1072931668343969	221.50	1	0.00	0.00	2022-11-13 12:52:49	2022-11-13 12:53:19
5	356371c83d8b7161668401213	A	35	356371c83d8b7161668401213	100.00	1	0.00	100.00	2022-11-14 04:46:53	2022-11-14 04:46:53
6	356371c8aa3eb2b1668401322	A	35	356371c8aa3eb2b1668401322	110.00	1	0.00	0.00	2022-11-14 04:48:42	2022-11-14 04:49:16
7	356371cc90cc6691668402320	P	35	356371cc90cc6691668402320	80.00	1	0.00	0.00	2022-11-14 05:05:21	\N
8	356371d00a45be91668403210	P	35	356371d00a45be91668403210	80.00	1	0.00	0.00	2022-11-14 05:20:10	\N
9	356371d16c62ec41668403564	A	35	356371d16c62ec41668403564	100.00	1	0.00	100.00	2022-11-14 05:26:04	2022-11-14 05:26:04
10	356371d180324311668403584	A	35	356371d180324311668403584	100.00	1	0.00	100.00	2022-11-14 05:26:24	2022-11-14 05:26:24
11	356371d1cd967d71668403661	A	35	356371d1cd967d71668403661	100.00	1	0.00	100.00	2022-11-14 05:27:41	2022-11-14 05:27:41
12	356371d235023db1668403765	A	35	356371d235023db1668403765	100.00	1	0.00	100.00	2022-11-14 05:29:25	2022-11-14 05:29:25
13	356371d23c47c551668403772	A	35	356371d23c47c551668403772	100.00	1	0.00	100.00	2022-11-14 05:29:32	2022-11-14 05:29:32
14	356371d24769f7e1668403783	P	35	356371d24769f7e1668403783	100.00	1	0.00	0.00	2022-11-14 05:29:43	\N
15	356371d250dbc2e1668403792	A	35	356371d250dbc2e1668403792	100.00	1	0.00	100.00	2022-11-14 05:29:52	2022-11-14 05:29:52
16	356371d3dfa322f1668404191	A	35	356371d3dfa322f1668404191	615.00	1	0.00	615.00	2022-11-14 05:36:31	2022-11-14 05:36:31
17	356371d3e3f28461668404195	A	35	356371d3e3f28461668404195	615.00	1	0.00	0.00	2022-11-14 05:36:36	2022-11-14 05:37:12
18	356371d5ad511011668404653	A	35	356371d5ad511011668404653	120.00	1	0.00	0.00	2022-11-14 05:44:13	2022-11-14 05:44:39
19	356371d6bf867821668404927	A	35	356371d6bf867821668404927	100.00	1	0.00	100.00	2022-11-14 05:48:47	2022-11-14 05:48:47
20	356371d6c285aca1668404930	A	35	356371d6c285aca1668404930	100.00	1	0.00	0.00	2022-11-14 05:48:50	2022-11-14 05:49:15
21	396371d7d3ab3521668405203	P	39	396371d7d3ab3521668405203	110.00	1	0.00	0.00	2022-11-14 05:53:24	\N
22	396371d8c3b44b61668405443	A	39	396371d8c3b44b61668405443	110.00	1	0.00	0.00	2022-11-14 05:57:24	2022-11-14 05:57:43
23	396371d98a30c551668405642	A	39	396371d98a30c551668405642	110.00	1	0.00	0.00	2022-11-14 06:00:42	2022-11-14 06:00:58
24	566371e1c2eed571668407746	A	56	566371e1c2eed571668407746	220.00	1	0.00	220.00	2022-11-14 06:35:46	2022-11-14 06:35:46
25	566371e2bf749141668407999	P	56	566371e2bf749141668407999	220.00	1	0.00	0.00	2022-11-14 06:39:59	\N
26	566371e2c77bede1668408007	A	56	566371e2c77bede1668408007	220.00	1	0.00	220.00	2022-11-14 06:40:07	2022-11-14 06:40:07
27	566371e2ff0304d1668408063	A	56	566371e2ff0304d1668408063	220.00	1	0.00	220.00	2022-11-14 06:41:03	2022-11-14 06:41:03
28	566371e324a845f1668408100	P	56	566371e324a845f1668408100	220.00	1	0.00	0.00	2022-11-14 06:41:41	\N
29	566371e4e3960501668408547	P	56	566371e4e3960501668408547	220.00	1	0.00	0.00	2022-11-14 06:49:08	\N
30	566371e513ca71c1668408595	A	56	566371e513ca71c1668408595	220.00	1	0.00	0.00	2022-11-14 06:49:56	2022-11-14 06:50:22
31	396371e7f71a6bf1668409335	A	39	396371e7f71a6bf1668409335	190.00	1	0.00	190.00	2022-11-14 07:02:15	2022-11-14 07:02:15
32	566371eb5c928781668410204	A	56	566371eb5c928781668410204	220.00	1	0.00	220.00	2022-11-14 07:16:44	2022-11-14 07:16:44
33	566371eba8d2bf51668410280	A	56	566371eba8d2bf51668410280	120.00	1	0.00	120.00	2022-11-14 07:18:00	2022-11-14 07:18:00
34	566371ecf16f7e01668410609	P	56	566371ecf16f7e01668410609	340.00	1	0.00	0.00	2022-11-14 07:23:29	\N
35	566371edc13369c1668410817	P	56	566371edc13369c1668410817	580.00	1	0.00	0.00	2022-11-14 07:26:57	\N
36	566371ee3c848c81668410940	A	56	566371ee3c848c81668410940	580.00	1	0.00	0.00	2022-11-14 07:29:00	2022-11-14 07:29:01
37	5863720be8660911668418536	A	58	5863720be8660911668418536	220.00	1	0.00	0.00	2022-11-14 09:35:36	2022-11-14 09:35:37
38	20637243ec1f2f51668432876	A	20	20637243ec1f2f51668432876	120.00	1	0.00	0.00	2022-11-14 13:34:36	2022-11-14 13:34:36
39	396373683f837871668507711	A	39	396373683f837871668507711	110.00	1	0.00	0.00	2022-11-15 10:21:51	2022-11-15 10:21:52
40	566373a2a1565321668522657	A	56	566373a2a1565321668522657	980.00	1	0.00	980.00	2022-11-15 14:30:57	2022-11-15 14:30:57
41	586373aaeec63641668524782	A	58	586373aaeec63641668524782	245.00	1	0.00	0.00	2022-11-15 15:06:23	2022-11-15 15:06:23
42	546373bd87046d21668529543	A	54	546373bd87046d21668529543	80.00	1	0.00	0.00	2022-11-15 16:25:43	2022-11-15 16:25:43
43	766373e56f288131668539759	A	76	766373e56f288131668539759	100.00	1	0.00	100.00	2022-11-15 19:15:59	2022-11-15 19:15:59
44	766373fea82a8811668546216	A	76	766373fea82a8811668546216	100.00	1	0.00	0.00	2022-11-15 21:03:36	2022-11-15 21:04:01
45	766373fef2146b61668546290	A	76	766373fef2146b61668546290	100.00	1	0.00	0.00	2022-11-15 21:04:50	2022-11-15 21:05:09
\.


--
-- Name: payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('payment_report_id_seq', 45, true);


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
1	App\\Models\\User	19	Personal Access Token	70b6b5634866a75a4738fa005fb882553735f38d108ad163c17a25cedd733221	["*"]	\N	2022-10-29 04:34:04	2022-10-29 04:34:04
2	App\\Models\\User	19	Personal Access Token	d66d6fef2e36dc784d5684a37ea19af64c4db2574a3868b283f6174919d051ee	["*"]	\N	2022-10-29 04:35:58	2022-10-29 04:35:58
3	App\\Models\\User	19	Personal Access Token	d3cadd61ee6a8ba7121a809f517ef887fb3eb33cff25ab999516ee86792e7e9a	["*"]	\N	2022-10-29 06:59:54	2022-10-29 06:59:54
4	App\\Models\\User	19	Personal Access Token	ef59d51b0d08509d40a9188ea5e94545f66c6c342e3f7a023bc5c1c9dece063c	["*"]	\N	2022-10-31 15:42:54	2022-10-31 15:42:54
5	App\\Models\\User	19	Personal Access Token	bf458fecd78c50d888d44ca39a8f2aed10d2307be3276f7185a0c289b1f22490	["*"]	\N	2022-11-02 05:33:13	2022-11-02 05:33:13
6	App\\Models\\User	21	Personal Access Token	d89799368f936e025ed3b6939d61024958f80fed60654dd89872e2985c4b82b0	["*"]	\N	2022-11-02 13:31:23	2022-11-02 13:31:23
7	App\\Models\\User	21	Personal Access Token	d0d3eab5aa21fd6e11e1a742d2b0f73df037e6e80ca28f9861f019226b977516	["*"]	\N	2022-11-02 13:31:29	2022-11-02 13:31:29
8	App\\Models\\User	21	Personal Access Token	8a97f134cccdeeaae627d8cc908e7853b006c493679d98d43e2d452219b7d846	["*"]	\N	2022-11-04 19:21:32	2022-11-04 19:21:32
9	App\\Models\\User	21	Personal Access Token	731977955980472db230cb0125617eae40cd3dbb16958441e719c915c92d503f	["*"]	\N	2022-11-04 20:40:59	2022-11-04 20:40:59
10	App\\Models\\User	21	Personal Access Token	a1e94dc595e170c474630eee7fbf5893842a103dc705002ecc38fa5771a9cd6d	["*"]	\N	2022-11-05 05:47:45	2022-11-05 05:47:45
11	App\\Models\\User	21	Personal Access Token	995b67c9efaa9957bf92bd37950da469b1afa44a2d3e1b5f32083342f1ffa0bc	["*"]	\N	2022-11-05 05:49:32	2022-11-05 05:49:32
12	App\\Models\\User	31	Personal Access Token	fc3302e6ec41867f5be4d9717cc6fe57e82e293e9bd348bc54537eb92a45b29f	["*"]	\N	2022-11-06 12:34:42	2022-11-06 12:34:42
13	App\\Models\\User	31	Personal Access Token	3394e16af170f2b879d4996a7ae9b1d4167623d5d65fc402ad22d6dbb27c7721	["*"]	\N	2022-11-06 12:37:38	2022-11-06 12:37:38
14	App\\Models\\User	32	Personal Access Token	73e72e406c1d7cc893d5ff926a37137f28a3cc8329e271250f7efd9cd351820a	["*"]	\N	2022-11-06 12:42:21	2022-11-06 12:42:21
15	App\\Models\\User	32	Personal Access Token	40be6d12a8609023429ab72b37ad082eab3b22f7e440c37ceca9c18e4961d0e8	["*"]	\N	2022-11-06 12:42:56	2022-11-06 12:42:56
16	App\\Models\\User	32	Personal Access Token	b9e102b92e3e7c650b554dd1cc1466cb4a84e603bf920aeed7411fc870d49609	["*"]	\N	2022-11-06 12:45:20	2022-11-06 12:45:20
17	App\\Models\\User	33	Personal Access Token	854ceef190f8b86f03c7a14df33182012b41566fcfba76af829a6cf146379433	["*"]	\N	2022-11-06 12:47:26	2022-11-06 12:47:26
18	App\\Models\\User	34	Personal Access Token	b0e39532255aa299e68d1d4a3d3276ea9e79a77d6f32a2d533a09d2531d350dc	["*"]	\N	2022-11-06 12:49:47	2022-11-06 12:49:47
19	App\\Models\\User	35	Personal Access Token	5af35d965881a1719b5e8471a3d8842222e5761172a05f7491611af411a1fafd	["*"]	\N	2022-11-06 17:56:41	2022-11-06 17:56:41
20	App\\Models\\User	36	Personal Access Token	5a13d92244bd07fe336db5718ba0b2b11210bf95c6724a9eadde411a83af0461	["*"]	\N	2022-11-06 18:02:38	2022-11-06 18:02:38
21	App\\Models\\User	37	Personal Access Token	76377df38f99c3135d76c436374313aca034c6ce05108537632ff0bb73c207ff	["*"]	\N	2022-11-07 04:14:45	2022-11-07 04:14:45
22	App\\Models\\User	35	Personal Access Token	797177ce6893f76d0f9f23a0d16d2e3eeb169e12356420123c01269518230d2c	["*"]	\N	2022-11-07 04:49:36	2022-11-07 04:49:36
23	App\\Models\\User	35	Personal Access Token	38de3bf8fb1bb3c13e64ec9c15737f3bbeeab9f4d58392f57d032a66be67102f	["*"]	\N	2022-11-07 04:49:36	2022-11-07 04:49:36
24	App\\Models\\User	35	Personal Access Token	5c54a48dc47e55ea9aa984bd8d20be15c618c2f5e05eda4bf4f3fce17f57b458	["*"]	\N	2022-11-07 05:10:14	2022-11-07 05:10:14
25	App\\Models\\User	38	Personal Access Token	514e576f0ad1e3452718349676fa6e13782fd38832a0a5b57c77a9d1844a36ae	["*"]	\N	2022-11-07 05:21:30	2022-11-07 05:21:30
26	App\\Models\\User	35	Personal Access Token	b3d4c3a54ecfaac170b6f9f61989162f0032a6a3ee6b53e00528f0291b493d50	["*"]	\N	2022-11-07 05:39:14	2022-11-07 05:39:14
27	App\\Models\\User	41	Personal Access Token	d991d58318b15396ec0ea7b8b64ec146602336214a499378e1bfe1004517eb6d	["*"]	\N	2022-11-07 05:52:44	2022-11-07 05:52:44
28	App\\Models\\User	39	Personal Access Token	563077a4257d18f4d52fa0f069853ebeba6e0f9f0902830c78af5c85afa4794e	["*"]	\N	2022-11-07 05:58:53	2022-11-07 05:58:53
29	App\\Models\\User	39	Personal Access Token	59718c8b4e0900080bea99c622c652d3cae7844e7951b1d33223f1dc720945ab	["*"]	\N	2022-11-07 05:58:58	2022-11-07 05:58:58
30	App\\Models\\User	35	Personal Access Token	b2174f1d05896536d624bc0eef0ee1ffaa01562d97a64d1d3185c1d6ea1ae1cf	["*"]	\N	2022-11-07 06:09:52	2022-11-07 06:09:52
31	App\\Models\\User	35	Personal Access Token	41085a27dcc78986eb489be7751c10f9cad610625d532cf435b6732bcde45f05	["*"]	\N	2022-11-07 06:31:30	2022-11-07 06:31:30
32	App\\Models\\User	35	Personal Access Token	0f0b75806d6b32856a550fcef92aa00f976afcfbdc44e7be311881f434c0823c	["*"]	\N	2022-11-07 07:47:07	2022-11-07 07:47:07
33	App\\Models\\User	35	Personal Access Token	53f17405b8f983b1d564ad958d716b7df9abe64b29af0a6ab83d5b4c07fdf79d	["*"]	\N	2022-11-07 07:59:44	2022-11-07 07:59:44
34	App\\Models\\User	17	Personal Access Token	67b7843131d4109c3a9bd778d75e1780bb276ea6b189ecefaaa5c767be8b4691	["*"]	\N	2022-11-07 08:02:38	2022-11-07 08:02:38
35	App\\Models\\User	42	Personal Access Token	46bee5387a083864f7c20a53731aaff50ddc8f8ded7c6e3e5bdb63f91362b832	["*"]	\N	2022-11-07 08:08:29	2022-11-07 08:08:29
36	App\\Models\\User	42	Personal Access Token	a68a4a1e3b78bfea0413e04cc6deb9b2e0ab01c9a8027250447b2efed9ba7ca8	["*"]	\N	2022-11-07 09:43:18	2022-11-07 09:43:18
37	App\\Models\\User	42	Personal Access Token	0abc35005185ee2417035fed0ba03d6708584426912115de22bec19d06d69b14	["*"]	\N	2022-11-07 09:45:36	2022-11-07 09:45:36
38	App\\Models\\User	39	Personal Access Token	97307994d2ae073dc8e9321ff547fcb255504dbb1449cf9743de92a5afca2314	["*"]	\N	2022-11-07 12:56:47	2022-11-07 12:56:47
39	App\\Models\\User	35	Personal Access Token	94e1b6e802b93c150b8e43e20c340e0c5dd89f0ce95020343f6a09ff21e4f7d2	["*"]	\N	2022-11-07 13:13:35	2022-11-07 13:13:35
40	App\\Models\\User	39	Personal Access Token	ce6c30ec24ce282b3ef3d2dd4a2f267170e6050323b49730d8f8fb3a580c67f6	["*"]	\N	2022-11-07 13:25:10	2022-11-07 13:25:10
41	App\\Models\\User	39	Personal Access Token	13dbfc7994549c9b829c993da64bdb21e84514f48bf787368b71f61be620bd11	["*"]	\N	2022-11-07 14:04:46	2022-11-07 14:04:46
42	App\\Models\\User	39	Personal Access Token	e92df58c7cc086eca179f34ab64aabb213b674aa9410dd9ac7c17cf13068569b	["*"]	\N	2022-11-07 14:18:35	2022-11-07 14:18:35
43	App\\Models\\User	39	Personal Access Token	7b15743543ed08f3c2bb1e5232e3a5ca4b6e9e58f93365c8f8f321c79f437160	["*"]	\N	2022-11-07 14:18:42	2022-11-07 14:18:42
44	App\\Models\\User	39	Personal Access Token	80ff7514f290285f03f6e57b53e982366c91fb917690ce40205a8935fb432839	["*"]	\N	2022-11-07 14:19:27	2022-11-07 14:19:27
45	App\\Models\\User	39	Personal Access Token	959ff0e14cb78f587c40ecc13abe937fbf9909008b88bc129a2db4e20e763d27	["*"]	\N	2022-11-07 14:22:09	2022-11-07 14:22:09
46	App\\Models\\User	39	Personal Access Token	132d195066825f71739ea03315dd57652b9d73ce3891405c6d1431df4fd0e262	["*"]	\N	2022-11-07 15:57:32	2022-11-07 15:57:32
47	App\\Models\\User	39	Personal Access Token	ee579efa59ab8fb9cd7e54b1a0e18c6085efe5663a48c8078c13a89209c2b229	["*"]	\N	2022-11-07 15:58:06	2022-11-07 15:58:06
48	App\\Models\\User	39	Personal Access Token	82470bfe114144ac59fce2d7e7523436eaafb59ff5cba13d6e9261296848f0e3	["*"]	\N	2022-11-07 16:00:34	2022-11-07 16:00:34
49	App\\Models\\User	39	Personal Access Token	dbf0b8f5214c3e791063db32bbaeebe9531c0d22e2b6edb236a309c553ea19d6	["*"]	\N	2022-11-07 16:03:54	2022-11-07 16:03:54
50	App\\Models\\User	39	Personal Access Token	e02f8490723442aa3532ed3796a4c4cafb093dc24048ca48add03ba638e3b3ca	["*"]	\N	2022-11-07 16:05:49	2022-11-07 16:05:49
51	App\\Models\\User	35	Personal Access Token	62f13feba215b22399d54d6c9705fa1a6876fe9ff6d9464f5843fe2b6e51b25e	["*"]	\N	2022-11-07 18:51:25	2022-11-07 18:51:25
52	App\\Models\\User	39	Personal Access Token	88164325c34c275e3c1c032c88a0f04415c2eca15f892f5466be3868cdcae19d	["*"]	\N	2022-11-07 21:10:15	2022-11-07 21:10:15
53	App\\Models\\User	39	Personal Access Token	081517395ace657269458943f6c5d8cfebd289202623813a2d6f4b343fcaf0a4	["*"]	\N	2022-11-07 21:13:21	2022-11-07 21:13:21
54	App\\Models\\User	39	Personal Access Token	3f4acf68fa256344bb52b7885f07a5ff297fcf54bde0e03212f74650eb368529	["*"]	\N	2022-11-07 21:16:42	2022-11-07 21:16:42
55	App\\Models\\User	39	Personal Access Token	dd2cb2564ed80ff9d6e1f244411898c7dd3a5ae14b086007aece7fac37214bd9	["*"]	\N	2022-11-07 21:28:32	2022-11-07 21:28:32
56	App\\Models\\User	39	Personal Access Token	a25e2b963391f6a34494b992dfd61c2bf54313dc00b8dfda548bae070fc740c3	["*"]	\N	2022-11-07 21:42:03	2022-11-07 21:42:03
57	App\\Models\\User	39	Personal Access Token	7afb1dd8af7e263604eb76804ff823ffea51762023ab5bf3a7518e688d63f1c0	["*"]	\N	2022-11-07 21:43:13	2022-11-07 21:43:13
58	App\\Models\\User	39	Personal Access Token	7ded9867702d19c4766e0120bf4f830c86f6fe119fbea790bab7bd2e53f11930	["*"]	\N	2022-11-07 21:45:33	2022-11-07 21:45:33
59	App\\Models\\User	39	Personal Access Token	9d1139fae7973f4eeedf31bebdca577703e7a035d67a8bbfe98229ba36d25cc3	["*"]	\N	2022-11-07 21:47:21	2022-11-07 21:47:21
60	App\\Models\\User	39	Personal Access Token	2d1f30b31077911dfa2032951fa50dc36b73137363dd2fedb9192b65b3f0881a	["*"]	\N	2022-11-07 21:50:16	2022-11-07 21:50:16
61	App\\Models\\User	39	Personal Access Token	2acca313c8f29d4722681f5c1fdae4e29ef1aadc944669a4488c4c748add8332	["*"]	\N	2022-11-07 21:52:10	2022-11-07 21:52:10
62	App\\Models\\User	39	Personal Access Token	9dad69e0c4b6804dd7aafd3b454d4c80e37a138bf623df2adedd61fa7fdc0925	["*"]	\N	2022-11-07 21:54:29	2022-11-07 21:54:29
63	App\\Models\\User	39	Personal Access Token	9f4beb4174e923f9047662ab906c3a73ae31284f023b88470b78aa316070374b	["*"]	\N	2022-11-07 22:06:30	2022-11-07 22:06:30
64	App\\Models\\User	39	Personal Access Token	e21694c29c21e9a31184fc2cf88fa9bc09ee1f0ff30946f82f937d8ed5276c4b	["*"]	\N	2022-11-07 22:09:24	2022-11-07 22:09:24
65	App\\Models\\User	39	Personal Access Token	4f862d6d8dd995983032ae9bedc2f4c7115c5cafd9b2ba35532749a0b6d2154c	["*"]	\N	2022-11-07 22:12:15	2022-11-07 22:12:15
66	App\\Models\\User	39	Personal Access Token	217880255afa6e7b75dfc67f7ce5656f14b3c42e2b4ba7a14c1f7e4266c96b58	["*"]	\N	2022-11-07 22:14:15	2022-11-07 22:14:15
67	App\\Models\\User	39	Personal Access Token	60132317efb1d0ee2d6d6e3bfd794b4df3d62fcc6c47b5a4f6fad8fa31d1aeef	["*"]	\N	2022-11-07 22:15:39	2022-11-07 22:15:39
68	App\\Models\\User	39	Personal Access Token	2a701d5ff1968a3a56fe66df771b36b78e8318befb58a5ad575929f5197a3447	["*"]	\N	2022-11-07 22:16:46	2022-11-07 22:16:46
69	App\\Models\\User	39	Personal Access Token	6d496c35701ed3ed4c66121d11f2e834872a84ade1510939cddd6c0408f5089d	["*"]	\N	2022-11-07 22:19:28	2022-11-07 22:19:28
70	App\\Models\\User	39	Personal Access Token	1da669aed8be024fbe91b3a719266cb24c8cdf758c6f15be0b9bd2634ec9f9b1	["*"]	\N	2022-11-07 22:29:53	2022-11-07 22:29:53
71	App\\Models\\User	39	Personal Access Token	13b7864f22316924327df4e6f00db9ba9f692ed8474bb4a1ba5f73aaff33997a	["*"]	\N	2022-11-07 22:31:10	2022-11-07 22:31:10
72	App\\Models\\User	39	Personal Access Token	287ae56852e2245c978ca37808db59efde0b9853dcc337c878469f4044ddafbb	["*"]	\N	2022-11-07 22:34:21	2022-11-07 22:34:21
73	App\\Models\\User	39	Personal Access Token	1d6ab692264eb714d3a0dac26de5113e0ebbb9d0b5285bde026779b2a5331b58	["*"]	\N	2022-11-07 22:35:45	2022-11-07 22:35:45
74	App\\Models\\User	35	Personal Access Token	d4aaed28f702abd59ea5c36724a5b42c3d3d9e0aca84cf3bea535c4c31f2626b	["*"]	\N	2022-11-08 03:04:55	2022-11-08 03:04:55
75	App\\Models\\User	35	Personal Access Token	6b915e6402b4e7d798a35330d2bdf7f3dae39eb26a2400f010c11dea04552534	["*"]	\N	2022-11-08 03:56:03	2022-11-08 03:56:03
76	App\\Models\\User	35	Personal Access Token	fe76ffed3988b39771f7062c5c2ee1e6ac72757af820003a46f3e8b3a87486d4	["*"]	\N	2022-11-08 04:03:53	2022-11-08 04:03:53
77	App\\Models\\User	35	Personal Access Token	5e1572d2ef8d6da19d20088717ac6e009fe84086bc2ec0dbc077a006d727a79b	["*"]	\N	2022-11-08 04:08:05	2022-11-08 04:08:05
78	App\\Models\\User	43	Personal Access Token	caf07c8546b3ca7b41303a871d62c8eb2249125dffe0c20321e1dfb4be3031d1	["*"]	\N	2022-11-08 04:21:52	2022-11-08 04:21:52
79	App\\Models\\User	43	Personal Access Token	e6c623fdb9514189d16672a0023050ddacc6eae13c8433b4539e5e748bf0e0c1	["*"]	\N	2022-11-08 04:22:51	2022-11-08 04:22:51
80	App\\Models\\User	35	Personal Access Token	77e1f9cb57153a4bc3d8af082520a7dfd4941ff607ee67bef81428a073184328	["*"]	\N	2022-11-08 04:52:03	2022-11-08 04:52:03
81	App\\Models\\User	35	Personal Access Token	7a74e487bdd63ab7eb9d2cb1e6808741fb1657403b6bbc79481c5e60f3fc3383	["*"]	\N	2022-11-08 04:52:29	2022-11-08 04:52:29
82	App\\Models\\User	35	Personal Access Token	2f6bfdb384e8616baf30318099a7d8759fd199f24354228b216d7fbcab2f415d	["*"]	\N	2022-11-08 04:53:35	2022-11-08 04:53:35
83	App\\Models\\User	35	Personal Access Token	457aa594b76cb8f1a3645a075e53c059d26737c996da294a6c3bb902ddf9f369	["*"]	\N	2022-11-08 04:56:37	2022-11-08 04:56:37
84	App\\Models\\User	35	Personal Access Token	7fe0467e4ada740fd311f964407892ce28d7f3e2f162d2c1f23198869188c384	["*"]	\N	2022-11-08 04:56:55	2022-11-08 04:56:55
85	App\\Models\\User	35	Personal Access Token	4f7af49f48785fbc7ab749c81ea01196351f55dbc74ccdf54c5a48953061e0e9	["*"]	\N	2022-11-08 04:57:55	2022-11-08 04:57:55
86	App\\Models\\User	44	Personal Access Token	b88a8fee18511a4ff39334e4121a54f323d5aaef423653f917d9189f926df850	["*"]	\N	2022-11-08 04:59:07	2022-11-08 04:59:07
87	App\\Models\\User	35	Personal Access Token	9a3ece150eabe2978403c68e6bc78553ae2c9e6611319c2ee35d93ae1d07b581	["*"]	\N	2022-11-08 04:59:32	2022-11-08 04:59:32
88	App\\Models\\User	44	Personal Access Token	e5bec7bb5c051df57df45eb9e556330b2f6c2415c521be110e99895575e0b6a8	["*"]	\N	2022-11-08 04:59:47	2022-11-08 04:59:47
89	App\\Models\\User	44	Personal Access Token	2f36ee383fe63311449ec5b8d3ffeb7841bdc352a49d42acf7179a251ce36419	["*"]	\N	2022-11-08 05:02:20	2022-11-08 05:02:20
90	App\\Models\\User	45	Personal Access Token	fc6e6ccdbf602eb05a226063fef833033f65966fa146ab67f79254f1e952accb	["*"]	\N	2022-11-08 05:37:06	2022-11-08 05:37:06
91	App\\Models\\User	45	Personal Access Token	83a83207218532353e6be033ec6b1995f3eefd694d0497e0c54a712be774f8d6	["*"]	\N	2022-11-08 05:38:12	2022-11-08 05:38:12
92	App\\Models\\User	45	Personal Access Token	7bf7550d2f02ef762fac61f26ba5179e05de639e0fc6f1f2b4db8edd58e1a697	["*"]	\N	2022-11-08 05:41:38	2022-11-08 05:41:38
93	App\\Models\\User	45	Personal Access Token	d9831fffe094f23592778a439932f2c32dc5eed4a67a9720651345d65994e8f9	["*"]	\N	2022-11-08 05:41:59	2022-11-08 05:41:59
94	App\\Models\\User	45	Personal Access Token	e8d026d19d6b05541ea14dcb45e708fbed5cce061b2f2ac4be8ac14f4f059cd9	["*"]	\N	2022-11-08 05:42:18	2022-11-08 05:42:18
95	App\\Models\\User	35	Personal Access Token	921e19713200d3fc65fdd251c904d4056e9d65f05889d521a11058f7b2c14338	["*"]	\N	2022-11-08 06:34:05	2022-11-08 06:34:05
96	App\\Models\\User	20	Personal Access Token	8d96b0618cdbd7f90d743dea07bb5c5898e1de7cef7eedbb152500841c7489ca	["*"]	\N	2022-11-08 10:11:13	2022-11-08 10:11:13
97	App\\Models\\User	20	Personal Access Token	51a3a5c0d940a7a9e305d7f32a7dc1cc8b5b38193942606783f66ab828ba6268	["*"]	\N	2022-11-08 10:11:48	2022-11-08 10:11:48
98	App\\Models\\User	20	Personal Access Token	2be4784a00cdcd6769a4d114c5002fdcb26179248a141978c66945132c56ca1f	["*"]	\N	2022-11-08 10:25:20	2022-11-08 10:25:20
99	App\\Models\\User	35	Personal Access Token	d1ad925ba36a2045ad71a9c925a97bb233135338a0a095bf951d8b7b3fa27f9c	["*"]	\N	2022-11-08 12:29:36	2022-11-08 12:29:36
100	App\\Models\\User	39	Personal Access Token	e5c3505571563fec455ada2a12fca5f531a0e5768bfa8711edbd088773afb80c	["*"]	\N	2022-11-08 13:33:18	2022-11-08 13:33:18
101	App\\Models\\User	39	Personal Access Token	841b4deccbf5ddbd0dbc44ed16bc88bb42a29759b8d4ee2947f0959c8d88364c	["*"]	\N	2022-11-08 13:52:19	2022-11-08 13:52:19
102	App\\Models\\User	39	Personal Access Token	cc454817d96922af80610cb6320e10f426848945a726e1480ec230607923cc1e	["*"]	\N	2022-11-08 13:52:54	2022-11-08 13:52:54
103	App\\Models\\User	39	Personal Access Token	4a546f72c06e43f542a07e65f343ecc6c4122d23e50229fa5d58efd536994a36	["*"]	\N	2022-11-08 20:43:36	2022-11-08 20:43:36
104	App\\Models\\User	39	Personal Access Token	877ed797c63c250a4fe9a0738aa945f3c481c1184d01ae62d62a6f91cf64e7bd	["*"]	\N	2022-11-09 03:55:02	2022-11-09 03:55:02
105	App\\Models\\User	20	Personal Access Token	664c36e4d3ff62de33a5794edd941d9d9ff5a44a9d5fa86dcae39637b8c03013	["*"]	\N	2022-11-09 06:45:38	2022-11-09 06:45:38
106	App\\Models\\User	20	Personal Access Token	8b0fda3a6261154cc9058f707a83ec0e2b49d0a918669e69e7595e29be687edf	["*"]	\N	2022-11-09 06:50:37	2022-11-09 06:50:37
107	App\\Models\\User	35	Personal Access Token	c31987e47e0923baa9953b167dc752ec42f3add28621497e2e47a7206d24a245	["*"]	\N	2022-11-09 15:22:24	2022-11-09 15:22:24
108	App\\Models\\User	35	Personal Access Token	f10fa011582f35860478d7704a88b840f3f958bd4dc7ce20e66009d9252fa392	["*"]	\N	2022-11-09 16:54:33	2022-11-09 16:54:33
109	App\\Models\\User	39	Personal Access Token	b7f0e1d020d0847ac40d26069955857cc714f462fb921902203068e7c23297b1	["*"]	\N	2022-11-09 17:01:44	2022-11-09 17:01:44
110	App\\Models\\User	39	Personal Access Token	56c21ce818eb12610c2c4b6559ce86ca2d8c3648460804dec9819585569626d0	["*"]	\N	2022-11-10 04:05:45	2022-11-10 04:05:45
111	App\\Models\\User	39	Personal Access Token	937597a917edb0739a9434512cc8e083d81ae8e649c2cefc0be252d780355290	["*"]	\N	2022-11-10 04:15:35	2022-11-10 04:15:35
112	App\\Models\\User	35	Personal Access Token	a0f06572dd2957b566859a1a0c946d387de777cd03d4ccdff6f7a37ffe054359	["*"]	\N	2022-11-10 04:22:20	2022-11-10 04:22:20
113	App\\Models\\User	39	Personal Access Token	c7a2347e4291ca0a8a6b9db3156e9bb48d18a63143eeffb5781b5a67f825b794	["*"]	\N	2022-11-10 04:30:58	2022-11-10 04:30:58
114	App\\Models\\User	35	Personal Access Token	6b5fee7177a8a3355351ea59323b599efd7a8d579bff9e3200b00583cba79d31	["*"]	\N	2022-11-10 04:33:01	2022-11-10 04:33:01
115	App\\Models\\User	39	Personal Access Token	61dd92b595d8d498fa519f13b46b0abc2507d76052f0a40119ce648e460390f9	["*"]	\N	2022-11-10 04:34:04	2022-11-10 04:34:04
116	App\\Models\\User	39	Personal Access Token	77a82984e9b325bf4c31741f2d56023c38c5c0b5eb30f4911424aade0f561e11	["*"]	\N	2022-11-10 04:41:03	2022-11-10 04:41:03
117	App\\Models\\User	20	Personal Access Token	0dc7795a53bebed8a23dd0ad9cf99f302e15ecf9a0b07ed945b484a89762c4aa	["*"]	\N	2022-11-10 05:03:03	2022-11-10 05:03:03
118	App\\Models\\User	39	Personal Access Token	d037330ce5249ab800c20b64cf2281ed02fa919432b429f8b66bc03768b27ae2	["*"]	\N	2022-11-10 05:21:39	2022-11-10 05:21:39
119	App\\Models\\User	20	Personal Access Token	aabaf93dc93bebc82dbb104d9dc3e9f2b77a64ce3cde41add58ddeaa44703da4	["*"]	\N	2022-11-10 05:57:37	2022-11-10 05:57:37
120	App\\Models\\User	39	Personal Access Token	3df2a228f6b9f330d9720447b92730676b8ccb0ad222ddb4f7baf39b18faa574	["*"]	\N	2022-11-10 07:35:48	2022-11-10 07:35:48
121	App\\Models\\User	20	Personal Access Token	b27245dc92882fcf0e28f9a08b4c0965a012aba122e90ea4c0ab7295d8794cda	["*"]	\N	2022-11-10 07:49:36	2022-11-10 07:49:36
122	App\\Models\\User	20	Personal Access Token	a2d21bc22868147457d4a721ad04df95f6366a507cfe9c8206e6bd66c91d9b2d	["*"]	\N	2022-11-10 09:23:16	2022-11-10 09:23:16
123	App\\Models\\User	35	Personal Access Token	d115de097bf0b7e3d9795c17f79a7459444f16ebe001e49b29ee338d7565a886	["*"]	\N	2022-11-10 09:33:33	2022-11-10 09:33:33
124	App\\Models\\User	20	Personal Access Token	7b03ce121bc42f6916369546e1097433a41e6b8857884adf47e50409e8f1c672	["*"]	\N	2022-11-10 09:37:17	2022-11-10 09:37:17
125	App\\Models\\User	20	Personal Access Token	ee18cda8f0d8112cdbb0c360dd8bdfc96ca8a6df6e55a078ac23f0541ab77bd4	["*"]	\N	2022-11-10 09:45:19	2022-11-10 09:45:19
126	App\\Models\\User	20	Personal Access Token	0a8920498afc631730dd95f0f5ec47f837c7696e3341c1b06c9a345485910760	["*"]	\N	2022-11-10 09:54:56	2022-11-10 09:54:56
127	App\\Models\\User	20	Personal Access Token	486fcffe7734c8b5054e23e9edda8fec51a504c742147a34211f00efa964bb36	["*"]	\N	2022-11-10 09:59:34	2022-11-10 09:59:34
128	App\\Models\\User	35	Personal Access Token	50927db6581bf2bcdce43275ac312ce93acf0501befc41cc60c551872f7d5c79	["*"]	\N	2022-11-10 12:03:19	2022-11-10 12:03:19
129	App\\Models\\User	35	Personal Access Token	027112dff5d8cf8bf7588479c1eb2b220d1a8f6d41650b0d90a8d7c1e082566c	["*"]	\N	2022-11-10 12:45:45	2022-11-10 12:45:45
130	App\\Models\\User	39	Personal Access Token	474600fdb8042cac50ed27aec9786e0b2e8931da65f756457b6f9c81eff31d6f	["*"]	\N	2022-11-10 14:02:58	2022-11-10 14:02:58
131	App\\Models\\User	39	Personal Access Token	53ea142f8458f9be60cfc535ef6984b3fb92bcbbc2fd411c2d5f84bed258f42a	["*"]	\N	2022-11-11 04:27:18	2022-11-11 04:27:18
132	App\\Models\\User	35	Personal Access Token	a29d062ea4af6ae5ca7c513cd7ec0a2cc7e4892059a3f28a03e0fd0a630d1bfe	["*"]	\N	2022-11-11 05:16:46	2022-11-11 05:16:46
133	App\\Models\\User	39	Personal Access Token	5751ddd60ba9be31ee66d640a2ce5578a8e120049e1721c31a03a853e6e66e07	["*"]	\N	2022-11-11 05:19:44	2022-11-11 05:19:44
134	App\\Models\\User	39	Personal Access Token	eb7d354f115ada2056e1bbca03c56cdafafd5a1d75fb999ec4aa5bd17d57b32c	["*"]	\N	2022-11-11 06:29:02	2022-11-11 06:29:02
135	App\\Models\\User	39	Personal Access Token	ebdab9d780cfe72968a0df97d84b4a253d33ea7776e32d520c95879d61f40991	["*"]	\N	2022-11-11 06:30:43	2022-11-11 06:30:43
136	App\\Models\\User	47	Personal Access Token	ec12bfe0a84278714dbe2c3a1a35c16137a2ef2ecbcd2a8dcbe4111b65499ed0	["*"]	\N	2022-11-11 14:20:11	2022-11-11 14:20:11
137	App\\Models\\User	35	Personal Access Token	805b1d9841bbb4093b8422797ecae92b2caef4ed2de0a577b4f61dd8cd435e32	["*"]	\N	2022-11-11 14:36:39	2022-11-11 14:36:39
138	App\\Models\\User	48	Personal Access Token	5c5df587435af8d85b8228326cfdb1065b2e5d912780f2b3ee8a37e6222cf688	["*"]	\N	2022-11-11 14:40:20	2022-11-11 14:40:20
139	App\\Models\\User	35	Personal Access Token	0f2fa82289f27f89c1ef52a7ab6d793d695a2632aeaf2f03c2c40bc6221c2c74	["*"]	\N	2022-11-11 16:41:11	2022-11-11 16:41:11
140	App\\Models\\User	39	Personal Access Token	b991956f02a8718494a23732a3f8a7af80184c4b14161004c3c37c014349de5f	["*"]	\N	2022-11-11 16:58:06	2022-11-11 16:58:06
141	App\\Models\\User	50	Personal Access Token	bf6f9e0e2bf5cad8430dfaac4534f948e50a9e3bd40d28f177658a0ae1c7f397	["*"]	\N	2022-11-12 15:30:18	2022-11-12 15:30:18
142	App\\Models\\User	50	Personal Access Token	7f98fc503da0635afd2f2b7be7808c8214ae453d886a590bd050e2911bd09712	["*"]	\N	2022-11-12 15:31:11	2022-11-12 15:31:11
143	App\\Models\\User	51	Personal Access Token	afb592071d491dbbcd14da06334aeba5906c2172b1b7e3c254c8daa9c2919f6b	["*"]	\N	2022-11-12 15:31:47	2022-11-12 15:31:47
144	App\\Models\\User	52	Personal Access Token	56047f56b82651983246dcc1072ceaf61f0a5eaf0a6e81899bcc976b1488a8fe	["*"]	\N	2022-11-12 15:31:56	2022-11-12 15:31:56
145	App\\Models\\User	39	Personal Access Token	c773179923b661f927d1abfc18d63898bc71eacbcbb32ee48c7072275b372320	["*"]	\N	2022-11-12 16:55:30	2022-11-12 16:55:30
146	App\\Models\\User	54	Personal Access Token	ade7ef21df42d585b12fb4c6bb1cb783eba6d942891fa737c1f1c39466dc37f6	["*"]	\N	2022-11-12 18:14:31	2022-11-12 18:14:31
147	App\\Models\\User	54	Personal Access Token	12ebf6f25e8b1d642b3bbbe82a8c987d54bf6ed6af324b9b717c00f75c7ae9cb	["*"]	\N	2022-11-12 18:15:03	2022-11-12 18:15:03
148	App\\Models\\User	39	Personal Access Token	3eff3d2bdf6e8a9b229a5e78bc6d43e3f65965eb620ae5491bd9556bc952ef3f	["*"]	\N	2022-11-12 18:23:18	2022-11-12 18:23:18
149	App\\Models\\User	54	Personal Access Token	9603b14322de0ab4597ea28f81509d4d851f004931a724207ce8c309ae862b48	["*"]	\N	2022-11-12 19:04:30	2022-11-12 19:04:30
150	App\\Models\\User	54	Personal Access Token	aa7fa0cf64a2b4c97bef75e04ebea07e6b4fa093c1893e125eb9a13b1be95fb4	["*"]	\N	2022-11-12 19:52:26	2022-11-12 19:52:26
151	App\\Models\\User	39	Personal Access Token	64a82a58c10528247576de919982c35aba178fb42f9c096c23c7ca785c05f2b5	["*"]	\N	2022-11-14 04:58:42	2022-11-14 04:58:42
152	App\\Models\\User	56	Personal Access Token	10475daae2087099ed2534019d1ed841c57e7bd7faf37e62db4dbf4ce9ba706e	["*"]	\N	2022-11-14 05:50:11	2022-11-14 05:50:11
153	App\\Models\\User	39	Personal Access Token	a71b05ddaf1f0ce4821a0ca74c0f5cd76abb6b795a29f1e67b09e09ca08236f6	["*"]	\N	2022-11-14 05:57:14	2022-11-14 05:57:14
154	App\\Models\\User	39	Personal Access Token	0214c7a27be1b70dd88bdc51e4ce160540ee3667c4c7b1fb38f94c415cad211b	["*"]	\N	2022-11-14 06:56:08	2022-11-14 06:56:08
155	App\\Models\\User	39	Personal Access Token	56b7553aafae113ec900b8420bc92ff81e6723b997feb557a50e49ed7133388e	["*"]	\N	2022-11-14 06:56:26	2022-11-14 06:56:26
156	App\\Models\\User	20	Personal Access Token	70ade6e946b9e591b2d4f8be4b32e076d5f5bc6f21ac17a9fd67746e968336e8	["*"]	\N	2022-11-14 08:34:05	2022-11-14 08:34:05
157	App\\Models\\User	57	Personal Access Token	c07108c731af77d88f4cb11079892411988097813851f46a0a0f3629580cf5dd	["*"]	\N	2022-11-14 08:48:07	2022-11-14 08:48:07
158	App\\Models\\User	58	Personal Access Token	691d9c39d699861a391a7195bba44f570fb4e681f7330561c66a7dcac91923d5	["*"]	\N	2022-11-14 08:53:47	2022-11-14 08:53:47
159	App\\Models\\User	59	Personal Access Token	3c00397b086156c1084d1d511c30159feda308a82257613add0138c0a67d7c6e	["*"]	\N	2022-11-14 09:39:24	2022-11-14 09:39:24
160	App\\Models\\User	59	Personal Access Token	ee7e9c79ee2ed495904509a8f69e7ac06da7e9cc66aa6ea702bb80c4f42130af	["*"]	\N	2022-11-14 09:41:33	2022-11-14 09:41:33
161	App\\Models\\User	39	Personal Access Token	546de95b2a9b1ce946b527a55b6ab1ad657f3ce64f2c9222c1e27de6c43063a7	["*"]	\N	2022-11-14 10:32:55	2022-11-14 10:32:55
162	App\\Models\\User	59	Personal Access Token	a010cbf7c1442b2f8ce442db8e25a28a19dda955f934d4d60b04cb1675d8cb02	["*"]	\N	2022-11-14 11:36:10	2022-11-14 11:36:10
163	App\\Models\\User	20	Personal Access Token	40889ff878ba74f372fd68578bfa0038b20635c6525f5531e34425b7b048ffe1	["*"]	\N	2022-11-14 11:37:55	2022-11-14 11:37:55
164	App\\Models\\User	60	Personal Access Token	5fd209e3167e8a82d641483809066e45c5679a160a29b025f8e4cb46d5a8845e	["*"]	\N	2022-11-14 11:39:16	2022-11-14 11:39:16
165	App\\Models\\User	61	Personal Access Token	56daa44357fe411da451215b5df299ef90e937b905c60f5630592d708088091e	["*"]	\N	2022-11-14 11:41:37	2022-11-14 11:41:37
166	App\\Models\\User	39	Personal Access Token	2dee1324aaeed9811d7458ebca9180cefa0279e4e5a898752c1022b66767aa9f	["*"]	\N	2022-11-14 12:01:39	2022-11-14 12:01:39
167	App\\Models\\User	39	Personal Access Token	c12cc8abfcd01426c8eb20e46b2fd187aaa7ad4c92f5865188d1f963b8093809	["*"]	\N	2022-11-14 12:03:06	2022-11-14 12:03:06
168	App\\Models\\User	54	Personal Access Token	d6e896626337e4af0c16230a32951b48f387d0b6450f5b0912b157cc18cca890	["*"]	\N	2022-11-14 15:44:52	2022-11-14 15:44:52
169	App\\Models\\User	39	Personal Access Token	93c1c8364df138a33af6f7bba71a97275037e1ad2bc6beeddd04e8fafe53da25	["*"]	\N	2022-11-14 16:24:36	2022-11-14 16:24:36
170	App\\Models\\User	54	Personal Access Token	9cbbec8ea2be768b1fdc2ff4921547f33b7061162f2efeb9d871a5be5a1f21f4	["*"]	\N	2022-11-14 16:40:07	2022-11-14 16:40:07
171	App\\Models\\User	54	Personal Access Token	e9fd7cb1042676a1477f688bd93f398179b2dd5b67820b641edb111b0dd33e3f	["*"]	\N	2022-11-14 16:43:07	2022-11-14 16:43:07
172	App\\Models\\User	39	Personal Access Token	599502b40923a6fbb61a96b06e075ff9a6b7b8891be7ff8c567f3c4268c99808	["*"]	\N	2022-11-14 20:06:11	2022-11-14 20:06:11
173	App\\Models\\User	39	Personal Access Token	2b021396709fb6f95cae6e8ff1964f0be8a20a374bf12b5de9075c67614e6f81	["*"]	\N	2022-11-14 20:06:11	2022-11-14 20:06:11
174	App\\Models\\User	54	Personal Access Token	2e6f4a4bf14979eac01b9f1fe254d3656efcb2c34255a54ea2d4cab13eca90c2	["*"]	\N	2022-11-14 22:09:45	2022-11-14 22:09:45
175	App\\Models\\User	62	Personal Access Token	e3710a57b95980e1398c0a1a8fe36a82a351c0e8860af885a8bc8b6a20319a5d	["*"]	\N	2022-11-15 03:57:33	2022-11-15 03:57:33
176	App\\Models\\User	63	Personal Access Token	90d0b917733a4d75d2001a616c6d39130f4df4a34b913960c45b3c89eae6e9d3	["*"]	\N	2022-11-15 04:52:35	2022-11-15 04:52:35
177	App\\Models\\User	63	Personal Access Token	2a3c29eb18c3890d130f48096cb81977320a093e2898d4872373f10c7abba32e	["*"]	\N	2022-11-15 04:52:39	2022-11-15 04:52:39
178	App\\Models\\User	63	Personal Access Token	5909e7f3a47dd38c6d7ee7863c6ed582587db59c33476fadc6545060a6660480	["*"]	\N	2022-11-15 06:16:07	2022-11-15 06:16:07
179	App\\Models\\User	64	Personal Access Token	52589787d8219ae0e709dd6057171d00ecce70adc0d141011edb49d19c978234	["*"]	\N	2022-11-15 08:09:25	2022-11-15 08:09:25
180	App\\Models\\User	64	Personal Access Token	6bfe8a74f07da08f45e51165e485ed60ad0f04513ae484862038074c39bc9b78	["*"]	\N	2022-11-15 08:09:27	2022-11-15 08:09:27
181	App\\Models\\User	65	Personal Access Token	2b3d7c7bf2a7766dafa8e1b327070530575343c7044085138d23340be575854d	["*"]	\N	2022-11-15 09:29:44	2022-11-15 09:29:44
182	App\\Models\\User	39	Personal Access Token	5e1193ce5735eae2949d111c9ae987acd7ae7b530469309a21d0db9103973b9e	["*"]	\N	2022-11-15 09:41:19	2022-11-15 09:41:19
183	App\\Models\\User	39	Personal Access Token	3d61f7b5a61ff0d080df22cd79b3db2ce728e3ae2b5816a17e00de9e2005e84b	["*"]	\N	2022-11-15 10:04:26	2022-11-15 10:04:26
184	App\\Models\\User	39	Personal Access Token	aa1e0540258b90ea259ec4a4650dec762d8c6c992555d462132aa5a5625a8861	["*"]	\N	2022-11-15 11:01:23	2022-11-15 11:01:23
185	App\\Models\\User	66	Personal Access Token	056b228e5c619bc60e9af3b8fbc3b35fe6726585d6e643fece31668e549280fa	["*"]	\N	2022-11-15 11:20:25	2022-11-15 11:20:25
186	App\\Models\\User	67	Personal Access Token	75f4b052f1675688014dab7de4dc909e2322ff45860e874c8ce89b4756e50282	["*"]	\N	2022-11-15 11:22:19	2022-11-15 11:22:19
187	App\\Models\\User	39	Personal Access Token	ab06f8f25be551e03dcfb25b2c51f2bc5a1db793743ff91ee4f8c7923220b9d5	["*"]	\N	2022-11-15 11:27:05	2022-11-15 11:27:05
188	App\\Models\\User	39	Personal Access Token	e3c7ee198151a99a794055c0141f24680ce7d229929968b96e06ce32e9545e40	["*"]	\N	2022-11-15 11:29:50	2022-11-15 11:29:50
189	App\\Models\\User	39	Personal Access Token	a5a8f8d50a1ad1783036b6490e8d9cf896c4be72fe34f871340cf86ffdaab4eb	["*"]	\N	2022-11-15 11:31:00	2022-11-15 11:31:00
190	App\\Models\\User	39	Personal Access Token	8cc6924732ce0c5a03dccab03f1d942f3c3a53cd7a42e2c3880f77f1c901406c	["*"]	\N	2022-11-15 11:31:22	2022-11-15 11:31:22
191	App\\Models\\User	69	Personal Access Token	ebfe9f6baf1999f314e076acb8b174a02db2e6baea4b0c6935e42a389773e3c4	["*"]	\N	2022-11-15 11:47:54	2022-11-15 11:47:54
192	App\\Models\\User	70	Personal Access Token	612bd96cd5af2343d68134c632adc6deee232485ee72815ff5035a69b5187873	["*"]	\N	2022-11-15 11:48:59	2022-11-15 11:48:59
193	App\\Models\\User	71	Personal Access Token	f8a710ef373e99a0b05bf811512970af4e025357803389acf9d07540e3c0dfc7	["*"]	\N	2022-11-15 11:50:08	2022-11-15 11:50:08
194	App\\Models\\User	39	Personal Access Token	d0e3306104845f8e2bd0dcbd469e13d202e5e20c393bf5f5fa268c74aa205b6b	["*"]	\N	2022-11-15 12:39:20	2022-11-15 12:39:20
195	App\\Models\\User	72	Personal Access Token	260016e1bb0015375d3290234912e459add27da1b49e70d2a74d386ddef72682	["*"]	\N	2022-11-15 12:39:46	2022-11-15 12:39:46
196	App\\Models\\User	70	Personal Access Token	976238f70db6c408888cc01dd3a0f6e913118c33ebf3127ab708db4fb817ac6e	["*"]	\N	2022-11-15 12:39:55	2022-11-15 12:39:55
197	App\\Models\\User	69	Personal Access Token	d93adab131a9c40104385bc30ac7d286a3618fb213beb0a107e9d29bfd989b87	["*"]	\N	2022-11-15 12:39:58	2022-11-15 12:39:58
198	App\\Models\\User	73	Personal Access Token	6607164e4157113482c444e3ce049de3faf615778c41aa95325d7091a6627b71	["*"]	\N	2022-11-15 12:40:14	2022-11-15 12:40:14
199	App\\Models\\User	73	Personal Access Token	ff5a4e86a46af2be40b465a252b3fb83c43beb6c72cf6b10d2ecc4890dfa9d45	["*"]	\N	2022-11-15 12:41:14	2022-11-15 12:41:14
200	App\\Models\\User	64	Personal Access Token	8c61029af45dde61c0127c196271e302e82c3c27dadc3ae5ff24209a16c065f4	["*"]	\N	2022-11-15 13:24:05	2022-11-15 13:24:05
201	App\\Models\\User	54	Personal Access Token	a64dc01b642c44f8bd6ca46bb2d20fe7360123bdb9e49e1728f44664ce1b0fa6	["*"]	\N	2022-11-15 15:33:12	2022-11-15 15:33:12
202	App\\Models\\User	39	Personal Access Token	f7385fc49e67780306e16c85256420a83f46849e010438cb748cf5323bd29d51	["*"]	\N	2022-11-15 15:59:42	2022-11-15 15:59:42
203	App\\Models\\User	35	Personal Access Token	d340cefc1d34219982d5ebbd4ff82d6c353025ff74fec6a94dd4e7d1d93fe006	["*"]	\N	2022-11-15 17:21:23	2022-11-15 17:21:23
204	App\\Models\\User	74	Personal Access Token	15ac87277bab149f984d6aea307d5fe99719cb3fac759d771a7387566c814d59	["*"]	\N	2022-11-15 18:21:22	2022-11-15 18:21:22
205	App\\Models\\User	35	Personal Access Token	29a26c761fef6da99d6c9b0b648cc788c549169c07b8c2de4e785e5ae10f39fc	["*"]	\N	2022-11-15 18:45:57	2022-11-15 18:45:57
206	App\\Models\\User	75	Personal Access Token	a2af9f7fd88fbdd44e269fa588d4243985e3e9c4a01c2ac842addbd028fa446a	["*"]	\N	2022-11-15 18:46:14	2022-11-15 18:46:14
207	App\\Models\\User	75	Personal Access Token	e4bb992e3323ccb6ea2a0ff17a2cbe5446457cd2565e72bb6b5d2aab47e70ad2	["*"]	\N	2022-11-15 18:48:39	2022-11-15 18:48:39
208	App\\Models\\User	75	Personal Access Token	443863720e341701dcc866a0735da0d76a025cf676af6a9dd73a040eb8ae7cab	["*"]	\N	2022-11-15 18:50:12	2022-11-15 18:50:12
209	App\\Models\\User	76	Personal Access Token	210317a17ae51a304daffea37c78c916ec1f309f2674fa5670b3383b82f74290	["*"]	\N	2022-11-15 18:50:47	2022-11-15 18:50:47
210	App\\Models\\User	54	Personal Access Token	2b4b380da37198420e3d70b8bdd6669027592efac5eb0ef5de7fc05412f8f57a	["*"]	\N	2022-11-15 20:13:42	2022-11-15 20:13:42
211	App\\Models\\User	54	Personal Access Token	22fd2ea6aff20a62b4a0274e6e1509b4cf791a118d5ab34bcf4b6e4682028e63	["*"]	\N	2022-11-15 20:49:50	2022-11-15 20:49:50
212	App\\Models\\User	54	Personal Access Token	8f5e2a7d54dff119b1b82c3e57189423eac23be50e325525b8d02f2cbd205a4b	["*"]	\N	2022-11-15 20:56:35	2022-11-15 20:56:35
\.


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personal_access_tokens_id_seq', 212, true);


--
-- Data for Name: post_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_comments (id, user_id, post_id, parent_id, comment, created_at, updated_at, comment_node_id) FROM stdin;
\.


--
-- Name: post_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_comments_id_seq', 1, false);


--
-- Data for Name: post_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_likes (id, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_likes_id_seq', 1, false);


--
-- Data for Name: post_saves; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_saves (id, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: post_saves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_saves_id_seq', 1, false);


--
-- Data for Name: post_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post_users (id, post_id, user_id) FROM stdin;
\.


--
-- Name: post_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('post_users_id_seq', 1, false);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY posts (id, user_id, caption, file_type, file, location_name, lattitude, longitude, post_firebase_node_id, created_at, updated_at, active, visibility, extra_file_names) FROM stdin;
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('posts_id_seq', 1, false);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product (id, product_type, product_desc_full, product_desc_short, product_sale_from, product_sale_to, product_featured_image, product_tag, product_created_by, product_updated_by, product_status, product_deleted, product_name, product_variation_type, product_taxable, product_vender_id, product_image, product_unique_iden, product_brand_id, product_name_arabic, product_desc_full_arabic, product_desc_short_arabic, cash_points, offer_enabled, deal_enabled, is_today_offer, today_offer_date, thanku_perc, custom_status, meta_title, meta_keyword, meta_description, product_vendor_status, product_gender, is_kandora, collection_id, hot_offer_enabled, trending_enabled, offers_list, zero_quantity_orders, product_code, product_tags, sort_order, offer_for_short, hot_offer_sort_order, new_trending_sort_order, author_id, deleted, default_category_id, default_attribute_id, created_at, updated_at, brand, store_id, moda_main_category, moda_sub_category, featured, master_product) FROM stdin;
1	1	\N	\N	\N	\N	\N	\N	5	5	1	0	Capsule Product Test	1	1	5	\N	776631999	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	10	1	2022-10-07 13:16:50	2022-10-11 14:34:54	1	0	0	0	0	0
5	1	\N	\N	\N	\N	\N	\N	5	0	1	0	Test product	1	1	5	\N	890558759	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	7	2022-10-22 10:45:45	\N	1	0	0	0	1	0
4	2	\N	\N	\N	\N	\N	\N	6	0	1	0	TEST VARIABLE	1	1	6	\N	976069550	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	10	0	2022-10-22 09:47:36	\N	1	0	0	0	1	0
6	1	\N	\N	\N	\N	\N	\N	13	13	1	0	Sinecod	1	1	13	\N	876588685	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	8	2022-10-22 14:16:00	2022-10-27 10:20:31	2	0	0	0	1	0
7	1	\N	\N	\N	\N	\N	\N	17	17	1	0	Test product	1	1	17	\N	196518102	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	9	2022-10-29 04:19:19	2022-10-29 04:19:26	1	0	0	0	0	0
2	2	\N	\N	\N	\N	\N	\N	6	6	1	0	Variable product test	1	1	6	\N	400566504	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	10	0	2022-10-07 13:18:05	2022-10-11 14:34:47	1	0	0	0	1	0
3	1	\N	\N	\N	\N	\N	\N	6	0	1	0	TEST PRODUCT	1	1	6	\N	654312378	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	10	4	2022-10-22 09:45:04	\N	1	0	0	0	1	0
8	2	\N	\N	\N	\N	\N	\N	13	0	1	0	Panadol	1	1	13	\N	62158882	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	0	2022-11-10 08:01:16	\N	1	0	0	0	0	3
12	1	\N	\N	\N	\N	\N	\N	12	12	0	0	Panadol	1	1	12	\N	597105375	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	13	14	2022-11-14 12:21:02	2022-11-15 10:57:32	1	0	0	0	0	3
15	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Pantoparazol	1	1	40	\N	407914249	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	17	2022-11-15 12:18:33	\N	3	0	0	0	0	9
24	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	493251610	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	26	2022-11-15 14:42:21	\N	3	0	0	0	0	15
16	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	525214494	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	18	2022-11-15 13:47:11	\N	3	0	0	0	0	15
11	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Benadryl	1	1	40	\N	877021766	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	1	12	13	2022-11-14 11:50:05	\N	1	0	0	0	0	13
10	1	\N	\N	\N	\N	\N	\N	46	46	1	0	Nimphar Tab	1	1	46	\N	343970454	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	12	2022-11-11 11:26:02	2022-11-15 07:25:11	1	0	0	0	0	14
13	1	\N	\N	\N	\N	\N	\N	18	18	1	0	Adol	1	1	18	\N	962619246	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	15	2022-11-14 12:37:27	2022-11-15 07:26:05	2	0	0	0	0	10
9	1	\N	\N	\N	\N	\N	\N	40	40	1	0	Syrup	1	1	40	\N	40418855	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	11	2022-11-11 07:38:20	2022-11-15 07:26:16	1	0	0	0	0	12
18	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	187177795	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	20	2022-11-15 14:18:31	\N	3	0	0	0	0	15
14	1	\N	\N	\N	\N	\N	\N	40	40	1	0	Benadryl	1	1	40	\N	430933934	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	16	2022-11-15 06:31:29	2022-11-15 08:38:23	3	0	0	0	0	13
19	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	47127431	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	21	2022-11-15 14:23:02	\N	3	0	0	0	0	15
20	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	68267816	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	22	2022-11-15 14:27:08	\N	3	0	0	0	0	15
21	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	172606563	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	23	2022-11-15 14:31:10	\N	3	0	0	0	0	15
22	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	610477188	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	24	2022-11-15 14:33:33	\N	3	0	0	0	0	15
23	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	598330674	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	25	2022-11-15 14:38:49	\N	3	0	0	0	0	15
25	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Energy Drink	1	1	40	\N	668297349	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	27	2022-11-15 14:46:02	\N	3	0	0	0	0	15
26	1	\N	\N	\N	\N	\N	\N	40	0	1	0	Nutrition & Supplements	1	1	40	\N	840147011	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	0	12	28	2022-11-16 04:21:33	\N	3	0	0	0	0	16
17	1	\N	\N	\N	\N	\N	\N	12	0	1	0	Energy Drink	1	1	12	\N	172476337	0	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	0	\N	0	0	0	0	0	0	\N	\N	0	0	0	0	0	1	12	19	2022-11-15 13:59:45	\N	3	0	0	0	0	15
\.


--
-- Data for Name: product_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_attribute (attribute_id, attribute_name, attribute_status, attribute_created_date, attribute_name_arabic, attribute_type, is_deleted) FROM stdin;
1	Color	1	\N	Color	4	0
2	5 mg	1	\N	5 mg	2	0
3	composition	1	\N	composition	2	0
4	ML	1	\N		4	0
5	10 MG	1	\N		4	0
\.


--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_attribute_attribute_id_seq', 5, true);


--
-- Data for Name: product_attribute_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_attribute_values (attribute_values_id, attribute_id, attribute_values, attribute_values_arabic, attribute_value_in, attribute_value_color, attribute_value_label, attribute_value_label_arabic, attribute_value_image, is_deleted, attribute_value_sort_order, attribute_color) FROM stdin;
2	1	Green	Green	2	\N	\N	\N	\N	0	0	#3b8321
1	1	Red	red	2	\N	\N	\N	\N	0	0	#e60000
3	3	5 mg		1	\N	\N	\N	\N	0	0	#ffffff
4	3	10 mg		1	\N	\N	\N	\N	0	0	#ffffff
5	3	25 mg		1	\N	\N	\N	\N	0	0	#ffffff
\.


--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_attribute_values_attribute_values_id_seq', 5, true);


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category (product_category_id, product_id, category_id) FROM stdin;
4	2	11
5	1	10
6	3	11
7	4	11
8	5	12
10	6	11
12	7	12
13	8	14
16	11	11
20	10	14
21	13	11
22	9	11
24	14	11
26	12	13
27	15	12
28	16	15
29	17	15
30	18	15
31	19	15
32	20	15
33	21	15
34	22	15
35	23	15
36	24	15
37	25	15
38	26	15
\.


--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_product_category_id_seq', 38, true);


--
-- Data for Name: product_docs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_docs (id, product_id, title, doc_path) FROM stdin;
\.


--
-- Name: product_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_docs_id_seq', 1, false);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_id_seq', 26, true);


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_images (id, product_id, image_name, product_attribute_id) FROM stdin;
\.


--
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_images_id_seq', 1, false);


--
-- Data for Name: product_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_likes (id, product_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_likes_id_seq', 1, false);


--
-- Data for Name: product_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_master (id, name, active, deleted, created_at, updated_at) FROM stdin;
1	Test Product master	1	0	2022-10-29 17:05:18	2022-10-29 17:05:18
2	Test Prod 001	1	0	2022-10-31 05:33:31	2022-10-31 05:33:31
3	Panadol	1	0	2022-11-03 14:34:59	2022-11-03 14:34:59
4	Product import test 1	1	0	2022-11-05 08:48:13	2022-11-05 08:48:13
5	Product import test 2	1	0	2022-11-05 08:52:21	2022-11-05 08:52:21
6	Product import test 3	1	0	2022-11-05 08:53:49	2022-11-05 08:53:49
7	Product import test 4	1	0	2022-11-05 08:53:49	2022-11-05 08:53:49
8	Paracitamol	1	0	2022-11-05 12:35:57	2022-11-05 12:35:57
9	Pantoparazol	1	0	2022-11-05 12:35:57	2022-11-05 12:35:57
10	Adol	1	0	2022-11-07 07:43:21	2022-11-07 07:43:21
11	Gaviscon	0	0	2022-11-07 07:43:21	2022-11-07 07:43:21
12	Syrup	1	0	2022-11-11 07:29:29	2022-11-11 07:29:29
13	Benadryl	1	0	2022-11-11 11:40:51	2022-11-11 11:40:51
14	Nimphar Tab	1	0	2022-11-14 13:37:35	2022-11-14 13:37:35
15	Energy Drink	1	0	2022-11-15 13:38:23	2022-11-15 13:38:23
16	Nutrition & Supplements	1	0	2022-11-16 04:11:27	2022-11-16 04:11:27
17	Sports Nutrition	1	0	2022-11-16 04:31:38	2022-11-16 04:31:38
\.


--
-- Name: product_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_master_id_seq', 17, true);


--
-- Data for Name: product_master_request; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY product_master_request (id, name, description, vendor_id, deleted, accepted, created_at, updated_at, product_type, category) FROM stdin;
\.


--
-- Name: product_master_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('product_master_request_id_seq', 1, false);


--
-- Data for Name: product_selected_attribute_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_selected_attribute_list (product_attribute_id, product_id, manage_stock, stock_quantity, allow_back_order, stock_status, sold_individually, weight, length, height, width, shipping_class, sale_price, regular_price, taxable, image, shipping_note, title, rating, rated_users, image_temp, barcode, image_action, pr_code, product_desc, product_full_descr, size_chart) FROM stdin;
2	2	0	10	0	0	0	0	0	0	0	0	20	20	0	1665148685Lenaget.jpg,,	\N	\N	\N	0	\N		\N	33434		Test 1	\N
3	2	0	20	0	0	0	0	0	0	0	0	25	25	0	1665148685depositphotos_27539351-stock-illustration-herbal-natural-medicine.jpg,,	\N	\N	\N	0	\N		\N	232322		test product	\N
1	1	0	10	0	0	0	\N	\N	\N	\N	0	100	100	0	1665148610sweet-fennel-seeds-natco-1kg.jpg,1665148610IG-Medicine-cabinet-checklist-1024x1024.jpg,1665148610depositphotos_27539351-stock-illustration-herbal-natural-medicine.jpg	\N	\N	\N	0	\N	\N	\N	223232	\N	Capsule Product Test description	\N
4	3	0	100	0	0	0	\N	\N	\N	\N	0	120	120	0	1666431904depositphotos_27539351-stock-illustration-herbal-natural-medicine (1).jpg	\N	\N	\N	0	\N	\N	\N	12233	\N	wewew	\N
5	4	0	100	0	0	0	0	0	0	0	0	100	100	0	1666432056pills_520225198_web.jpg,1666432056images.jpg	\N	\N	\N	0	\N		\N	2323		ssd 1	\N
6	4	0	100	0	0	0	0	0	0	0	0	100	100	0	1666432056pills_520225198_web.jpg,166643205661BmKPCg2LL._SL1024_.jpg	\N	\N	\N	0	\N		\N	22323		zxxdsd	\N
7	5	0	200	0	0	0	1.00000000000000008e-05	12	17	15	0	101.5	121.75	0	16664355455E49B088-311B-476B-8C05-6B4D84A549C8.jpeg,166643554528357286-3BE6-4766-892F-CE51394EE741.jpeg	\N	\N	\N	0	\N	\N	\N	00000012	\N	Test description	\N
16	14	0	20	0	0	0	5	5	5	5	0	100	120	0	1668501503Tentex-forte-TABLETS-700x700.jpg	\N	\N	\N	0	\N	\N	\N	7890	\N	Benadryl tested by doctors for over 50 years	\N
14	12	0	\N	0	0	0	\N	\N	\N	\N	0	\N	\N	0	1668509852pharmaceutical-tablets-10 (1).jpg	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N
8	6	0	0	0	0	0	123	123	123	123	0	100	123	0	1666448160syrup-bottle-500x500.jpg	\N	\N	\N	0	\N	\N	\N	123	\N	test	\N
9	7	0	200	0	0	0	\N	\N	\N	\N	0	100	100	0	1667017159Pharma-Distributors-in-Varanasi-1024x1024.jpg	\N	\N	\N	0	\N	\N	\N	22323	\N	test product	\N
10	8	0	12	0	0	0	25	102	102	102	0	125	120	0		\N	\N	\N	0	\N		\N	12		test	\N
13	11	0	\N	0	0	0	\N	\N	\N	\N	0	\N	\N	0		\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N
12	10	0	10	0	0	0	10	10	10	10	0	190	210	0	1668165962blue-tab.jpg	\N	\N	\N	0	\N	\N	\N	7890	\N	Tablets for	\N
15	13	0	12	0	0	0	12	12	12	12	0	122	122	0		\N	\N	\N	0	\N	\N	\N	12	\N	test	\N
11	9	0	5	0	0	0	100	50	20	50	0	80	100	0	1668152300Syrup 5.jpg,1668152300Syrup 4.jpg,1668152300Syrup 3.jpg,1668152300Syrup 2.jpg	\N	\N	\N	0	\N	\N	\N	SYP_01	\N	There are a range of syrups used in food production, including	\N
17	15	0	10	0	0	0	5	5	5	5	0	20	25	0	16685147131.1 (1).jpg,16685147131.2.jpg,16685147131.3.jpg,16685147131.4.jpg,16685147131.5.jpg	\N	\N	\N	0	\N	\N	\N	PANT-12345	\N	\N	\N
18	16	0	5	0	0	0	\N	\N	\N	\N	0	180	200	0	1668520031Afresh.jpg,1668520031Afresh.jpg	\N	\N	\N	0	\N	\N	\N	AFR-1234	\N	Afresh is an energy drink	\N
19	17	0	10	0	0	0	500	5	5	5	0	50	55	0	1668520785Orange.jpg,1668520785Orange.jpg	\N	\N	\N	0	\N	\N	\N	E-7890	\N	Energy drinks	\N
20	18	0	10	0	0	0	1000	5	5	5	0	190	200	0	1668521911E 2.jpg	\N	\N	\N	0	\N	\N	\N	ER-123	\N	Energy drinks	\N
21	19	0	5	0	0	0	500	5	5	5	0	100	100	0	1668522182Gluco.jpg	\N	\N	\N	0	\N	\N	\N	123	\N	Gluco Energy drinks	\N
22	20	0	5	0	0	0	500	5	5	5	0	100	100	0	1668522428Royalent.jpg	\N	\N	\N	0	\N	\N	\N	789	\N	\N	\N
23	21	0	5	0	0	0	100	5	5	5	0	120	150	0	1668522670Glu D.jpg,1668522670Glu D.jpg	\N	\N	\N	0	\N	\N	\N	147	\N	\N	\N
24	22	0	5	0	0	0	500	5	5	5	0	190	200	0	1668522813Org.jpg	\N	\N	\N	0	\N	\N	\N	123456	\N	\N	\N
25	23	0	10	0	0	0	200	5	5	6	0	100	100	0	1668523129new.jpg	\N	\N	\N	0	\N	\N	\N	158	\N	\N	\N
26	24	0	5	0	0	0	300	5	5	5	0	100	110	0	1668523341Dark.jpg	\N	\N	\N	0	\N	\N	\N	7890	\N	\N	\N
27	25	0	5	0	0	0	200	5	5	5	0	80	100	0	1668523562Las.jpg	\N	\N	\N	0	\N	\N	\N	321	\N	\N	\N
28	26	0	5	0	0	0	500	6	6	6	0	500	600	0	1668572493Ensure 850-front.jpg	\N	\N	\N	0	\N	\N	\N	7/889	\N	Ensure also help to maintain diabetic	\N
\.


--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_selected_attribute_list_product_attribute_id_seq', 28, true);


--
-- Data for Name: product_selected_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_selected_attributes (product_selected_attributes_id, attribute_id, attribute_values_id, product_id) FROM stdin;
1	1	2	2
2	1	1	2
3	1	2	4
4	1	1	4
5	3	5	8
\.


--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_selected_attributes_product_selected_attributes_id_seq', 5, true);


--
-- Data for Name: product_specifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_specifications (prod_spec_id, product_id, spec_title, spec_descp, lang, spec_title_arabic, spec_descp_arabic) FROM stdin;
\.


--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_specifications_prod_spec_id_seq', 1, false);


--
-- Data for Name: product_temp_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_temp_image (id, product_id, product_attribute_id, image, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_temp_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_temp_image_id_seq', 1, false);


--
-- Data for Name: product_variations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_variations (product_variations_id, attribute_id, attribute_values_id, product_attribute_id, product_id) FROM stdin;
1	1	2	2	2
2	1	1	3	2
3	1	2	5	4
4	1	1	6	4
5	3	5	10	8
\.


--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_variations_product_variations_id_seq', 5, true);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, product_type, name, active, deleted, created_by, updated_by, company_id, store_id, description, featured, meta_title, meta_description, meta_keywords, created_at, updated_at) FROM stdin;
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 1, false);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ratings (id, type, user_id, product_id, product_varient_id, service_id, vendor_id, rating, title, comment, created_at, updated_at) FROM stdin;
\.


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ratings_id_seq', 1, false);


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service (id, name, image, service_price, active, deleted, "order", description, created_at, updated_at) FROM stdin;
2	RT-PCR	16664435286353e908c1292.jpg	100	1	0	0	\N	2022-10-22 12:58:48	2022-10-22 12:58:48
1	Complete blood count	166549868863457e4076016.jpg	100	1	0	0	Complete blood count	2022-10-11 14:31:28	2022-10-22 13:00:55
3	Blood Pressure checkup	16664471366353f72014ac1.jpg	110	1	0	0	Check your hypertension levels in the comfort of your home	2022-10-22 13:58:56	2022-10-22 13:58:56
4	Sugar level checkup	16664472526353f7942d1b3.jpg	147.5	1	0	0	\N	2022-10-22 14:00:52	2022-10-24 08:49:13
5	test service	\N	120	1	0	0	\N	2022-10-26 13:04:38	2022-10-26 13:05:02
6	Report Deliverd	1668155962636e0a3a43338.png	100	1	0	0	Deliverd at your doorstep	2022-11-11 08:39:22	2022-11-11 10:01:59
7	Sample collection from Home	1668432603637242db3a557.jpg	120	1	0	0	Sample collection from Home	2022-11-14 13:27:24	2022-11-14 13:30:03
\.


--
-- Data for Name: service_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service_category (id, name, image, banner_image, parent_id, active, deleted, "order", description, created_at, updated_at) FROM stdin;
1	Physiotherapy	166541479363443689443c0.jpg	1665414793634436894550e.jpg	0	1	0	0	Physiotherapy description	2022-10-10 15:13:13	2022-10-11 14:34:06
2	Blood Test	166549865963457e239de9e.jpg	166549883963457ed7acd4f.jpg	0	1	0	0	Blood Test	2022-10-11 14:30:59	2022-10-11 14:34:20
3	Covi-19 PCR Test	16664431646353e79c36519.jpg	\N	0	1	0	0	\N	2022-10-22 12:52:44	2022-10-22 12:52:44
4	Result In 12 Hrs	16664432646353e800f31bf.jpg	\N	3	1	0	0	\N	2022-10-22 12:54:24	2022-10-22 12:54:24
5	Result In 4 Hrs	16664432986353e822541fb.jpg	\N	3	1	0	0	\N	2022-10-22 12:54:58	2022-10-22 12:57:14
6	General Ailments	16664468206353f5e4c25f7.jpg	\N	0	1	0	0	\N	2022-10-22 13:53:40	2022-10-22 13:53:40
7	Body Checkup	1668156369636e0bd168dfd.png	1668156369636e0bd169b5a.jpg	2	1	0	0	Full body checkup	2022-11-11 08:46:09	2022-11-11 08:48:20
8	Sample collection	16684326456372430535a09.jpg	\N	0	1	0	0	\N	2022-11-14 13:26:18	2022-11-14 13:30:45
\.


--
-- Name: service_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_category_id_seq', 8, true);


--
-- Data for Name: service_category_selected; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service_category_selected (id, service_id, category_id) FROM stdin;
1	2	4
2	1	2
3	3	6
5	4	6
6	5	1
7	6	4
9	7	8
\.


--
-- Name: service_category_selected_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_category_selected_id_seq', 9, true);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_id_seq', 7, true);


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY settings (id, admin_commission, shipping_charge, created_at, updated_at, tax_percentage) FROM stdin;
1	0	0	\N	\N	0
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('settings_id_seq', 1, true);


--
-- Data for Name: skin_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY skin_colors (id, name, color, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Name: skin_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('skin_colors_id_seq', 1, false);


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY states (id, name, active, country_id, created_uid, updated_uid, deleted, created_at, updated_at) FROM stdin;
1	Dubai	1	1	1	\N	0	2022-09-23 14:37:44	2022-09-23 14:37:44
2	West Bengal	1	2	1	\N	0	2022-11-15 04:32:16	2022-11-15 04:32:16
\.


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('states_id_seq', 2, true);


--
-- Data for Name: store_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY store_images (id, image, store_id) FROM stdin;
\.


--
-- Name: store_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('store_images_id_seq', 1, false);


--
-- Data for Name: store_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY store_likes (id, store_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: store_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('store_likes_id_seq', 1, false);


--
-- Data for Name: store_managers_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY store_managers_types (id, name, created_at, updated_at, vendor_id) FROM stdin;
\.


--
-- Name: store_managers_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('store_managers_types_id_seq', 1, false);


--
-- Data for Name: store_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY store_type (id, name, banner_image, active, deleted, created_at, updated_at) FROM stdin;
1	Medicine vendor	\N	1	0	2022-09-23 14:36:58	2022-09-26 04:58:23
2	Service provider	\N	1	0	2022-09-23 14:37:12	2022-09-26 04:58:31
\.


--
-- Name: store_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('store_type_id_seq', 2, true);


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY stores (id, vendor_id, industry_type, store_name, business_email, dial_code, mobile, description, location, latitude, longitude, address_line1, address_line2, country_id, state_id, city_id, zip, logo, cover_image, license_number, license_doc, vat_cert_number, vat_cert_doc, active, verified, deleted, created_uid, updated_uid, created_at, updated_at, commission) FROM stdin;
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stores_id_seq', 1, false);


--
-- Data for Name: temp_order_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temp_order_products (id, order_id, product_id, product_attribute_id, product_type, quantity, price, discount, total, vendor_id, admin_commission, vendor_commission, shipping_charge) FROM stdin;
10	8	5	7	1	1	101.5	0	101.5	5	0	0	0
11	8	3	4	1	1	120	0	120	6	0	0	0
17	13	3	4	1	3	120	0	360	6	0	0	0
20	14	2	3	2	3	25	0	75	6	0	0	0
21	14	3	4	1	3	120	0	360	6	0	0	0
23	14	9	11	1	1	80	0	80	40	0	0	0
29	18	3	4	1	1	120	0	120	6	0	0	0
38	22	4	6	2	1	100	0	100	6	0	0	0
40	24	10	12	1	1	190	0	190	46	0	0	0
41	25	4	6	2	1	100	0	100	6	0	0	0
42	25	3	4	1	1	120	0	120	6	0	0	0
43	26	3	4	1	1	120	0	120	6	0	0	0
50	30	3	4	1	4	120	0	480	6	0	0	0
51	30	4	6	2	1	100	0	100	6	0	0	0
52	31	4	6	2	1	100	0	100	6	0	0	0
53	31	3	4	1	1	120	0	120	6	0	0	0
54	32	14	16	1	5	100	0	500	40	0	0	0
55	32	9	11	1	6	80	0	480	40	0	0	0
59	34	3	4	1	1	120	0	120	6	0	0	0
60	34	2	3	2	1	25	0	25	6	0	0	0
61	34	4	6	2	1	100	0	100	6	0	0	0
62	35	25	27	1	1	80	0	80	40	0	0	0
63	36	4	6	2	1	100	0	100	6	0	0	0
64	37	14	16	1	1	100	0	100	40	0	0	0
72	39	25	27	1	1	80	0	80	40	0	0	0
73	39	23	25	1	1	100	0	100	40	0	0	0
74	39	21	23	1	1	120	0	120	40	0	0	0
75	39	20	22	1	1	100	0	100	40	0	0	0
76	39	19	21	1	1	100	0	100	40	0	0	0
77	39	14	16	1	2	100	0	200	40	0	0	0
78	39	24	26	1	2	100	0	200	40	0	0	0
\.


--
-- Name: temp_order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temp_order_products_id_seq', 78, true);


--
-- Data for Name: temp_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temp_orders (id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, admin_commission, vendor_commission, shipping_charge, temp_id) FROM stdin;
39	\N	54	1	900	0	0	900	2	0	0	0	5463741c9c9d3161668553884
\.


--
-- Name: temp_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temp_orders_id_seq', 39, true);


--
-- Data for Name: temp_service_order_items; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY temp_service_order_items (id, order_id, service_id, price, discount, total, admin_commission, vendor_commission, booking_date) FROM stdin;
\.


--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('temp_service_order_items_id_seq', 23, true);


--
-- Data for Name: temp_service_orders; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY temp_service_orders (id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, admin_commission, vendor_commission, temp_id) FROM stdin;
\.


--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('temp_service_orders_id_seq', 23, true);


--
-- Data for Name: user_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_address (id, user_id, full_name, dial_code, phone, address, country_id, state_id, city_id, address_type, status, is_default, created_at, updated_at, land_mark, building_name, latitude, longitude, location) FROM stdin;
18	20	 	 	 	canal west road	0	0	0	0	1	0	2022-11-14 13:33:47	2022-11-14 13:34:07	\N	17/2/H/5	22.57845786612709	88.37755188345909	17/2/H/5, Canal W Rd, Garpar, Machuabazar, Kolkata, West Bengal 700009, India,
20	63	ramya	 	 	ranya	0	0	0	0	1	0	2022-11-15 06:03:05	2022-11-15 06:03:23	\N	ramya	17.07295875643656	79.26665648818016	Adarsha Colony, Nalgonda
19	63	ramya	 	 	ramyaa	0	0	0	0	1	0	2022-11-15 06:02:42	2022-11-15 06:03:23	\N	ramya	17.072998819066292	79.26659915596245	Adarsha Colony, Nalgonda
3	35		 	 	Aroor 673638	0	0	0	0	0	0	2022-11-07 06:05:00	2022-11-13 17:10:20	school	aroor	11.2588	75.7804	abcd
2	39		 	 	Aroor 673638	0	0	0	0	1	0	2022-11-07 06:02:49	2022-11-11 04:27:53	school	aroor	11.2588	75.7804	abcd
7	35		 	 	First street	0	0	0	0	0	0	2022-11-10 19:28:21	2022-11-13 17:10:20	\N	Home	32.20227862943816	74.49011832475662	Saran Wali, Sialkot, Punjab, Pakistan,
5	39	test name abc	 	 	address test	0	0	0	0	0	0	2022-11-09 17:07:19	2022-11-11 04:27:53	school	aroor	11.2588	75.7804	abcd
4	39	 	 	 	address test	0	0	0	0	1	1	2022-11-07 06:11:13	2022-11-11 04:27:53	school	aroor	11.2588	75.7804	abcd
6	35	 	 	 	address test	0	0	0	0	0	0	2022-11-10 19:23:24	2022-11-13 17:10:20	school	aroor	11.2588	75.7804	abcd
8	35	 	 	 	Asd street	0	0	0	0	1	0	2022-11-11 04:42:13	2022-11-13 17:10:20	no	Building01	32.22806682201725	74.48498323559761	6FHM+7XF, Daska, Sialkot, Punjab, Pakistan,
9	35	 	 	 	Sudia	0	0	0	0	1	1	2022-11-11 13:55:19	2022-11-13 17:10:20	\N	Building 09	32.21465000013498	74.50268011540174	Dera Satrah Road, Khindowali, Sialkot, Punjab, Pakistan,
21	64	test	 	 	test	0	0	0	0	0	0	2022-11-15 08:44:35	2022-11-15 13:41:18	test	test	25.183597073735548	55.260430164635174	Al Mustaqbal Street 1c, Al Mustaqbal Street, Dubai
22	64	test	 	 	test	0	0	0	0	1	0	2022-11-15 08:47:17	2022-11-15 13:41:18	\N	test	25.183597073735548	55.260430164635174	Al Mustaqbal Street 1c, Al Mustaqbal Street, Dubai
10	54		 	 	Aroor 673638	0	0	0	0	0	0	2022-11-12 21:24:21	2022-11-14 07:57:22	school	aroor	11.2588	75.7804	abcd
23	64	test	 	 	test	0	0	0	0	1	1	2022-11-15 13:41:18	2022-11-15 13:41:18	\N	test	25.183597073735548	55.260430164635174	Al Mustaqbal Street 1c, Al Mustaqbal Street, Dubai
17	58	 	 	 	test	0	0	0	0	1	0	2022-11-14 09:34:48	2022-11-15 15:06:02	test	test	25.238460859172243	55.27136251330375	1 Al Kooteia St - Jumeirah - Jumeirah 1 - Dubai - United Arab Emirates,
24	76	 	 	 	Street  01	0	0	0	0	1	1	2022-11-15 18:54:41	2022-11-15 18:54:49	No	Building01	32.23066219903458	74.48609165847303	Unnamed Road, Madharian Wala Kalar, Sialkot, Punjab, Pakistan,
11	54		 	 	Aroor 673638	0	0	0	0	0	0	2022-11-12 21:25:35	2022-11-14 07:57:22	school	aroor	11.2588	75.7804	abcd
12	54	home	 	 	Aroor 673638	0	0	0	0	0	0	2022-11-12 22:02:08	2022-11-14 08:02:33	school	aroor	11.2588	75.7804	abcd
15	54	home	 	 	Aroor 673638	0	0	0	0	1	0	2022-11-14 07:57:22	2022-11-14 08:02:39	school	aroor	11.2588	11.2588	abcd
13	56		 	 	Street 01	0	0	0	0	0	0	2022-11-14 06:20:21	2022-11-14 09:26:36	\N	Masjid	32.22806682201725	74.48498323559761	6FHM+7XF, Daska, Sialkot, Punjab, Pakistan,
14	56		 	 	Street 01	0	0	0	0	1	0	2022-11-14 06:24:24	2022-11-14 09:26:36	\N	Masjid	32.23068517166163	74.48494132608175	Unnamed Road, Madharian Wala Kalar, Sialkot, Punjab, Pakistan,
16	56		 	 	Street 01	0	0	0	0	1	1	2022-11-14 09:26:36	2022-11-14 09:26:36	\N	Building01	32.2323082723258	74.48657680302858	6FHM+7XF, Daska, Sialkot, Punjab, Pakistan,
\.


--
-- Name: user_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_address_id_seq', 24, true);


--
-- Data for Name: user_follows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_follows (id, user_id, follow_user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: user_follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_follows_id_seq', 1, false);


--
-- Data for Name: user_privileges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_privileges (id, user_id, designation_id, privileges, status, created_at, updated_at) FROM stdin;
\.


--
-- Name: user_privileges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_privileges_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, name, email, dial_code, phone, phone_verified, password, email_verified_at, role, first_name, last_name, user_image, user_phone_otp, user_device_token, user_device_type, user_access_token, firebase_user_key, remember_token, created_at, updated_at, country_id, state_id, city_id, area, active, deleted, display_name, business_name, email_verified, user_email_otp, dob, vendor, store, previllege, about_me, verified, designation_id, is_private_profile, user_name, gender, website, wallet_amount, password_reset_code, password_reset_time, approve, user_permissions, password_reset_otp) FROM stdin;
1	Admin	admin@admin.com	971	112233445566778899	0	$2y$10$4CKClSnfh0w959jNrsJyl.8/oowWbizHIg4FrOlXxfgtYYBU6Y6jK	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
2	Customer	customer@gmail.com	971	1212121	0	$2y$10$tT938kyL5AHz66PvRHtskOV..8YCZ/4s5TEt9pBA5FNLN5eYQcr/S	\N	2	Cutomer	test	\N	\N	\N	\N	\N	\N	\N	2022-09-22 15:11:25	2022-09-23 11:47:14	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	100	\N	\N	0	\N	\N
7	\N	zhg786@gmail.com	971	3312343433	0	$2y$10$ef.CIGKrZnZSIV/oegyoR.pax4LdV5IjPZIxKQK3M9NsQi2TGhoQi	\N	3	Zahid	Hussain	\N	\N	\N	\N	\N	\N	\N	2022-10-06 12:56:54	2022-11-15 10:21:09	1	1	1	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
8	\N	service_provider@gmail.com	971	3312343432	0	$2y$10$CEbvTx4HOwJNO6alV1IEfemirDK.bo2//L5Ub.ROQGcUayPjCYqHm	\N	3	service provider	service provider	\N	\N	\N	\N	\N	\N	\N	2022-10-06 13:53:52	\N	1	1	1	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
9	\N	sdfds@gmail.com	971	4442345455	0	$2y$10$salTA5lSbgYf8Gx5ZjvQo.MzV/zBFbGrf5GzEh4cF.J.e8bz8oA3O	\N	3	dfd	sdfs	\N	\N	\N	\N	\N	\N	\N	2022-10-06 14:19:46	\N	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
3	Anirban Roy	a@a.com	971	665267536	0	$2y$10$SZJ8nOg4kgDKppmGUGSWduJY/SCRk7qfUYt528ImJUTT5G3sNaQOK	\N	2	RUSVIN	K	\N	\N	\N	\N	\N	\N	\N	2022-09-23 05:57:20	2022-09-23 11:47:30	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	12	\N	\N	0	\N	\N
13	\N	dxtech.lubna@gmail.com	971	525338371	0	$2y$10$L4diAgliy0TBCKKXkW5hmuwh4kv5Nto.emiz/doeR02GbTK4o.Uzy	\N	3	Jane	Doe	\N	\N	\N	\N	\N	\N	\N	2022-10-22 14:06:00	2022-11-14 09:05:45	1	0	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
12	\N	rusvink@gmail.com	971	7034526978	0	$2y$10$GzhS8Xfi0CoarqEXXUul9O8ZbcHLuNIcCSPniqEAJlhXW2LxmEyTy	\N	3	RUSVIN	K	\N	\N	\N	\N	\N	\N	\N	2022-10-22 08:55:52	\N	1	0	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
11	\N	testvendor1@gmail.com	971	7034526945	0	$2y$10$92rrwhSiM6pDkp5BvfNlY.LFfAyHcz/d3pjXUGYnk/fhXjNoyv9Xi	\N	3	test	vendor	\N	\N	\N	\N	\N	\N	\N	2022-10-22 08:45:39	2022-10-22 08:56:41	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
4	\N	abcd@gmail.com	971	7034526952	0	$2y$10$U9/OeYHTH/pTZXZ.Z1Gpfu05kzXKRtgavcagbW08BI1KfG3bo4zAm	\N	2	ABCD	EFG	\N	\N	\N	\N	\N	\N	\N	2022-09-23 11:48:11	2022-09-23 11:48:25	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	11	\N	\N	0	\N	\N
16	\N	testing@gmail.com	971	3312343444	0	$2y$10$hfZ3FOWg3aWKixg8LNU6uO0XbwONxjOYMqPY.m0yQGg/puWsUeQxq	\N	3	testing	testing	\N	\N	\N	\N	\N	\N	\N	2022-10-25 08:46:14	2022-10-25 08:54:35	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
17	\N	rusvinaroor@gmail.com	971	703452693434	0	$2y$10$9VCnuv6.rxAk32YiJM/L9OV0n1nabnCyP22LhinbPMZ94p8d.GZ06	\N	3	RUSVIN	K	\N	\N	{{fcm_token}}	\N	67b7843131d4109c3a9bd778d75e1780bb276ea6b189ecefaaa5c767be8b4691	-NGG6DNRPZnm2sEazD5J	\N	2022-10-26 04:46:07	2022-11-11 04:06:23	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0		2022-11-07 06:26:32	0	\N	0
10	autoadmin	subadmin@gmail.com	\N	123455	0	$2y$10$PirCN./9wFc5TwNpIfN2kemml3eUwBkrUMhI/iFMRAelgedsLV.fy	\N	1	RUSVIN	K	\N	\N	\N	\N	\N	\N	\N	2022-10-10 15:11:35	2022-10-11 14:52:42	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	1	0	\N	1	\N	0	\N	\N	0	\N	\N
15	\N	rusvinaroor16@gmail.com	971	7034522252	0	$2y$10$3kMTHSfztd7gCmGJhhbre.QeHYVggoiPZbK3VsQJajqeidyn6qIHa	\N	3	TEST	EFG	\N	\N	\N	\N	\N	\N	\N	2022-10-25 06:11:50	2022-11-15 10:20:09	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
5	\N	testvendor@gmail.com	971	1212121212	0	$2y$10$3pJahYxWTivykRoAZKdKY.w3mf/7kFE6mo70kJgA5faXkbfLfxkKS	\N	3	TEST	Vendor	\N	\N	\N	\N	\N	\N	\N	2022-09-23 14:40:03	2022-11-15 18:05:35	1	1	1	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	1	\N	\N
40	\N	aqb@gmail.com	971	7890437010	0	$2y$10$Yot6BsjqBouGuv9npcj0/.2LtkIVUUQM9V89KDBv.yRH0RfNiEwda	\N	3	AQB	Pharmacy	\N	\N	\N	\N	\N	\N	\N	2022-11-07 05:32:13	2022-11-11 10:27:04	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
36	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$ntrk3K4AML29Cy7C84/DmOPuWQKPRV7Z9EpUv4QtWf05WKEElP48q	2022-11-06 18:02:38	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	5a13d92244bd07fe336db5718ba0b2b11210bf95c6724a9eadde411a83af0461	-NGD5xfl4Zkju0vtxCZg	\N	2022-11-06 18:02:38	2022-11-06 18:02:39	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
18	\N	rusvinaroor21@gmail.com	971	7034512952	0	$2y$10$0ewY5dpihhGf7mlZLxl9HeURylKICDIuOKXAgLdwm6tqF62ghZztu	\N	3	RUSVIN	USER	\N	\N	\N	\N	\N	\N	\N	2022-10-26 10:08:01	2022-11-11 04:06:05	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
37	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$XD4EEW8.csLPPjCdQ2bDrOjC0nJnJNquzssiOEFGvfJBWBOyz.OPK	2022-11-07 04:14:45	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	76377df38f99c3135d76c436374313aca034c6ce05108537632ff0bb73c207ff	-NGFI3D3OqKAZlO5Rswg	\N	2022-11-07 04:14:45	2022-11-07 04:14:46	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
38	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$CvS8z8lb/sd.OaimoJOoIe1nFg0i78ZcoYNkQNkcIZb3A/SuD67aS	2022-11-07 05:21:30	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	514e576f0ad1e3452718349676fa6e13782fd38832a0a5b57c77a9d1844a36ae	-NGFXKz2Vx1u38CrIQsk	\N	2022-11-07 05:21:30	2022-11-07 05:21:31	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
6	\N	abcdefg@gmail.com	971	7245668899	0	$2y$10$0dIo27YAujr1QEL5quNG..AOO/kguoPIunwvRpcYhurzKEfFaotMO	\N	3	ABCD	EFG	\N	\N	\N	\N	\N	\N	\N	2022-09-26 04:55:58	2022-11-11 10:33:10	1	1	1	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	1	\N	\N
41	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$l5u2zCWHXHVrwXibCEduPeOhORZ17iveQ5Vsyhd3L..ZK9n2bc1Ky	2022-11-07 05:52:44	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	d991d58318b15396ec0ea7b8b64ec146602336214a499378e1bfe1004517eb6d	-NGFdUTO9LO3uHxrfujn	\N	2022-11-07 05:52:44	2022-11-07 05:52:45	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
54	abc test	test21@gmail.com	971	52238316131	1	$2y$10$SNCjvmjPsOHHhw4ONLot5.pF7EmsVd.5MrlthEkVSv3PrAJsM/G2K	\N	2	abc	test	\N	\N	abdhjef ekef kjwf wedfw	iOS	8f5e2a7d54dff119b1b82c3e57189423eac23be50e325525b8d02f2cbd205a4b	-NGh2D69I2SUbRgZIIgD	\N	2022-11-12 16:47:40	2022-11-15 23:31:27	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	1400		2022-11-14 22:00:37	0	\N	0
44	Rusvin k	rusvinmerak1@gmail.com	91	9744089691	1	$2y$10$uojJ3nyGCm3RAFbxnPABROtth/j6vwkb/rZ/DS3DJB6VV406YsaA.	\N	2	Rusvin	k	\N	\N	1111	android	2f36ee383fe63311449ec5b8d3ffeb7841bdc352a49d42acf7179a251ce36419	-NGKankA64xa9uWWjmuN	\N	2022-11-08 04:58:44	2022-11-08 05:02:20	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0		2022-11-08 04:59:27	0	\N	0
53	test test	test11@gmail.com	672	5454213131	0	$2y$10$/Od0jT.5liM8eFqdNrqpfudjCXDP78N7FITuStBCEjpr2sUrMCjwK	\N	2	test	test	\N	1111	abdhjef ekef kjwf wedfw	iOS	\N	\N	\N	2022-11-12 16:17:14	2022-11-12 16:17:14	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
56	Hamid Iqbal	hamidiqbalgoraya@gmail.com	\N	0	0	$2y$10$zGS5x5LNR0h4YiGvrYppRecHcVHeRih/E8v2Vc/1F1MfZxCoStMQy	2022-11-14 05:50:11	\N	\N	\N	\N	\N	dvyj1C3xQlq8zjhd4bDd71:APA91bExTvwd2-0H2_5ZgIyAiJ1uxLJK85_xGrOah-qtc1gFgex30m4KAevw20p2IWg9tyOmvzqclvEWn_rWswXTY9EvhPkSDlnmpK3JVYuiaDqxRbESbF4FmONv8HNufq-oEat1CRl_	ANDROID	10475daae2087099ed2534019d1ed841c57e7bd7faf37e62db4dbf4ce9ba706e	-NGog1EV9McU6fhtY0WJ	\N	2022-11-14 05:50:11	2022-11-15 14:30:57	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	330	\N	\N	0	\N	\N
47	Hamid Raza	razahamd35@gmail.com	971	3441562555	1	$2y$10$H9beW/ZsNRGKLn4i.gQJC.UF6kVJ0HyEgWiS20q.8DgXNb4t4Z5jO	\N	2	Hamid	Raza	\N	\N	dvyj1C3xQlq8zjhd4bDd71:APA91bExTvwd2-0H2_5ZgIyAiJ1uxLJK85_xGrOah-qtc1gFgex30m4KAevw20p2IWg9tyOmvzqclvEWn_rWswXTY9EvhPkSDlnmpK3JVYuiaDqxRbESbF4FmONv8HNufq-oEat1CRl_	ANDROID	ec12bfe0a84278714dbe2c3a1a35c16137a2ef2ecbcd2a8dcbe4111b65499ed0	-NGb2zld8zlz1kKA0Ocq	\N	2022-11-11 14:20:03	2022-11-11 14:20:11	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
49	Nasrullah Khan	nasrulahpitafi@gmail.co	971	535556665	0	$2y$10$699.211OV69b4P4ZjXD5be6438iSBwXxT/AWOR5BjuKJkK80g/Oyu	\N	2	Nasrullah	Khan	\N	1111	ewNFDnAJTtmu7a_2ujfdqD:APA91bETC-OZPSLzP3xFL6mlWxS7iE8ZDx3xjKNBdpoySuwoz1JLnTJ0izs_vwOdCHoihPO8nt7xPdQzUtSWnK2u2zdQc9PhdygxBYCWYkSgaj0v1lkxyPPo9FzxM47untLV02ZcIqyo	ANDROID	\N	\N	\N	2022-11-11 15:06:13	2022-11-11 15:06:13	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
50	Rusvin K	test@gmail.com	91	2211211212121	1	$2y$10$2FFCD0pXtdbftY2Ki8pC1.480Y7doDAsuJYmISVFXPW2fyk0Ih5JC	\N	2	Rusvin	K	\N	\N	1111	android	7f98fc503da0635afd2f2b7be7808c8214ae453d886a590bd050e2911bd09712	-NGgScfxoIs44dF7P_Tk	\N	2022-11-12 15:29:32	2022-11-12 15:31:11	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
35	Hamid g Raza	razahamid34@gmail.com	971	3441562554	1	$2y$10$LFFrvZwrfMnyswtelDQ0X.VtCp4seq0XwaGhDjnsY82VD3gx6GbFi	\N	2	Hamid g	Raza	16678255726368ffa40374c.png	\N	eF2S8DDjStmnNFr6ES7kfp:APA91bGk2oDQMhmW5rkQY8i6PYk1-5LDySkf29a7p4CtO8AzpTqCAQdBrT2nSBSuQVRCo4l-b-vikONoxEL4DsnVJ-7AarzMr6QhQtpiq6EAg4H4zeG49iHbFWE8-ma5jMd5gFGkt1im	ANDROID	29a26c761fef6da99d6c9b0b648cc788c549169c07b8c2de4e785e5ae10f39fc	-NGD4aNUL8l1RHTA650Y	\N	2022-11-06 12:54:07	2022-11-15 18:45:57	0	0	0	0	1	0	\N	\N	1	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	55200		2022-11-07 13:11:46	0	\N	0
52	Irfan pkl	mippkl123@gmail1.com	\N	0	0	$2y$10$Xk8C/znh3L3uMILCj8tu3e6bL8KIpR9bLp3qRcdwnxyY.g64xNCES	2022-11-12 15:31:56	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	56047f56b82651983246dcc1072ceaf61f0a5eaf0a6e81899bcc976b1488a8fe	-NGgT-h5JLogpWf5M6uK	\N	2022-11-12 15:31:56	2022-11-12 15:31:57	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
51	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$Q6foktKFEYR/d2NaPZJPdOz0BNm7Bn8vAiEGks93buC4B3a88dSVi	2022-11-12 15:31:47	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	afb592071d491dbbcd14da06334aeba5906c2172b1b7e3c254c8daa9c2919f6b	-NGgSyQgJXLcYyRbwT-H	\N	2022-11-12 15:31:47	2022-11-12 15:31:48	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
55	wao test	nasar@gmail.com	92	548754544	0	$2y$10$BPT4/7hq7VOWjYktYPNWzu.nc1zPHTPo.Q9M5CVwfR.GgDviX76FW	\N	2	wao	test	\N	1111	abdhjef ekef kjwf wedfw	iOS	\N	\N	\N	2022-11-12 18:26:47	2022-11-12 18:26:47	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
20	Binay Thakur	Itsmebinaythakur@gmail.com	971	7890437011	1	$2y$10$aeD2tmua37shRJrsIHV3dOXMeqI6u45RaYh0TrIHk4ALK1w/WdtSu	\N	2	Binay	Thakur	\N	\N	dmHCxHRFTBy4MQusVlSIa3:APA91bGZYT-NCvanY63fLLPzi61AOKKSDn6LFi5NHOof6iBsZLT3dUHw7sSfZbAqcaplk9lqjp1wCNYw95irKpeqAgnN61KizGSvbpO0ZmaScpuNgoJOOk2NqW4igi7MdAtc3suX7xZK	\N	40889ff878ba74f372fd68578bfa0038b20635c6525f5531e34425b7b048ffe1	-NGLiEUTAFeu_d6ne8h_	\N	2022-11-01 13:31:08	2022-11-14 11:37:55	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
46	\N	Medplus@gmail.com	971	7890437019	0	$2y$10$ek/fc7ICJvfFnyTwU4EV3.M0taRft7tSL5e20w4QW7QOg3Psq/y.a	\N	3	Binay	Thakur	\N	\N	\N	\N	\N	\N	\N	2022-11-11 10:56:29	2022-11-14 10:23:48	1	1	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
57	Irfan pkl	mippkl@gmail1.com	\N	0	0	$2y$10$oAGEeZ6xui40UB9sb/yyjemdm1O7dMqoZQ0Hh1uDhmxj77yYh4q4m	2022-11-14 08:48:07	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	c07108c731af77d88f4cb11079892411988097813851f46a0a0f3629580cf5dd	-NGpJktoP8Kbvte6eny-	\N	2022-11-14 08:48:07	2022-11-14 08:48:08	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
63	ramyaa m	ramya@mail.com	971	1234567898	1	$2y$10$3HlLXV9zUjWYcnJQt/RkTuxKKXIbdx9BT06/gAb8BALIOxhKUW1gq	\N	2	ramyaa	m	\N	\N	abdhjef ekef kjwf wedfw	iOS	5909e7f3a47dd38c6d7ee7863c6ed582587db59c33476fadc6545060a6660480	-NGtcRQewkfWZ0Dq9xbv	\N	2022-11-15 04:52:30	2022-11-15 06:16:07	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	222	\N	\N	0	\N	\N
58	LUBNA ABDUL AZEEM	lubna@dxbusinessgroup.com	\N	0	0	$2y$10$zu2qceqKoB83lisVc.AjNebognn6Hvf1fUSRa/za9nixCfqvbYuB6	2022-11-14 08:53:47	\N	\N	\N	\N	\N	dEhvHpDiQwG-FA792x7BwO:APA91bGhUKmXO825kkmAsakPwBl-NRX21NUlb7YyMXTEfj2mMxnSc2NhCbS6gtfXi1ldsmFvyyfWk-utsRUWMPTtQuf1zOWu4QLfEB1wcfg3lPguAompDTH0zb5J2rkUjutvBcK98sS5	ANDROID	691d9c39d699861a391a7195bba44f570fb4e681f7330561c66a7dcac91923d5	-NGpL2k-FoXCohcqrOUM	\N	2022-11-14 08:53:47	2022-11-14 08:53:47	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
67	Irfan pkl	mippkl2@gmail1.com	\N	0	0	$2y$10$.l6mR/zSdm93FpfiqD/FuO3uWKoXSCf8rSgZ3qTOhFyvv8hlxjMMK	2022-11-15 11:22:19	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	75f4b052f1675688014dab7de4dc909e2322ff45860e874c8ce89b4756e50282	-NGv0dImJRGAXEUQ08MR	\N	2022-11-15 11:22:19	2022-11-15 11:22:19	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
61	B Thakur	Bthakur@gmail.com	971	8073604356	1	$2y$10$Jr.HPlq0VxlM1e8KEA/tZOp6PhWUb5fHBz7H3F7CgfwM/h4KVQIRq	\N	2	B	Thakur	\N	\N	dmHCxHRFTBy4MQusVlSIa3:APA91bGZYT-NCvanY63fLLPzi61AOKKSDn6LFi5NHOof6iBsZLT3dUHw7sSfZbAqcaplk9lqjp1wCNYw95irKpeqAgnN61KizGSvbpO0ZmaScpuNgoJOOk2NqW4igi7MdAtc3suX7xZK	ANDROID	56daa44357fe411da451215b5df299ef90e937b905c60f5630592d708088091e	-NGpwTO8uK1S2fs1fP4K	\N	2022-11-14 11:41:30	2022-11-14 11:41:38	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
64	test user	healthywealthy@test001.com	971	525338372	1	$2y$10$dTEG6i22t3RvpcnyhFBiL.eBJih6RXjmCnpMZGsF02wvmfhF1vZ9C	\N	2	test	user	\N	\N	abdhjef ekef kjwf wedfw	iOS	8c61029af45dde61c0127c196271e302e82c3c27dadc3ae5ff24209a16c065f4	-NGuKUg_Afl9iGHhnBaV	\N	2022-11-15 08:09:22	2022-11-15 13:25:04	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	50		2022-11-15 08:50:21	0	\N	0
73	Irfan pkl	nasarmobiria1@gmail.com	91	9633049990	1	$2y$10$eeFUCtBX13WRPOdevHIQdOztbxFYcjJV4ZNwKivqCION/EjqAEkDy	2022-11-15 12:40:14	2	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	ff5a4e86a46af2be40b465a252b3fb83c43beb6c72cf6b10d2ecc4890dfa9d45	-NGvITcaZlDf8LnqePeL	\N	2022-11-15 12:40:14	2022-11-15 12:41:14	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
65	Irfan pkl	nasarmobiria@gmail.com	\N	0	0	$2y$10$yv0PxSe4kyYFRN0jDMESyOQpUnxKkBCraMfqScbAq/UNgWlcB/w46	2022-11-15 09:29:44	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	2b3d7c7bf2a7766dafa8e1b327070530575343c7044085138d23340be575854d	-NGubs9_kJPyIc4yIsRv	\N	2022-11-15 09:29:44	2022-11-15 09:29:44	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
66	Irfan pkl	nasarmobiria@gmail.com	\N	0	1	$2y$10$k4d/f1z9BrzWPZxBAcnRe.CBrp1ZhhyZ82TB5u4OVZ1QqK1gjzIfS	2022-11-15 11:20:25	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	056b228e5c619bc60e9af3b8fbc3b35fe6726585d6e643fece31668e549280fa	-NGv0C_8wo2QoShkksQp	\N	2022-11-15 11:20:25	2022-11-15 11:21:09	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
70	Irfan pkl	nasarmobiria@gmail.com	\N	0	0	$2y$10$PIpoxeXK5TwDpZZD5b.3iejsv/5PsMSOU7UOSTq49ZBjWU9KdpnNi	2022-11-15 11:48:59	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	976238f70db6c408888cc01dd3a0f6e913118c33ebf3127ab708db4fb817ac6e	-NGv6jyLJStpT_7rMDzp	\N	2022-11-15 11:48:59	2022-11-15 12:39:55	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
68	Rusvin K	rusvin@gmail.com	91	9744089692	0	$2y$10$L/6iWIUTQjmr4y0c53B7g.x5/TQm9RZI3b.wE2d1NXsUSDHsh9.sK	\N	2	Rusvin	K	\N	1111	121212	android	\N	\N	\N	2022-11-15 11:47:31	2022-11-15 11:47:31	0	0	0	0	1	0	\N	\N	0	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
72	Irfan pkl	nasarmobiria@gmail.com	\N	0	0	$2y$10$HbemgbT9GnzrBqMIEppSrenvpHKlsSZdEZjWqlw.LrP9zdvbh6gjO	2022-11-15 12:39:46	2	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	260016e1bb0015375d3290234912e459add27da1b49e70d2a74d386ddef72682	-NGvIMwIu2rlS10qHLgz	\N	2022-11-15 12:39:46	2022-11-15 12:39:47	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
71	Irfan pkl	nasarmobiria@gmail.com	\N	0	0	$2y$10$sjxm2fnAyGZ5VVZ8Ltum..tU3yOiFO5nV0zMqeSBnNyxdHnbFCPti	2022-11-15 11:50:08	\N	\N	\N	\N	1111	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	f8a710ef373e99a0b05bf811512970af4e025357803389acf9d07540e3c0dfc7	-NGv7-lXDyReiNYUtKHj	\N	2022-11-15 11:50:08	2022-11-15 11:53:29	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
69	Irfan pkl	nasarmobiria@gmail.com	\N	0	1	$2y$10$nxcEZNa.odbn4GvIQOdMLurGwRkeKJoEwlV8XT1LM2uifvkUckwde	2022-11-15 11:47:54	\N	\N	\N	\N	\N	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	d93adab131a9c40104385bc30ac7d286a3618fb213beb0a107e9d29bfd989b87	-NGv6V9rtNv3VoJNuK3L	\N	2022-11-15 11:47:54	2022-11-15 12:39:58	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
39	Rusvin k	rusvinmerak@gmail.com	971	9744089690	1	$2y$10$6oy3EezK3DgWnsn8B9eNs.2Qiu7SqLiWSxhqCR1.26Hv1KFERUKey	\N	2	Rusvin	k	1667825915636900fb879be.jpg	1111	1111	android	f7385fc49e67780306e16c85256420a83f46849e010438cb748cf5323bd29d51	-NGFetYBnlL9_ojTBCUZ	\N	2022-11-07 05:22:33	2022-11-15 15:59:42	0	0	0	0	1	0	\N	\N	1	1111	\N	0	0	0	\N	0	\N	0	\N	1	\N	2360	6dee024bda1a55056f0bae9550395dae2808d33c36a9c1a8543ce8772b964bca	2022-11-14 19:10:23	0	\N	1111
74	Irfan pkl	mippkl2@gmail1.com	91	9633049957	0	$2y$10$QfePbFg.NsYarvO1SGlD3O4dRu/Gji0KH7HYSUT.AYXtTJynn9JFu	2022-11-15 18:21:22	2	\N	\N	\N	1111	fE6cQAV9SneFIN7sfKNUQP:APA91bG2wQjtWJ6yooAnS04Ftsuq28Gfftsjn3FnaC0u7JeXC7ooFBVeDu9WzxKsio0U4LRqlHK4Hkn42gAiuptL8UkGo70Ale4eVLW_mQyUcyvyKJVlF89TMEwVuneZJJmzm0_0wdyD	android	15ac87277bab149f984d6aea307d5fe99719cb3fac759d771a7387566c814d59	-NGwWYs-tNspYmoyJhbA	\N	2022-11-15 18:21:22	2022-11-15 18:21:39	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
76	Hamid Raza	hraza@myeazycare.com	+971	3441562554	1	$2y$10$sbZIggtkiySRM46l7JfVku8pLW1mDcQJHbVdWkoRnDs/nDx/fC0o2	2022-11-15 18:50:47	2	\N	\N	\N	\N	eF2S8DDjStmnNFr6ES7kfp:APA91bGk2oDQMhmW5rkQY8i6PYk1-5LDySkf29a7p4CtO8AzpTqCAQdBrT2nSBSuQVRCo4l-b-vikONoxEL4DsnVJ-7AarzMr6QhQtpiq6EAg4H4zeG49iHbFWE8-ma5jMd5gFGkt1im	ANDROID	210317a17ae51a304daffea37c78c916ec1f309f2674fa5670b3383b82f74290	-NGwcHaNgYwYh20EHqdh	\N	2022-11-15 18:50:47	2022-11-15 19:15:59	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	400	\N	\N	0	\N	\N
75	Hamid Raza	hamidrazagoraya34@gmail.com	+971	3441562554	1	$2y$10$nIHWZ6VKFnwbtIaux2/GFeSvGY2fQlodbOl7iginky8vlGopGn1fe	2022-11-15 18:46:14	2	\N	\N	\N	\N	eF2S8DDjStmnNFr6ES7kfp:APA91bGk2oDQMhmW5rkQY8i6PYk1-5LDySkf29a7p4CtO8AzpTqCAQdBrT2nSBSuQVRCo4l-b-vikONoxEL4DsnVJ-7AarzMr6QhQtpiq6EAg4H4zeG49iHbFWE8-ma5jMd5gFGkt1im	ANDROID	443863720e341701dcc866a0735da0d76a025cf676af6a9dd73a040eb8ae7cab	-NGwbF7MaUAW0I1w6xQs	\N	2022-11-15 18:46:14	2022-11-15 18:50:12	0	0	0	0	1	0	\N	\N	1	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 76, true);


--
-- Data for Name: users_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users_role (id, role_name, created_at, updated_at) FROM stdin;
1	admin	2022-09-22 15:10:04	2022-09-22 15:10:04
2	users	2022-09-22 15:10:04	2022-09-22 15:10:04
3	vendors	2022-09-22 15:10:04	2022-09-22 15:10:04
\.


--
-- Name: users_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_role_id_seq', 3, true);


--
-- Data for Name: vendor_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vendor_details (id, homedelivery, logo, key_control, branches, company_name, company_brand, legal_staus, reg_date, trade_license, trade_license_expiry, vat_reg_number, vat_reg_expiry, address1, address2, street, state, city, zip, trade_license_doc, chamber_of_commerce_doc, share_certificate_doc, power_attorny_doc, vat_reg_doc, signed_agreement_doc, identy1_type, identy1_doc, identy2_type, identy2_doc, company_identy1_type, company_identy1_doc, company_identy2_type, company_identy2_doc, created_at, updated_at, industry_type, user_id, store_type, txt_location, location, latitude, longitude, area, pharmacycommission, servicecommission, featured_flag, open_time, close_time, description, cover_image) FROM stdin;
1	1	/uploads/company/632c7b1d205c0_1663859485.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-09-22 15:11:25	2022-09-22 15:11:25	1	2	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
2	1	/uploads/company/632d4ac08822e_1663912640.png	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-09-23 05:57:20	2022-09-23 05:57:20	1	3	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
3	1	/uploads/company/632d9d099dae5_1663933705.png	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-09-23 11:48:11	2022-09-23 11:48:25	1	4	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7	1	/uploads/company/633eddf0ebf38_1665064432.png	0	0	testing	\N	\N	\N	34343	2022-10-27 00:00:00	\N	\N	rfer	fsdfs	dsf	1	1	34333	/uploads/company/633eddf0ec138_1665064432.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-06 13:53:52	2022-10-06 13:53:52	0	8	2	12 16th St - Jumeirah - Jumeirah 2 - Dubai - United Arab Emirates	12 16th St - Jumeirah - Jumeirah 2 - Dubai - United Arab Emirates	25.205409015701505	55.24601124340818	\N	\N	\N	0	\N	\N	\N	\N
8	1	/uploads/company/633ee4023173a_1665065986.png	0	0	gfhfgh	\N	\N	\N	435435	2022-10-26 00:00:00	\N	\N	fdgdg	fdgfd	fdgfd	1	1	544445	/uploads/company/633ee4023191d_1665065986.png	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-06 14:19:46	2022-10-06 14:19:46	0	9	2	5CQ3+VX5 - Al Warqa - Al Warqa 1 - Dubai - United Arab Emirates	5CQ3+VX5 - Al Warqa - Al Warqa 1 - Dubai - United Arab Emirates	25.1895641	55.4050392	\N	\N	\N	0	\N	\N	\N	\N
10	1	/uploads/company/6353b018a631b_1666428952.jpg	0	0	ABCD LLP	\N	\N	\N	232323	2022-10-22 00:00:00	\N	\N	ar	13313131	23qw	0	1	6736385	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-22 08:55:52	2022-10-22 08:55:52	0	12	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
9	1	/uploads/company/6353adb3812bf_1666428339.jpg	0	0	ABCD LLP	\N	\N	\N	1232323	2022-10-22 00:00:00	\N	\N	ar	212	2323	1	1	87855	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-22 08:45:39	2022-10-22 08:56:41	0	11	0	du	du			\N	\N	\N	0	\N	\N	\N	\N
14	1	/uploads/company/6357a256c0e91_1666687574.png	0	0	test	\N	\N	\N	123	2022-10-27 00:00:00	\N	\N	address	address2	address	1	1	700010	/uploads/company/6357a256c1091_1666687574.png	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-25 08:46:14	2022-10-25 08:54:35	2	16	2	6729+HPV - Dubai - United Arab Emirates	6729+HPV - Dubai - United Arab Emirates	25.201945588458507	55.268913978820784	\N	\N	\N	0	\N	\N	\N	\N
16	1	/uploads/company/636dca2d92be2_1668139565.jpg	0	0	ABCD LLP	\N	\N	\N	121211	2022-10-26 00:00:00	\N	\N	1212	212	wewe	1	1	87855	/uploads/company/6359070108360_1666778881.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-26 10:08:01	2022-11-11 04:06:05	3	18	0	Jafza One, FZJOB1320 Dubai - Dubai - United Arab Emirates	Jafza One, FZJOB1320 Dubai - Dubai - United Arab Emirates	25.2048493	55.2707828	ABCD	10	5	1	12:00 PM	5:00 PM	test	\N
6	1	/uploads/company/6373681590e3d_1668507669.jpg	0	0	zahid	\N	\N	\N	22334455	2022-10-26 00:00:00	\N	\N	Jamshoro	Jamshoro	23	1	1	70010	/uploads/company/633ed09606bc6_1665061014.png	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-06 12:56:54	2022-11-15 10:21:09	3	7	0	65GF+4H Dubai - United Arab Emirates	65GF+4H Dubai - United Arab Emirates	25.2253648	55.173977	\N	10	10	0	12:00 AM	12:00 PM	company description	\N
5	1	/uploads/company/633130de98754_1664168158.png	0	0	TEST MEDICINE	\N	\N	\N	212	2022-11-26 00:00:00	\N	\N	1212	1212	1212	1	1	121221	/uploads/company/633ecf345f8b6_1665060660.png	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-09-26 04:55:58	2022-11-11 10:33:10	2	6	0	The Dubai Mall - شارع المركز المالي - وسط مدينة دبي - دبي - United Arab Emirates	The Dubai Mall - شارع المركز المالي - وسط مدينة دبي - دبي - United Arab Emirates	25.198765	55.27960530000001	\N	\N	\N	0	12:00 AM	12:00 PM	test about	/uploads/company/636e24e67ee0d_1668162790.jpg
22	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-08 04:57:37	2022-11-08 04:57:37	1	39	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
17	1	/uploads/company/636a3d0af05b0_1667906826.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-01 13:31:08	2022-11-08 11:27:06	1	20	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
23	1	/uploads/company/6369e2c375461_1667883715.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-08 04:58:44	2022-11-08 05:01:55	0	44	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
11	0	/uploads/company/6353f8c857007_1666447560.jpg	0	0	Health Pharma	\N	\N	\N	123456789	2022-10-20 00:00:00	\N	\N	Dubai Festival City	\N	Jaddaf	0	1	00000	/uploads/company/6353f8c8571ea_1666447560.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-22 14:06:00	2022-11-14 09:05:45	2	13	0	69C3+Q4 Dubai - United Arab Emirates	69C3+Q4 Dubai - United Arab Emirates	25.221966649464477	55.35279035568237	Jaddaf	\N	\N	0	1:00	12:00	test	\N
13	0	/uploads/company/637367d95475e_1668507609.crdownload	0	0	MEDICIN COMPANY	\N	\N	\N	232323	2022-10-25 00:00:00	\N	\N	1212	212	2323	1	1	87855	/uploads/company/63577e2693b95_1666678310.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-25 06:11:50	2022-11-15 10:20:09	1	15	0	7938+777 ATC TOWER, Dubai Airport, Dubai International Airport - Dubai - United Arab Emirates	7938+777 ATC TOWER, Dubai Airport, Dubai International Airport - Dubai - United Arab Emirates	25.2531745	55.36567280000001	2323	10	\N	1	10:00 AM	12:00 PM	sdada	\N
19	1	/uploads/company/636a0081a2714_1667891329.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-08 04:55:34	2022-11-08 07:08:49	1	35	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
15	0	/uploads/company/636dca3fcce5a_1668139583.jpg	0	0	MEDICIN COMPANY	\N	\N	\N	121212	2022-10-26 00:00:00	\N	\N	1212	3333	wewe	1	1	87855	/uploads/company/6358bb8f268e7_1666759567.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-10-26 04:46:07	2022-11-11 04:06:23	3	17	0	The Dubai Mall - شارع المركز المالي - وسط مدينة دبي - دبي - United Arab Emirates	The Dubai Mall - شارع المركز المالي - وسط مدينة دبي - دبي - United Arab Emirates	25.198765	55.27960530000001	wewe	10	10	1	12:00 AM	12:00 PM	about	\N
4	1	/uploads/company/6373d4ef0f6d5_1668535535.jpg	0	0	ASTER PHARMACY	\N	\N	\N	12121	2022-09-23 00:00:00	\N	\N	1212	1212	asasa	1	1	112121	/uploads/company/632dc543d43eb_1663944003.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-09-23 14:40:03	2022-11-15 18:05:35	1	5	0	673C+W8X - Al Safa St - Dubai - United Arab Emirates	673C+W8X - Al Safa St - Dubai - United Arab Emirates	25.204849299999992	55.27086863068847	\N	2	\N	0	12:00 AM	11:55 PM	Offering the entire gamut of curative, nutritive, baby products, lifestyle, wellness products, FMCG products, cosmetics, personal & homecare products - Aster Pharmacy has become a household name in the UAE & has emerged as the brand of choice amongst pharmacies due to its solid availability & customer first orientation.	/uploads/company/6373d417c9b8e_1668535319.jpg
53	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 18:21:22	2022-11-15 18:21:22	0	74	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
54	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 18:46:14	2022-11-15 18:46:14	0	75	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
18	1	/uploads/company/636dc9ec5eff2_1668139500.jpg	0	0	AQB Pharmacy LTD	\N	\N	\N	123456	2022-11-30 00:00:00	\N	\N	17/2/H/5 canal west road	17/2/H/5 canal west road	Canal west road	1	1	700009	/uploads/company/6368985d92c74_1667799133.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-07 05:32:13	2022-11-11 10:27:04	1	40	0	Boulevard Plaza, Tower 1 - Level 14 Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - United Arab Emirates	Boulevard Plaza, Tower 1 - Level 14 Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - United Arab Emirates	25.201557284399943	55.27608084130858	Narkeldanga	10	\N	1	10:00 AM	10:00 PM	AQB Pharmacy is a listed in under top 10 best service provide company here all genuine medicine available	/uploads/company/636e2378b20c2_1668162424.jpg
26	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-11 14:20:03	2022-11-11 14:20:03	0	47	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
28	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-11 15:06:13	2022-11-11 15:06:13	0	49	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
29	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 15:29:32	2022-11-12 15:29:32	0	50	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
30	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 15:31:47	2022-11-12 15:31:47	0	51	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
31	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 15:31:56	2022-11-12 15:31:56	0	52	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
32	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 16:17:14	2022-11-12 16:17:14	0	53	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
34	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 18:26:47	2022-11-12 18:26:47	0	55	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
33	1	/uploads/company/637007e4eedc7_1668286436.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-12 16:47:40	2022-11-12 20:53:56	0	54	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
35	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-14 05:50:11	2022-11-14 05:50:11	0	56	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
36	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-14 08:48:07	2022-11-14 08:48:07	0	57	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
37	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-14 08:53:47	2022-11-14 08:53:47	0	58	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
25	1	/uploads/company/636e2a5de502c_1668164189.png	0	0	MedPlus	\N	\N	\N	MD_123	2022-12-31 00:00:00	\N	\N	Silicon	Silicon	Silicon	1	1	700009	/uploads/company/63721734cc0f4_1668421428.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-11 10:56:29	2022-11-14 10:23:48	1	46	0	Silicon Oasis Avenue Mall 2 - Dubai Silicon Oasis - Dubai - United Arab Emirates	Silicon Oasis Avenue Mall 2 - Dubai Silicon Oasis - Dubai - United Arab Emirates	25.1121421	55.37553739999999	\N	10	\N	1	10:00 AM	10:00 PM	Medplus is an all-Medicare service provider	/uploads/company/636e2a5de51fa_1668164189.jpg
40	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-14 11:41:30	2022-11-14 11:41:30	0	61	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
42	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 04:52:30	2022-11-15 04:52:30	0	63	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
43	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 08:09:22	2022-11-15 08:09:22	0	64	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
44	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 09:29:44	2022-11-15 09:29:44	0	65	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
45	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:20:25	2022-11-15 11:20:25	0	66	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
46	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:22:19	2022-11-15 11:22:19	0	67	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
47	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:47:31	2022-11-15 11:47:31	0	68	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
48	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:47:54	2022-11-15 11:47:54	0	69	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
49	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:48:59	2022-11-15 11:48:59	0	70	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
50	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 11:50:08	2022-11-15 11:50:08	0	71	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
51	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 12:39:46	2022-11-15 12:39:46	0	72	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
52	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 12:40:14	2022-11-15 12:40:14	0	73	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
55	1	\N	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2022-11-15 18:50:47	2022-11-15 18:50:47	0	76	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
\.


--
-- Name: vendor_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vendor_details_id_seq', 55, true);


--
-- Data for Name: vendor_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vendor_services (id, vendor_id, service_id, created_at, updated_at) FROM stdin;
4	7	1	2022-10-25 06:22:00	2022-10-25 06:22:00
7	6	2	2022-10-25 06:26:00	2022-10-25 06:26:00
8	8	2	2022-10-25 06:06:00	2022-10-25 06:06:00
9	8	1	2022-10-25 06:06:00	2022-10-25 06:06:00
10	8	3	2022-10-25 06:06:00	2022-10-25 06:06:00
11	8	4	2022-10-25 06:06:00	2022-10-25 06:06:00
6	7	4	2022-10-25 06:01:00	2022-10-25 06:01:00
14	7	2	2022-10-25 09:31:00	2022-10-25 09:31:00
15	16	2	2022-10-26 10:54:00	2022-10-26 10:54:00
17	13	1	2022-10-26 10:21:00	2022-10-26 10:21:00
18	13	3	2022-10-26 10:21:00	2022-10-26 10:21:00
19	13	4	2022-10-26 10:21:00	2022-10-26 10:21:00
20	14	2	2022-10-26 13:03:00	2022-10-26 13:03:00
2	14	1	2022-10-26 13:03:00	2022-10-26 13:03:00
12	14	3	2022-10-26 13:03:00	2022-10-26 13:03:00
13	14	4	2022-10-26 13:03:00	2022-10-26 13:03:00
22	17	1	2022-10-26 13:25:00	2022-10-26 13:25:00
23	17	3	2022-10-26 13:25:00	2022-10-26 13:25:00
24	17	4	2022-10-26 13:25:00	2022-10-26 13:25:00
25	17	5	2022-10-26 13:25:00	2022-10-26 13:25:00
\.


--
-- Name: vendor_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vendor_services_id_seq', 25, true);


--
-- Data for Name: wallet_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wallet_histories (id, user_id, wallet_amount, pay_type, description, created_at, updated_at, pay_method) FROM stdin;
1	3	12	10	admin added amount in user wallet	2022-09-28 00:00:00	2022-09-28 00:00:00	0
2	4	5	10	admin added amount in user wallet	2022-10-06 00:00:00	2022-10-06 00:00:00	0
3	4	6	10	admin added amount in user wallet	2022-10-06 00:00:00	2022-10-06 00:00:00	0
4	35	25	credited	Wallet Top up (via App)	2022-11-11 14:38:00	2022-11-11 14:38:00	0
5	35	25	credited	Wallet Top up (via App)	2022-11-13 16:24:00	2022-11-13 16:24:00	0
6	35	50	credited	Wallet Top up (via App)	2022-11-13 17:05:00	2022-11-13 17:05:00	0
7	35	200	credited	Wallet Top up (via App)	2022-11-13 17:06:00	2022-11-13 17:06:00	0
8	35	2500	credited	Wallet Top up (via App)	2022-11-13 17:06:00	2022-11-13 17:06:00	0
9	35	50000	credited	Wallet Top up (via App)	2022-11-13 17:06:00	2022-11-13 17:06:00	0
10	35	2000	credited	Wallet Top up (via App)	2022-11-13 18:44:00	2022-11-13 18:44:00	0
11	35	100	debited	Used for cart checkout	2022-11-14 04:46:00	2022-11-14 04:46:00	0
12	39	25	credited	Wallet Top up (via App)	2022-11-14 04:59:00	2022-11-14 04:59:00	2
13	35	500	credited	Wallet Top up (via App)	2022-11-14 05:22:00	2022-11-14 05:22:00	2
14	39	25	credited	Wallet Top up (via App)	2022-11-14 06:13:00	2022-11-14 06:13:00	3
15	56	500	credited	Wallet Top up (via App)	2022-11-14 06:25:00	2022-11-14 06:25:00	1
16	39	2500	credited	Wallet Top up (via App)	2022-11-14 07:02:00	2022-11-14 07:02:00	3
17	39	190	debited	Used for cart checkout	2022-11-14 07:02:00	2022-11-14 07:02:00	0
18	56	220	debited	Used for cart checkout	2022-11-14 07:16:00	2022-11-14 07:16:00	0
19	56	120	debited	Used for cart checkout	2022-11-14 07:18:00	2022-11-14 07:18:00	0
20	56	1000	credited	Wallet Top up (via App)	2022-11-14 07:57:00	2022-11-14 07:57:00	1
21	56	150	credited	Wallet Top up (via App)	2022-11-14 10:09:00	2022-11-14 10:09:00	1
22	54	500	credited	Wallet Top up (via App)	2022-11-14 16:50:00	2022-11-14 16:50:00	1
23	54	100	credited	Wallet Top up (via App)	2022-11-14 17:00:00	2022-11-14 17:00:00	1
24	63	222	credited	Wallet Top up (via App)	2022-11-15 06:13:00	2022-11-15 06:13:00	1
25	64	50	credited	Wallet Top up (via App)	2022-11-15 13:25:00	2022-11-15 13:25:00	1
26	56	980	debited	Used for cart checkout	2022-11-15 14:30:00	2022-11-15 14:30:00	0
27	76	500	credited	Wallet Top up (via App)	2022-11-15 18:55:00	2022-11-15 18:55:00	1
28	76	100	debited	Used for cart checkout	2022-11-15 19:15:00	2022-11-15 19:15:00	0
29	54	800	credited	Wallet Top up (via App)	2022-11-15 23:31:00	2022-11-15 23:31:00	1
\.


--
-- Name: wallet_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wallet_histories_id_seq', 29, true);


--
-- Data for Name: wallet_payment_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wallet_payment_report (id, transaction_id, payment_status, user_id, ref_id, amount, method_type, created_at, updated_at) FROM stdin;
1	356368a0a5392721667801253	P	35	pi_3M1OUaBjsMxFtgBe1kXKqAb3	25.00	2	2022-11-07 06:07:33	\N
2	35636e5e46dc9371668177478	A	35	pi_3M2yMkBjsMxFtgBe1KpPUjy5	25.00	2	2022-11-11 14:37:58	2022-11-11 14:38:34
3	35637119df6c1ee1668356575	A	35	pi_3M3ixPBjsMxFtgBe1dEwoFJ5	25.00	1	2022-11-13 16:22:55	2022-11-13 16:24:49
4	35637123f7146fd1668359159	A	35	pi_3M3jd4BjsMxFtgBe0iqFWlni	50.00	1	2022-11-13 17:05:59	2022-11-13 17:05:59
5	35637124042b9e81668359172	A	35	pi_3M3jdHBjsMxFtgBe1aXObHWd	200.00	1	2022-11-13 17:06:12	2022-11-13 17:06:12
6	35637124195bdcd1668359193	A	35	pi_3M3jddBjsMxFtgBe01hnVK9K	2500.00	1	2022-11-13 17:06:33	2022-11-13 17:06:33
7	3563712427e41811668359207	A	35	pi_3M3jdrBjsMxFtgBe17tLOgQv	50000.00	1	2022-11-13 17:06:47	2022-11-13 17:06:48
8	35637138195b5dd1668364313	P	35	pi_3M3kyDBjsMxFtgBe1IJIhXgF	10.00	1	2022-11-13 18:31:53	\N
9	3563713af2ba8d71668365042	A	35	pi_3M3l9yBjsMxFtgBe1Zv4mag8	2000.00	1	2022-11-13 18:44:02	2022-11-13 18:44:36
10	396371cb0cbd3181668401932	A	39	pi_3M3ukyBjsMxFtgBe02IKvNZC	25.00	2	2022-11-14 04:58:52	2022-11-14 04:59:00
11	356371d080430d01668403328	A	35	pi_3M3v7UBjsMxFtgBe1A1GBWvA	500.00	2	2022-11-14 05:22:08	2022-11-14 05:22:33
12	396371dad6bf54d1668405974	P	39	pi_3M3voABjsMxFtgBe0OWrIVgc	25.00	2	2022-11-14 06:06:14	\N
13	396371db523b72c1668406098	P	39	pi_3M3vqABjsMxFtgBe1X3cCPyK	25.00	2	2022-11-14 06:08:18	\N
14	356371db83cce001668406147	P	35	pi_3M3vqxBjsMxFtgBe0XI5ONwm	25.00	1	2022-11-14 06:09:07	\N
15	396371dc31248cd1668406321	P	39	pi_3M3vtkBjsMxFtgBe1JrHUEKv	25.00	3	2022-11-14 06:12:01	\N
16	396371dc64936c71668406372	A	39	pi_3M3vuaBjsMxFtgBe1Rm22CCq	25.00	3	2022-11-14 06:12:52	2022-11-14 06:13:05
17	566371df22525f21668407074	A	56	pi_3M3w5uBjsMxFtgBe1w4Y34xk	500.00	1	2022-11-14 06:24:34	2022-11-14 06:25:05
18	396371e7ded8a211668409310	P	39	pi_3M3wfyBjsMxFtgBe0OzAs0Vg	25.00	3	2022-11-14 07:01:50	\N
19	396371e7e4d55241668409316	A	39	pi_3M3wg4BjsMxFtgBe0k1Oh8YN	2500.00	3	2022-11-14 07:01:56	2022-11-14 07:02:04
20	566371f4c7ccbba1668412615	A	56	pi_3M3xXHBjsMxFtgBe1AyW10f3	1000.00	1	2022-11-14 07:56:55	2022-11-14 07:57:35
21	5863720ca8bb15c1668418728	P	58	pi_3M3z7sBjsMxFtgBe0gQwXIV4	100.00	1	2022-11-14 09:38:48	\N
22	566372139c784211668420508	A	56	pi_3M3zaaBjsMxFtgBe0ZQKZaYg	150.00	1	2022-11-14 10:08:28	2022-11-14 10:09:00
23	5663721428d3a321668420648	P	56	pi_3M3zcqBjsMxFtgBe0pooLatp	1500.00	1	2022-11-14 10:10:48	\N
24	3963722e285ad411668427304	P	39	pi_3M41MCBjsMxFtgBe1rWYRsHG	2500.00	3	2022-11-14 12:01:44	\N
25	3963726bd0b13561668443088	P	39	pi_3M45SmBjsMxFtgBe1of9paIT	25.00	2	2022-11-14 16:24:48	\N
26	54637270c68c74f1668444358	P	54	pi_3M45nGBjsMxFtgBe1w1UqW4m	500.00	1	2022-11-14 16:45:58	\N
27	54637271b63d32b1668444598	A	54	pi_3M45r8BjsMxFtgBe0XEzYUhk	500.00	1	2022-11-14 16:49:58	2022-11-14 16:50:18
28	54637271d42cc1d1668444628	P	54	pi_3M45rbBjsMxFtgBe1I9tTE5c	500.00	2	2022-11-14 16:50:28	\N
29	54637274134513c1668445203	A	54	pi_3M460tBjsMxFtgBe1mKbemsN	100.00	1	2022-11-14 17:00:03	2022-11-14 17:00:22
30	6363732e01d31851668492801	P	63	pi_3M4IObBjsMxFtgBe0tSP6QB6	222.00	1	2022-11-15 06:13:21	\N
31	6363732e0c16f0f1668492812	A	63	pi_3M4IOlBjsMxFtgBe1MNp3DAy	222.00	1	2022-11-15 06:13:32	2022-11-15 06:13:54
32	6363732e50ca7bd1668492880	P	63	pi_3M4IPsBjsMxFtgBe0YYNs4qc	208.00	2	2022-11-15 06:14:40	\N
33	6363732e7044e4e1668492912	P	63	pi_3M4IQOBjsMxFtgBe0wuwIfCZ	208.00	2	2022-11-15 06:15:12	\N
34	64637351847e7ef1668501892	P	64	pi_3M4KlEBjsMxFtgBe0DJzTNQ7	100.00	1	2022-11-15 08:44:52	\N
35	64637351bc743471668501948	P	64	pi_3M4Km8BjsMxFtgBe0tQSs7xp	100.00	1	2022-11-15 08:45:48	\N
36	6463735221479d11668502049	P	64	pi_3M4KnlBjsMxFtgBe1hjeHYKW	100.00	1	2022-11-15 08:47:29	\N
37	3963738880758ff1668515968	P	39	pi_3M4OQGBjsMxFtgBe0TEG3TpB	2500.00	3	2022-11-15 12:39:28	\N
38	646373932004d331668518688	A	64	pi_3M4P87BjsMxFtgBe0ldxKVQS	50.00	1	2022-11-15 13:24:48	2022-11-15 13:25:04
39	766373e09c40e471668538524	A	76	pi_3M4UI4BjsMxFtgBe1ZrHKIdV	500.00	1	2022-11-15 18:55:24	2022-11-15 18:55:52
40	546374213f523561668555071	A	54	pi_3M4YaxBjsMxFtgBe12gzr3R4	800.00	1	2022-11-15 23:31:11	2022-11-15 23:31:27
\.


--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wallet_payment_report_id_seq', 40, true);


--
-- Data for Name: websockets_statistics_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY websockets_statistics_entries (id, app_id, peak_connection_count, websocket_message_count, api_message_count, created_at, updated_at) FROM stdin;
\.


--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('websockets_statistics_entries_id_seq', 1, false);


--
-- Name: admin_designation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_designation
    ADD CONSTRAINT admin_designation_pkey PRIMARY KEY (id);


--
-- Name: amount_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY amount_type
    ADD CONSTRAINT amount_type_pkey PRIMARY KEY (id);


--
-- Name: app_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_banners
    ADD CONSTRAINT app_banners_pkey PRIMARY KEY (id);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: attribute_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute_type
    ADD CONSTRAINT attribute_type_pkey PRIMARY KEY (id);


--
-- Name: attribute_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attribute_values
    ADD CONSTRAINT attribute_values_pkey PRIMARY KEY (id);


--
-- Name: attribute_values_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY attribute_values_request
    ADD CONSTRAINT attribute_values_request_pkey PRIMARY KEY (id);


--
-- Name: attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (id);


--
-- Name: bank_code_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bank_code_types
    ADD CONSTRAINT bank_code_types_pkey PRIMARY KEY (id);


--
-- Name: bank_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bank_details
    ADD CONSTRAINT bank_details_pkey PRIMARY KEY (id);


--
-- Name: bank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);


--
-- Name: cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: cart_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cart_service
    ADD CONSTRAINT cart_service_pkey PRIMARY KEY (id);


--
-- Name: category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: comment_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY comment_likes
    ADD CONSTRAINT comment_likes_pkey PRIMARY KEY (id);


--
-- Name: comment_taged_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY comment_taged_users
    ADD CONSTRAINT comment_taged_users_pkey PRIMARY KEY (id);


--
-- Name: common_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY common_faq
    ADD CONSTRAINT common_faq_pkey PRIMARY KEY (cf_id);


--
-- Name: contact_us_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);


--
-- Name: contact_us_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_us_settings
    ADD CONSTRAINT contact_us_settings_pkey PRIMARY KEY (id);


--
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: coupon_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY coupon_category
    ADD CONSTRAINT coupon_category_pkey PRIMARY KEY (id);


--
-- Name: coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY coupon
    ADD CONSTRAINT coupon_pkey PRIMARY KEY (id);


--
-- Name: coupon_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY coupon_products
    ADD CONSTRAINT coupon_products_pkey PRIMARY KEY (id);


--
-- Name: coupon_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY coupon_services
    ADD CONSTRAINT coupon_services_pkey PRIMARY KEY (id);


--
-- Name: designations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY designations
    ADD CONSTRAINT designations_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: faq_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY faq
    ADD CONSTRAINT faq_pkey PRIMARY KEY (id);


--
-- Name: featured_products_img_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY featured_products_img
    ADD CONSTRAINT featured_products_img_pkey PRIMARY KEY (id);


--
-- Name: featured_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY featured_products
    ADD CONSTRAINT featured_products_pkey PRIMARY KEY (id);


--
-- Name: hair_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY hair_colors
    ADD CONSTRAINT hair_colors_pkey PRIMARY KEY (id);


--
-- Name: help_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY help
    ADD CONSTRAINT help_pkey PRIMARY KEY (id);


--
-- Name: industry_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY industry_types
    ADD CONSTRAINT industry_types_pkey PRIMARY KEY (id);


--
-- Name: likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: moda_main_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY moda_main_categories
    ADD CONSTRAINT moda_main_categories_pkey PRIMARY KEY (id);


--
-- Name: moda_sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY moda_sub_categories
    ADD CONSTRAINT moda_sub_categories_pkey PRIMARY KEY (id);


--
-- Name: my_moda_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY my_moda_items
    ADD CONSTRAINT my_moda_items_pkey PRIMARY KEY (id);


--
-- Name: my_moda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY my_moda
    ADD CONSTRAINT my_moda_pkey PRIMARY KEY (id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (id);


--
-- Name: orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: orders_services_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY orders_services_items
    ADD CONSTRAINT orders_services_items_pkey PRIMARY KEY (id);


--
-- Name: orders_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY orders_services
    ADD CONSTRAINT orders_services_pkey PRIMARY KEY (order_id);


--
-- Name: payment_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY payment_report
    ADD CONSTRAINT payment_report_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: post_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id);


--
-- Name: post_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_likes
    ADD CONSTRAINT post_likes_pkey PRIMARY KEY (id);


--
-- Name: post_saves_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_saves
    ADD CONSTRAINT post_saves_pkey PRIMARY KEY (id);


--
-- Name: post_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post_users
    ADD CONSTRAINT post_users_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: product_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_attribute
    ADD CONSTRAINT product_attribute_pkey PRIMARY KEY (attribute_id);


--
-- Name: product_attribute_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_attribute_values
    ADD CONSTRAINT product_attribute_values_pkey PRIMARY KEY (attribute_values_id);


--
-- Name: product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (product_category_id);


--
-- Name: product_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_docs
    ADD CONSTRAINT product_docs_pkey PRIMARY KEY (id);


--
-- Name: product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- Name: product_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_likes
    ADD CONSTRAINT product_likes_pkey PRIMARY KEY (id);


--
-- Name: product_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_master
    ADD CONSTRAINT product_master_pkey PRIMARY KEY (id);


--
-- Name: product_master_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY product_master_request
    ADD CONSTRAINT product_master_request_pkey PRIMARY KEY (id);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_selected_attribute_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_selected_attribute_list
    ADD CONSTRAINT product_selected_attribute_list_pkey PRIMARY KEY (product_attribute_id);


--
-- Name: product_selected_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_selected_attributes
    ADD CONSTRAINT product_selected_attributes_pkey PRIMARY KEY (product_selected_attributes_id);


--
-- Name: product_specifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_specifications
    ADD CONSTRAINT product_specifications_pkey PRIMARY KEY (prod_spec_id);


--
-- Name: product_temp_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_temp_image
    ADD CONSTRAINT product_temp_image_pkey PRIMARY KEY (id);


--
-- Name: product_variations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_variations
    ADD CONSTRAINT product_variations_pkey PRIMARY KEY (product_variations_id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: service_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY service_category
    ADD CONSTRAINT service_category_pkey PRIMARY KEY (id);


--
-- Name: service_category_selected_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY service_category_selected
    ADD CONSTRAINT service_category_selected_pkey PRIMARY KEY (id);


--
-- Name: service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: skin_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY skin_colors
    ADD CONSTRAINT skin_colors_pkey PRIMARY KEY (id);


--
-- Name: states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: store_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY store_images
    ADD CONSTRAINT store_images_pkey PRIMARY KEY (id);


--
-- Name: store_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY store_likes
    ADD CONSTRAINT store_likes_pkey PRIMARY KEY (id);


--
-- Name: store_managers_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY store_managers_types
    ADD CONSTRAINT store_managers_types_pkey PRIMARY KEY (id);


--
-- Name: store_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY store_type
    ADD CONSTRAINT store_type_pkey PRIMARY KEY (id);


--
-- Name: stores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: temp_order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temp_order_products
    ADD CONSTRAINT temp_order_products_pkey PRIMARY KEY (id);


--
-- Name: temp_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temp_orders
    ADD CONSTRAINT temp_orders_pkey PRIMARY KEY (id);


--
-- Name: temp_service_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY temp_service_order_items
    ADD CONSTRAINT temp_service_order_items_pkey PRIMARY KEY (id);


--
-- Name: temp_service_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser; Tablespace: 
--

ALTER TABLE ONLY temp_service_orders
    ADD CONSTRAINT temp_service_orders_pkey PRIMARY KEY (id);


--
-- Name: user_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (id);


--
-- Name: user_follows_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_follows
    ADD CONSTRAINT user_follows_pkey PRIMARY KEY (id);


--
-- Name: user_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_privileges
    ADD CONSTRAINT user_privileges_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users_role
    ADD CONSTRAINT users_role_pkey PRIMARY KEY (id);


--
-- Name: vendor_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vendor_details
    ADD CONSTRAINT vendor_details_pkey PRIMARY KEY (id);


--
-- Name: vendor_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vendor_services
    ADD CONSTRAINT vendor_services_pkey PRIMARY KEY (id);


--
-- Name: wallet_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wallet_histories
    ADD CONSTRAINT wallet_histories_pkey PRIMARY KEY (id);


--
-- Name: wallet_payment_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY wallet_payment_report
    ADD CONSTRAINT wallet_payment_report_pkey PRIMARY KEY (id);


--
-- Name: websockets_statistics_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY websockets_statistics_entries
    ADD CONSTRAINT websockets_statistics_entries_pkey PRIMARY KEY (id);


--
-- Name: des_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX des_user_id ON designations USING btree (user_id);


--
-- Name: designation_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX designation_id ON users USING btree (designation_id);


--
-- Name: man_vendor_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX man_vendor_id ON store_managers_types USING btree (vendor_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX password_resets_email_index ON password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: user_designation_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_designation_id ON user_privileges USING btree (designation_id);


--
-- Name: user_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_user_id ON user_privileges USING btree (user_id);


--
-- Name: bank_details_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bank_details
    ADD CONSTRAINT bank_details_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: comment_likes_comment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_likes
    ADD CONSTRAINT comment_likes_comment_id_foreign FOREIGN KEY (comment_id) REFERENCES post_comments(id) ON DELETE CASCADE;


--
-- Name: comment_likes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_likes
    ADD CONSTRAINT comment_likes_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: comment_taged_users_comment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_taged_users
    ADD CONSTRAINT comment_taged_users_comment_id_foreign FOREIGN KEY (comment_id) REFERENCES post_comments(id) ON DELETE CASCADE;


--
-- Name: comment_taged_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comment_taged_users
    ADD CONSTRAINT comment_taged_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: designations_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY designations
    ADD CONSTRAINT designations_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: order_products_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY order_products
    ADD CONSTRAINT order_products_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: post_comments_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_comments
    ADD CONSTRAINT post_comments_post_id_foreign FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE;


--
-- Name: post_comments_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_comments
    ADD CONSTRAINT post_comments_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: post_saves_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_saves
    ADD CONSTRAINT post_saves_post_id_foreign FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE;


--
-- Name: post_saves_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_saves
    ADD CONSTRAINT post_saves_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: post_users_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_users
    ADD CONSTRAINT post_users_post_id_foreign FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE;


--
-- Name: post_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post_users
    ADD CONSTRAINT post_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: product_docs_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_docs
    ADD CONSTRAINT product_docs_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: product_images_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_images
    ADD CONSTRAINT product_images_product_id_foreign FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE;


--
-- Name: product_selected_attributes_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_selected_attributes
    ADD CONSTRAINT product_selected_attributes_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: product_specifications_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_specifications
    ADD CONSTRAINT product_specifications_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: product_variations_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_variations
    ADD CONSTRAINT product_variations_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: store_managers_types_vendor_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY store_managers_types
    ADD CONSTRAINT store_managers_types_vendor_id_foreign FOREIGN KEY (vendor_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: temp_order_products_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temp_order_products
    ADD CONSTRAINT temp_order_products_product_id_foreign FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


--
-- Name: temp_orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temp_orders
    ADD CONSTRAINT temp_orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: user_address_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_address
    ADD CONSTRAINT user_address_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: user_follows_follow_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_follows
    ADD CONSTRAINT user_follows_follow_user_id_foreign FOREIGN KEY (follow_user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: user_follows_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_follows
    ADD CONSTRAINT user_follows_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: vendor_details_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vendor_details
    ADD CONSTRAINT vendor_details_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: wallet_histories_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wallet_histories
    ADD CONSTRAINT wallet_histories_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: admin_designation; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE admin_designation FROM PUBLIC;
REVOKE ALL ON TABLE admin_designation FROM postgres;
GRANT ALL ON TABLE admin_designation TO postgres;


--
-- Name: amount_type; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE amount_type FROM PUBLIC;
REVOKE ALL ON TABLE amount_type FROM postgres;
GRANT ALL ON TABLE amount_type TO postgres;


--
-- Name: app_banners; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE app_banners FROM PUBLIC;
REVOKE ALL ON TABLE app_banners FROM postgres;
GRANT ALL ON TABLE app_banners TO postgres;


--
-- Name: articles; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE articles FROM PUBLIC;
REVOKE ALL ON TABLE articles FROM postgres;
GRANT ALL ON TABLE articles TO postgres;


--
-- Name: attribute_type; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE attribute_type FROM PUBLIC;
REVOKE ALL ON TABLE attribute_type FROM postgres;
GRANT ALL ON TABLE attribute_type TO postgres;


--
-- Name: attribute_values; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE attribute_values FROM PUBLIC;
REVOKE ALL ON TABLE attribute_values FROM postgres;
GRANT ALL ON TABLE attribute_values TO postgres;


--
-- Name: attributes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE attributes FROM PUBLIC;
REVOKE ALL ON TABLE attributes FROM postgres;
GRANT ALL ON TABLE attributes TO postgres;


--
-- Name: bank; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE bank FROM PUBLIC;
REVOKE ALL ON TABLE bank FROM postgres;
GRANT ALL ON TABLE bank TO postgres;


--
-- Name: bank_code_types; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE bank_code_types FROM PUBLIC;
REVOKE ALL ON TABLE bank_code_types FROM postgres;
GRANT ALL ON TABLE bank_code_types TO postgres;


--
-- Name: bank_details; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE bank_details FROM PUBLIC;
REVOKE ALL ON TABLE bank_details FROM postgres;
GRANT ALL ON TABLE bank_details TO postgres;


--
-- Name: blog; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE blog FROM PUBLIC;
REVOKE ALL ON TABLE blog FROM postgres;
GRANT ALL ON TABLE blog TO postgres;


--
-- Name: brand; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE brand FROM PUBLIC;
REVOKE ALL ON TABLE brand FROM postgres;
GRANT ALL ON TABLE brand TO postgres;


--
-- Name: cart; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE cart FROM PUBLIC;
REVOKE ALL ON TABLE cart FROM postgres;
GRANT ALL ON TABLE cart TO postgres;


--
-- Name: cart_service; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE cart_service FROM PUBLIC;
REVOKE ALL ON TABLE cart_service FROM postgres;
GRANT ALL ON TABLE cart_service TO postgres;


--
-- Name: category; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE category FROM PUBLIC;
REVOKE ALL ON TABLE category FROM postgres;
GRANT ALL ON TABLE category TO postgres;


--
-- Name: cities; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE cities FROM PUBLIC;
REVOKE ALL ON TABLE cities FROM postgres;
GRANT ALL ON TABLE cities TO postgres;


--
-- Name: comment_likes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE comment_likes FROM PUBLIC;
REVOKE ALL ON TABLE comment_likes FROM postgres;
GRANT ALL ON TABLE comment_likes TO postgres;


--
-- Name: comment_taged_users; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE comment_taged_users FROM PUBLIC;
REVOKE ALL ON TABLE comment_taged_users FROM postgres;
GRANT ALL ON TABLE comment_taged_users TO postgres;


--
-- Name: common_faq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE common_faq FROM PUBLIC;
REVOKE ALL ON TABLE common_faq FROM postgres;
GRANT ALL ON TABLE common_faq TO postgres;


--
-- Name: contact_us; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE contact_us FROM PUBLIC;
REVOKE ALL ON TABLE contact_us FROM postgres;
GRANT ALL ON TABLE contact_us TO postgres;


--
-- Name: contact_us_settings; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE contact_us_settings FROM PUBLIC;
REVOKE ALL ON TABLE contact_us_settings FROM postgres;
GRANT ALL ON TABLE contact_us_settings TO postgres;


--
-- Name: country; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE country FROM PUBLIC;
REVOKE ALL ON TABLE country FROM postgres;
GRANT ALL ON TABLE country TO postgres;


--
-- Name: coupon; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE coupon FROM PUBLIC;
REVOKE ALL ON TABLE coupon FROM postgres;
GRANT ALL ON TABLE coupon TO postgres;


--
-- Name: coupon_category; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE coupon_category FROM PUBLIC;
REVOKE ALL ON TABLE coupon_category FROM postgres;
GRANT ALL ON TABLE coupon_category TO postgres;


--
-- Name: coupon_products; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE coupon_products FROM PUBLIC;
REVOKE ALL ON TABLE coupon_products FROM postgres;
GRANT ALL ON TABLE coupon_products TO postgres;


--
-- Name: designations; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE designations FROM PUBLIC;
REVOKE ALL ON TABLE designations FROM postgres;
GRANT ALL ON TABLE designations TO postgres;


--
-- Name: failed_jobs; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE failed_jobs FROM PUBLIC;
REVOKE ALL ON TABLE failed_jobs FROM postgres;
GRANT ALL ON TABLE failed_jobs TO postgres;


--
-- Name: faq; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE faq FROM PUBLIC;
REVOKE ALL ON TABLE faq FROM postgres;
GRANT ALL ON TABLE faq TO postgres;


--
-- Name: featured_products; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE featured_products FROM PUBLIC;
REVOKE ALL ON TABLE featured_products FROM postgres;
GRANT ALL ON TABLE featured_products TO postgres;


--
-- Name: featured_products_img; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE featured_products_img FROM PUBLIC;
REVOKE ALL ON TABLE featured_products_img FROM postgres;
GRANT ALL ON TABLE featured_products_img TO postgres;


--
-- Name: hair_colors; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE hair_colors FROM PUBLIC;
REVOKE ALL ON TABLE hair_colors FROM postgres;
GRANT ALL ON TABLE hair_colors TO postgres;


--
-- Name: help; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE help FROM PUBLIC;
REVOKE ALL ON TABLE help FROM postgres;
GRANT ALL ON TABLE help TO postgres;


--
-- Name: industry_types; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE industry_types FROM PUBLIC;
REVOKE ALL ON TABLE industry_types FROM postgres;
GRANT ALL ON TABLE industry_types TO postgres;


--
-- Name: likes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE likes FROM PUBLIC;
REVOKE ALL ON TABLE likes FROM postgres;
GRANT ALL ON TABLE likes TO postgres;


--
-- Name: migrations; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE migrations FROM PUBLIC;
REVOKE ALL ON TABLE migrations FROM postgres;
GRANT ALL ON TABLE migrations TO postgres;


--
-- Name: moda_main_categories; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE moda_main_categories FROM PUBLIC;
REVOKE ALL ON TABLE moda_main_categories FROM postgres;
GRANT ALL ON TABLE moda_main_categories TO postgres;


--
-- Name: moda_sub_categories; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE moda_sub_categories FROM PUBLIC;
REVOKE ALL ON TABLE moda_sub_categories FROM postgres;
GRANT ALL ON TABLE moda_sub_categories TO postgres;


--
-- Name: my_moda; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE my_moda FROM PUBLIC;
REVOKE ALL ON TABLE my_moda FROM postgres;
GRANT ALL ON TABLE my_moda TO postgres;


--
-- Name: my_moda_items; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE my_moda_items FROM PUBLIC;
REVOKE ALL ON TABLE my_moda_items FROM postgres;
GRANT ALL ON TABLE my_moda_items TO postgres;


--
-- Name: notifications; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE notifications FROM PUBLIC;
REVOKE ALL ON TABLE notifications FROM postgres;
GRANT ALL ON TABLE notifications TO postgres;


--
-- Name: order_products; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE order_products FROM PUBLIC;
REVOKE ALL ON TABLE order_products FROM postgres;
GRANT ALL ON TABLE order_products TO postgres;


--
-- Name: orders; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE orders FROM PUBLIC;
REVOKE ALL ON TABLE orders FROM postgres;
GRANT ALL ON TABLE orders TO postgres;


--
-- Name: password_resets; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE password_resets FROM PUBLIC;
REVOKE ALL ON TABLE password_resets FROM postgres;
GRANT ALL ON TABLE password_resets TO postgres;


--
-- Name: payment_report; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE payment_report FROM PUBLIC;
REVOKE ALL ON TABLE payment_report FROM postgres;
GRANT ALL ON TABLE payment_report TO postgres;


--
-- Name: personal_access_tokens; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE personal_access_tokens FROM PUBLIC;
REVOKE ALL ON TABLE personal_access_tokens FROM postgres;
GRANT ALL ON TABLE personal_access_tokens TO postgres;


--
-- Name: post_comments; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE post_comments FROM PUBLIC;
REVOKE ALL ON TABLE post_comments FROM postgres;
GRANT ALL ON TABLE post_comments TO postgres;


--
-- Name: post_likes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE post_likes FROM PUBLIC;
REVOKE ALL ON TABLE post_likes FROM postgres;
GRANT ALL ON TABLE post_likes TO postgres;


--
-- Name: post_saves; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE post_saves FROM PUBLIC;
REVOKE ALL ON TABLE post_saves FROM postgres;
GRANT ALL ON TABLE post_saves TO postgres;


--
-- Name: post_users; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE post_users FROM PUBLIC;
REVOKE ALL ON TABLE post_users FROM postgres;
GRANT ALL ON TABLE post_users TO postgres;


--
-- Name: posts; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE posts FROM PUBLIC;
REVOKE ALL ON TABLE posts FROM postgres;
GRANT ALL ON TABLE posts TO postgres;


--
-- Name: product; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product FROM PUBLIC;
REVOKE ALL ON TABLE product FROM postgres;
GRANT ALL ON TABLE product TO postgres;


--
-- Name: product_attribute; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_attribute FROM PUBLIC;
REVOKE ALL ON TABLE product_attribute FROM postgres;
GRANT ALL ON TABLE product_attribute TO postgres;


--
-- Name: product_attribute_values; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_attribute_values FROM PUBLIC;
REVOKE ALL ON TABLE product_attribute_values FROM postgres;
GRANT ALL ON TABLE product_attribute_values TO postgres;


--
-- Name: product_category; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_category FROM PUBLIC;
REVOKE ALL ON TABLE product_category FROM postgres;
GRANT ALL ON TABLE product_category TO postgres;


--
-- Name: product_docs; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_docs FROM PUBLIC;
REVOKE ALL ON TABLE product_docs FROM postgres;
GRANT ALL ON TABLE product_docs TO postgres;


--
-- Name: product_images; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_images FROM PUBLIC;
REVOKE ALL ON TABLE product_images FROM postgres;
GRANT ALL ON TABLE product_images TO postgres;


--
-- Name: product_likes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_likes FROM PUBLIC;
REVOKE ALL ON TABLE product_likes FROM postgres;
GRANT ALL ON TABLE product_likes TO postgres;


--
-- Name: product_master; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_master FROM PUBLIC;
REVOKE ALL ON TABLE product_master FROM postgres;
GRANT ALL ON TABLE product_master TO postgres;


--
-- Name: product_selected_attribute_list; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_selected_attribute_list FROM PUBLIC;
REVOKE ALL ON TABLE product_selected_attribute_list FROM postgres;
GRANT ALL ON TABLE product_selected_attribute_list TO postgres;


--
-- Name: product_selected_attributes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_selected_attributes FROM PUBLIC;
REVOKE ALL ON TABLE product_selected_attributes FROM postgres;
GRANT ALL ON TABLE product_selected_attributes TO postgres;


--
-- Name: product_specifications; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_specifications FROM PUBLIC;
REVOKE ALL ON TABLE product_specifications FROM postgres;
GRANT ALL ON TABLE product_specifications TO postgres;


--
-- Name: product_temp_image; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_temp_image FROM PUBLIC;
REVOKE ALL ON TABLE product_temp_image FROM postgres;
GRANT ALL ON TABLE product_temp_image TO postgres;


--
-- Name: product_variations; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE product_variations FROM PUBLIC;
REVOKE ALL ON TABLE product_variations FROM postgres;
GRANT ALL ON TABLE product_variations TO postgres;


--
-- Name: products; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE products FROM PUBLIC;
REVOKE ALL ON TABLE products FROM postgres;
GRANT ALL ON TABLE products TO postgres;


--
-- Name: ratings; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE ratings FROM PUBLIC;
REVOKE ALL ON TABLE ratings FROM postgres;
GRANT ALL ON TABLE ratings TO postgres;


--
-- Name: service; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE service FROM PUBLIC;
REVOKE ALL ON TABLE service FROM postgres;
GRANT ALL ON TABLE service TO postgres;


--
-- Name: service_category; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE service_category FROM PUBLIC;
REVOKE ALL ON TABLE service_category FROM postgres;
GRANT ALL ON TABLE service_category TO postgres;


--
-- Name: service_category_selected; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE service_category_selected FROM PUBLIC;
REVOKE ALL ON TABLE service_category_selected FROM postgres;
GRANT ALL ON TABLE service_category_selected TO postgres;


--
-- Name: settings; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE settings FROM PUBLIC;
REVOKE ALL ON TABLE settings FROM postgres;
GRANT ALL ON TABLE settings TO postgres;


--
-- Name: skin_colors; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE skin_colors FROM PUBLIC;
REVOKE ALL ON TABLE skin_colors FROM postgres;
GRANT ALL ON TABLE skin_colors TO postgres;


--
-- Name: states; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE states FROM PUBLIC;
REVOKE ALL ON TABLE states FROM postgres;
GRANT ALL ON TABLE states TO postgres;


--
-- Name: store_images; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE store_images FROM PUBLIC;
REVOKE ALL ON TABLE store_images FROM postgres;
GRANT ALL ON TABLE store_images TO postgres;


--
-- Name: store_likes; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE store_likes FROM PUBLIC;
REVOKE ALL ON TABLE store_likes FROM postgres;
GRANT ALL ON TABLE store_likes TO postgres;


--
-- Name: store_managers_types; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE store_managers_types FROM PUBLIC;
REVOKE ALL ON TABLE store_managers_types FROM postgres;
GRANT ALL ON TABLE store_managers_types TO postgres;


--
-- Name: store_type; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE store_type FROM PUBLIC;
REVOKE ALL ON TABLE store_type FROM postgres;
GRANT ALL ON TABLE store_type TO postgres;


--
-- Name: stores; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE stores FROM PUBLIC;
REVOKE ALL ON TABLE stores FROM postgres;
GRANT ALL ON TABLE stores TO postgres;


--
-- Name: temp_order_products; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE temp_order_products FROM PUBLIC;
REVOKE ALL ON TABLE temp_order_products FROM postgres;
GRANT ALL ON TABLE temp_order_products TO postgres;


--
-- Name: temp_orders; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE temp_orders FROM PUBLIC;
REVOKE ALL ON TABLE temp_orders FROM postgres;
GRANT ALL ON TABLE temp_orders TO postgres;


--
-- Name: user_address; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE user_address FROM PUBLIC;
REVOKE ALL ON TABLE user_address FROM postgres;
GRANT ALL ON TABLE user_address TO postgres;


--
-- Name: user_follows; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE user_follows FROM PUBLIC;
REVOKE ALL ON TABLE user_follows FROM postgres;
GRANT ALL ON TABLE user_follows TO postgres;


--
-- Name: user_privileges; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE user_privileges FROM PUBLIC;
REVOKE ALL ON TABLE user_privileges FROM postgres;
GRANT ALL ON TABLE user_privileges TO postgres;


--
-- Name: users; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE users FROM PUBLIC;
REVOKE ALL ON TABLE users FROM postgres;
GRANT ALL ON TABLE users TO postgres;


--
-- Name: users_role; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE users_role FROM PUBLIC;
REVOKE ALL ON TABLE users_role FROM postgres;
GRANT ALL ON TABLE users_role TO postgres;


--
-- Name: vendor_details; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE vendor_details FROM PUBLIC;
REVOKE ALL ON TABLE vendor_details FROM postgres;
GRANT ALL ON TABLE vendor_details TO postgres;


--
-- Name: vendor_services; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE vendor_services FROM PUBLIC;
REVOKE ALL ON TABLE vendor_services FROM postgres;
GRANT ALL ON TABLE vendor_services TO postgres;


--
-- Name: wallet_histories; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE wallet_histories FROM PUBLIC;
REVOKE ALL ON TABLE wallet_histories FROM postgres;
GRANT ALL ON TABLE wallet_histories TO postgres;


--
-- Name: wallet_payment_report; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE wallet_payment_report FROM PUBLIC;
REVOKE ALL ON TABLE wallet_payment_report FROM postgres;
GRANT ALL ON TABLE wallet_payment_report TO postgres;


--
-- Name: websockets_statistics_entries; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE websockets_statistics_entries FROM PUBLIC;
REVOKE ALL ON TABLE websockets_statistics_entries FROM postgres;
GRANT ALL ON TABLE websockets_statistics_entries TO postgres;


--
-- PostgreSQL database dump complete
--

