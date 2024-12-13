--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15
-- Dumped by pg_dump version 12.15

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

ALTER TABLE ONLY public.wallet_histories DROP CONSTRAINT wallet_histories_user_id_foreign;
ALTER TABLE ONLY public.vendor_details DROP CONSTRAINT vendor_details_user_id_foreign;
ALTER TABLE ONLY public.user_follows DROP CONSTRAINT user_follows_user_id_foreign;
ALTER TABLE ONLY public.user_follows DROP CONSTRAINT user_follows_follow_user_id_foreign;
ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_user_id_foreign;
ALTER TABLE ONLY public.temp_orders DROP CONSTRAINT temp_orders_user_id_foreign;
ALTER TABLE ONLY public.temp_order_products DROP CONSTRAINT temp_order_products_product_id_foreign;
ALTER TABLE ONLY public.store_managers_types DROP CONSTRAINT store_managers_types_vendor_id_foreign;
ALTER TABLE ONLY public.service DROP CONSTRAINT service_service_user_id_foreign;
ALTER TABLE ONLY public.product_variations DROP CONSTRAINT product_variations_product_id_foreign;
ALTER TABLE ONLY public.product_specifications DROP CONSTRAINT product_specifications_product_id_foreign;
ALTER TABLE ONLY public.product_selected_attributes DROP CONSTRAINT product_selected_attributes_product_id_foreign;
ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_product_id_foreign;
ALTER TABLE ONLY public.product_docs DROP CONSTRAINT product_docs_product_id_foreign;
ALTER TABLE ONLY public.post_users DROP CONSTRAINT post_users_user_id_foreign;
ALTER TABLE ONLY public.post_users DROP CONSTRAINT post_users_post_id_foreign;
ALTER TABLE ONLY public.post_saves DROP CONSTRAINT post_saves_user_id_foreign;
ALTER TABLE ONLY public.post_saves DROP CONSTRAINT post_saves_post_id_foreign;
ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_comments_user_id_foreign;
ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_comments_post_id_foreign;
ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_foreign;
ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_product_id_foreign;
ALTER TABLE ONLY public.designations DROP CONSTRAINT designations_user_id_foreign;
ALTER TABLE ONLY public.comment_taged_users DROP CONSTRAINT comment_taged_users_user_id_foreign;
ALTER TABLE ONLY public.comment_taged_users DROP CONSTRAINT comment_taged_users_comment_id_foreign;
ALTER TABLE ONLY public.comment_likes DROP CONSTRAINT comment_likes_user_id_foreign;
ALTER TABLE ONLY public.comment_likes DROP CONSTRAINT comment_likes_comment_id_foreign;
ALTER TABLE ONLY public.bank_details DROP CONSTRAINT bank_details_user_id_foreign;
DROP INDEX public.user_user_id;
DROP INDEX public.user_designation_id;
DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
DROP INDEX public.password_resets_email_index;
DROP INDEX public.man_vendor_id;
DROP INDEX public.designation_id;
DROP INDEX public.des_user_id;
ALTER TABLE ONLY public.websockets_statistics_entries DROP CONSTRAINT websockets_statistics_entries_pkey;
ALTER TABLE ONLY public.wallet_payment_report DROP CONSTRAINT wallet_payment_report_pkey;
ALTER TABLE ONLY public.wallet_histories DROP CONSTRAINT wallet_histories_pkey;
ALTER TABLE ONLY public.vendor_services DROP CONSTRAINT vendor_services_pkey;
ALTER TABLE ONLY public.vendor_details DROP CONSTRAINT vendor_details_pkey;
ALTER TABLE ONLY public.users_role DROP CONSTRAINT users_role_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_privileges DROP CONSTRAINT user_privileges_pkey;
ALTER TABLE ONLY public.user_follows DROP CONSTRAINT user_follows_pkey;
ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_pkey;
ALTER TABLE ONLY public.temp_service_orders DROP CONSTRAINT temp_service_orders_pkey;
ALTER TABLE ONLY public.temp_service_order_items DROP CONSTRAINT temp_service_order_items_pkey;
ALTER TABLE ONLY public.temp_orders DROP CONSTRAINT temp_orders_pkey;
ALTER TABLE ONLY public.temp_order_products DROP CONSTRAINT temp_order_products_pkey;
ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
ALTER TABLE ONLY public.store_type DROP CONSTRAINT store_type_pkey;
ALTER TABLE ONLY public.store_managers_types DROP CONSTRAINT store_managers_types_pkey;
ALTER TABLE ONLY public.store_likes DROP CONSTRAINT store_likes_pkey;
ALTER TABLE ONLY public.store_images DROP CONSTRAINT store_images_pkey;
ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey;
ALTER TABLE ONLY public.skin_colors DROP CONSTRAINT skin_colors_pkey;
ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
ALTER TABLE ONLY public.service_type DROP CONSTRAINT service_type_pkey;
ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
ALTER TABLE ONLY public.service_include DROP CONSTRAINT service_include_pkey;
ALTER TABLE ONLY public.service_category_selected DROP CONSTRAINT service_category_selected_pkey;
ALTER TABLE ONLY public.service_category DROP CONSTRAINT service_category_pkey;
ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
ALTER TABLE ONLY public.product_variations DROP CONSTRAINT product_variations_pkey;
ALTER TABLE ONLY public.product_temp_image DROP CONSTRAINT product_temp_image_pkey;
ALTER TABLE ONLY public.product_specifications DROP CONSTRAINT product_specifications_pkey;
ALTER TABLE ONLY public.product_selected_attributes DROP CONSTRAINT product_selected_attributes_pkey;
ALTER TABLE ONLY public.product_selected_attribute_list DROP CONSTRAINT product_selected_attribute_list_pkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
ALTER TABLE ONLY public.product_master_request DROP CONSTRAINT product_master_request_pkey;
ALTER TABLE ONLY public.product_master DROP CONSTRAINT product_master_pkey;
ALTER TABLE ONLY public.product_likes DROP CONSTRAINT product_likes_pkey;
ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
ALTER TABLE ONLY public.product_docs DROP CONSTRAINT product_docs_pkey;
ALTER TABLE ONLY public.product_category DROP CONSTRAINT product_category_pkey;
ALTER TABLE ONLY public.product_attribute_values DROP CONSTRAINT product_attribute_values_pkey;
ALTER TABLE ONLY public.product_attribute DROP CONSTRAINT product_attribute_pkey;
ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
ALTER TABLE ONLY public.post_users DROP CONSTRAINT post_users_pkey;
ALTER TABLE ONLY public.post_saves DROP CONSTRAINT post_saves_pkey;
ALTER TABLE ONLY public.post_likes DROP CONSTRAINT post_likes_pkey;
ALTER TABLE ONLY public.post_comments DROP CONSTRAINT post_comments_pkey;
ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
ALTER TABLE ONLY public.payment_report DROP CONSTRAINT payment_report_pkey;
ALTER TABLE ONLY public.orders_services_rejected DROP CONSTRAINT orders_services_rejected_pkey;
ALTER TABLE ONLY public.orders_services DROP CONSTRAINT orders_services_pkey;
ALTER TABLE ONLY public.orders_services_items DROP CONSTRAINT orders_services_items_pkey;
ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_pkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
ALTER TABLE ONLY public.my_moda DROP CONSTRAINT my_moda_pkey;
ALTER TABLE ONLY public.my_moda_items DROP CONSTRAINT my_moda_items_pkey;
ALTER TABLE ONLY public.moda_sub_categories DROP CONSTRAINT moda_sub_categories_pkey;
ALTER TABLE ONLY public.moda_main_categories DROP CONSTRAINT moda_main_categories_pkey;
ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE ONLY public.maintainance DROP CONSTRAINT maintainance_pkey;
ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
ALTER TABLE ONLY public.industry_types DROP CONSTRAINT industry_types_pkey;
ALTER TABLE ONLY public.help DROP CONSTRAINT help_pkey;
ALTER TABLE ONLY public.hair_colors DROP CONSTRAINT hair_colors_pkey;
ALTER TABLE ONLY public.featured_products DROP CONSTRAINT featured_products_pkey;
ALTER TABLE ONLY public.featured_products_img DROP CONSTRAINT featured_products_img_pkey;
ALTER TABLE ONLY public.faq DROP CONSTRAINT faq_pkey;
ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
ALTER TABLE ONLY public.designations DROP CONSTRAINT designations_pkey;
ALTER TABLE ONLY public.coupon_services DROP CONSTRAINT coupon_services_pkey;
ALTER TABLE ONLY public.coupon_products DROP CONSTRAINT coupon_products_pkey;
ALTER TABLE ONLY public.coupon DROP CONSTRAINT coupon_pkey;
ALTER TABLE ONLY public.coupon_category DROP CONSTRAINT coupon_category_pkey;
ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
ALTER TABLE ONLY public.contracting DROP CONSTRAINT contracting_pkey;
ALTER TABLE ONLY public.contact_us_settings DROP CONSTRAINT contact_us_settings_pkey;
ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
ALTER TABLE ONLY public.comment_taged_users DROP CONSTRAINT comment_taged_users_pkey;
ALTER TABLE ONLY public.comment_likes DROP CONSTRAINT comment_likes_pkey;
ALTER TABLE ONLY public.cleaning_services DROP CONSTRAINT cleaning_services_pkey;
ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
ALTER TABLE ONLY public.cart_service DROP CONSTRAINT cart_service_pkey;
ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
ALTER TABLE ONLY public.building_type DROP CONSTRAINT building_type_pkey;
ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
ALTER TABLE ONLY public.bank DROP CONSTRAINT bank_pkey;
ALTER TABLE ONLY public.bank_details DROP CONSTRAINT bank_details_pkey;
ALTER TABLE ONLY public.bank_code_types DROP CONSTRAINT bank_code_types_pkey;
ALTER TABLE ONLY public.attributes DROP CONSTRAINT attributes_pkey;
ALTER TABLE ONLY public.attribute_values_request DROP CONSTRAINT attribute_values_request_pkey;
ALTER TABLE ONLY public.attribute_values DROP CONSTRAINT attribute_values_pkey;
ALTER TABLE ONLY public.attribute_type DROP CONSTRAINT attribute_type_pkey;
ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
ALTER TABLE ONLY public.app_banners DROP CONSTRAINT app_banners_pkey;
ALTER TABLE ONLY public.amount_type DROP CONSTRAINT amount_type_pkey;
ALTER TABLE ONLY public.admin_designation DROP CONSTRAINT admin_designation_pkey;
ALTER TABLE public.websockets_statistics_entries ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wallet_payment_report ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.wallet_histories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.vendor_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.vendor_details ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_privileges ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_follows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_address ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.temp_service_orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.temp_service_order_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.temp_orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.temp_order_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.stores ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.store_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.store_managers_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.store_likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.store_images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.states ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.skin_colors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_include ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_category_selected ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_variations ALTER COLUMN product_variations_id DROP DEFAULT;
ALTER TABLE public.product_temp_image ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_specifications ALTER COLUMN prod_spec_id DROP DEFAULT;
ALTER TABLE public.product_selected_attributes ALTER COLUMN product_selected_attributes_id DROP DEFAULT;
ALTER TABLE public.product_selected_attribute_list ALTER COLUMN product_attribute_id DROP DEFAULT;
ALTER TABLE public.product_master_request ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_master ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_images ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_docs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product_category ALTER COLUMN product_category_id DROP DEFAULT;
ALTER TABLE public.product_attribute_values ALTER COLUMN attribute_values_id DROP DEFAULT;
ALTER TABLE public.product_attribute ALTER COLUMN attribute_id DROP DEFAULT;
ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.post_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.post_saves ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.post_likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.post_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.payment_report ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.orders_services_rejected ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.orders_services_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.orders_services ALTER COLUMN order_id DROP DEFAULT;
ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
ALTER TABLE public.order_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.my_moda_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.my_moda ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.moda_sub_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.moda_main_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maintainance ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.industry_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.help ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.hair_colors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.featured_products_img ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.featured_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.faq ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.designations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.coupon_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.coupon_products ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.coupon_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.coupon ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contracting ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contact_us_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.contact_us ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comment_taged_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comment_likes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cleaning_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cart_service ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.building_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bank_details ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bank_code_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.bank ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attributes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attribute_values_request ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attribute_values ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attribute_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.app_banners ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.amount_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_designation ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.websockets_statistics_entries_id_seq;
DROP TABLE public.websockets_statistics_entries;
DROP SEQUENCE public.wallet_payment_report_id_seq;
DROP TABLE public.wallet_payment_report;
DROP SEQUENCE public.wallet_histories_id_seq;
DROP TABLE public.wallet_histories;
DROP SEQUENCE public.vendor_services_id_seq;
DROP TABLE public.vendor_services;
DROP SEQUENCE public.vendor_details_id_seq;
DROP TABLE public.vendor_details;
DROP SEQUENCE public.users_role_id_seq;
DROP TABLE public.users_role;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_privileges_id_seq;
DROP TABLE public.user_privileges;
DROP SEQUENCE public.user_follows_id_seq;
DROP TABLE public.user_follows;
DROP SEQUENCE public.user_address_id_seq;
DROP TABLE public.user_address;
DROP SEQUENCE public.temp_service_orders_id_seq;
DROP TABLE public.temp_service_orders;
DROP SEQUENCE public.temp_service_order_items_id_seq;
DROP TABLE public.temp_service_order_items;
DROP SEQUENCE public.temp_orders_id_seq;
DROP TABLE public.temp_orders;
DROP SEQUENCE public.temp_order_products_id_seq;
DROP TABLE public.temp_order_products;
DROP SEQUENCE public.stores_id_seq;
DROP TABLE public.stores;
DROP SEQUENCE public.store_type_id_seq;
DROP TABLE public.store_type;
DROP SEQUENCE public.store_managers_types_id_seq;
DROP TABLE public.store_managers_types;
DROP SEQUENCE public.store_likes_id_seq;
DROP TABLE public.store_likes;
DROP SEQUENCE public.store_images_id_seq;
DROP TABLE public.store_images;
DROP SEQUENCE public.states_id_seq;
DROP TABLE public.states;
DROP SEQUENCE public.skin_colors_id_seq;
DROP TABLE public.skin_colors;
DROP SEQUENCE public.settings_id_seq;
DROP TABLE public.settings;
DROP SEQUENCE public.service_type_id_seq;
DROP TABLE public.service_type;
DROP SEQUENCE public.service_include_id_seq;
DROP TABLE public.service_include;
DROP SEQUENCE public.service_id_seq;
DROP SEQUENCE public.service_category_selected_id_seq;
DROP TABLE public.service_category_selected;
DROP SEQUENCE public.service_category_id_seq;
DROP TABLE public.service_category;
DROP TABLE public.service;
DROP SEQUENCE public.ratings_id_seq;
DROP TABLE public.ratings;
DROP SEQUENCE public.products_id_seq;
DROP TABLE public.products;
DROP SEQUENCE public.product_variations_product_variations_id_seq;
DROP TABLE public.product_variations;
DROP SEQUENCE public.product_temp_image_id_seq;
DROP TABLE public.product_temp_image;
DROP SEQUENCE public.product_specifications_prod_spec_id_seq;
DROP TABLE public.product_specifications;
DROP SEQUENCE public.product_selected_attributes_product_selected_attributes_id_seq;
DROP TABLE public.product_selected_attributes;
DROP SEQUENCE public.product_selected_attribute_list_product_attribute_id_seq;
DROP TABLE public.product_selected_attribute_list;
DROP SEQUENCE public.product_master_request_id_seq;
DROP TABLE public.product_master_request;
DROP SEQUENCE public.product_master_id_seq;
DROP TABLE public.product_master;
DROP SEQUENCE public.product_likes_id_seq;
DROP TABLE public.product_likes;
DROP SEQUENCE public.product_images_id_seq;
DROP TABLE public.product_images;
DROP SEQUENCE public.product_id_seq;
DROP SEQUENCE public.product_docs_id_seq;
DROP TABLE public.product_docs;
DROP SEQUENCE public.product_category_product_category_id_seq;
DROP TABLE public.product_category;
DROP SEQUENCE public.product_attribute_values_attribute_values_id_seq;
DROP TABLE public.product_attribute_values;
DROP SEQUENCE public.product_attribute_attribute_id_seq;
DROP TABLE public.product_attribute;
DROP TABLE public.product;
DROP SEQUENCE public.posts_id_seq;
DROP TABLE public.posts;
DROP SEQUENCE public.post_users_id_seq;
DROP TABLE public.post_users;
DROP SEQUENCE public.post_saves_id_seq;
DROP TABLE public.post_saves;
DROP SEQUENCE public.post_likes_id_seq;
DROP TABLE public.post_likes;
DROP SEQUENCE public.post_comments_id_seq;
DROP TABLE public.post_comments;
DROP SEQUENCE public.personal_access_tokens_id_seq;
DROP TABLE public.personal_access_tokens;
DROP SEQUENCE public.payment_report_id_seq;
DROP TABLE public.payment_report;
DROP TABLE public.password_resets;
DROP SEQUENCE public.orders_services_rejected_id_seq;
DROP TABLE public.orders_services_rejected;
DROP SEQUENCE public.orders_services_order_id_seq;
DROP SEQUENCE public.orders_services_items_id_seq;
DROP TABLE public.orders_services_items;
DROP TABLE public.orders_services;
DROP SEQUENCE public.orders_order_id_seq;
DROP TABLE public.orders;
DROP SEQUENCE public.order_products_id_seq;
DROP TABLE public.order_products;
DROP SEQUENCE public.notifications_id_seq;
DROP TABLE public.notifications;
DROP SEQUENCE public.my_moda_items_id_seq;
DROP TABLE public.my_moda_items;
DROP SEQUENCE public.my_moda_id_seq;
DROP TABLE public.my_moda;
DROP SEQUENCE public.moda_sub_categories_id_seq;
DROP TABLE public.moda_sub_categories;
DROP SEQUENCE public.moda_main_categories_id_seq;
DROP TABLE public.moda_main_categories;
DROP SEQUENCE public.migrations_id_seq;
DROP TABLE public.migrations;
DROP SEQUENCE public.maintainance_id_seq;
DROP TABLE public.maintainance;
DROP SEQUENCE public.likes_id_seq;
DROP TABLE public.likes;
DROP SEQUENCE public.industry_types_id_seq;
DROP TABLE public.industry_types;
DROP SEQUENCE public.help_id_seq;
DROP TABLE public.help;
DROP SEQUENCE public.hair_colors_id_seq;
DROP TABLE public.hair_colors;
DROP SEQUENCE public.featured_products_img_id_seq;
DROP TABLE public.featured_products_img;
DROP SEQUENCE public.featured_products_id_seq;
DROP TABLE public.featured_products;
DROP SEQUENCE public.faq_id_seq;
DROP TABLE public.faq;
DROP SEQUENCE public.failed_jobs_id_seq;
DROP TABLE public.failed_jobs;
DROP SEQUENCE public.designations_id_seq;
DROP TABLE public.designations;
DROP SEQUENCE public.coupon_services_id_seq;
DROP TABLE public.coupon_services;
DROP SEQUENCE public.coupon_products_id_seq;
DROP TABLE public.coupon_products;
DROP SEQUENCE public.coupon_id_seq;
DROP SEQUENCE public.coupon_category_id_seq;
DROP TABLE public.coupon_category;
DROP TABLE public.coupon;
DROP SEQUENCE public.country_id_seq;
DROP TABLE public.country;
DROP SEQUENCE public.contracting_id_seq;
DROP TABLE public.contracting;
DROP SEQUENCE public.contact_us_settings_id_seq;
DROP TABLE public.contact_us_settings;
DROP SEQUENCE public.contact_us_id_seq;
DROP TABLE public.contact_us;
DROP SEQUENCE public.comment_taged_users_id_seq;
DROP TABLE public.comment_taged_users;
DROP SEQUENCE public.comment_likes_id_seq;
DROP TABLE public.comment_likes;
DROP SEQUENCE public.cleaning_services_id_seq;
DROP TABLE public.cleaning_services;
DROP SEQUENCE public.cities_id_seq;
DROP TABLE public.cities;
DROP SEQUENCE public.category_id_seq;
DROP TABLE public.category;
DROP SEQUENCE public.cart_service_id_seq;
DROP TABLE public.cart_service;
DROP SEQUENCE public.cart_id_seq;
DROP TABLE public.cart;
DROP SEQUENCE public.building_type_id_seq;
DROP TABLE public.building_type;
DROP SEQUENCE public.brand_id_seq;
DROP TABLE public.brand;
DROP SEQUENCE public.bank_id_seq;
DROP SEQUENCE public.bank_details_id_seq;
DROP TABLE public.bank_details;
DROP SEQUENCE public.bank_code_types_id_seq;
DROP TABLE public.bank_code_types;
DROP TABLE public.bank;
DROP SEQUENCE public.attributes_id_seq;
DROP TABLE public.attributes;
DROP SEQUENCE public.attribute_values_request_id_seq;
DROP TABLE public.attribute_values_request;
DROP SEQUENCE public.attribute_values_id_seq;
DROP TABLE public.attribute_values;
DROP SEQUENCE public.attribute_type_id_seq;
DROP TABLE public.attribute_type;
DROP SEQUENCE public.articles_id_seq;
DROP TABLE public.articles;
DROP SEQUENCE public.app_banners_id_seq;
DROP TABLE public.app_banners;
DROP SEQUENCE public.amount_type_id_seq;
DROP TABLE public.amount_type;
DROP SEQUENCE public.admin_designation_id_seq;
DROP TABLE public.admin_designation;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_designation; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.admin_designation (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    is_deletd integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.admin_designation OWNER TO khafroyal_laconcierge_us;

--
-- Name: admin_designation_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.admin_designation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_designation_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: admin_designation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.admin_designation_id_seq OWNED BY public.admin_designation.id;


--
-- Name: amount_type; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.amount_type (
    id bigint NOT NULL,
    name character varying(600) NOT NULL
);


ALTER TABLE public.amount_type OWNER TO khafroyal_laconcierge_us;

--
-- Name: amount_type_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.amount_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amount_type_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: amount_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.amount_type_id_seq OWNED BY public.amount_type.id;


--
-- Name: app_banners; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.app_banners (
    id bigint NOT NULL,
    banner_title character varying(600),
    banner_image character varying(600),
    active integer DEFAULT 1,
    created_by integer DEFAULT 0,
    updated_by integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.app_banners OWNER TO khafroyal_laconcierge_us;

--
-- Name: app_banners_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.app_banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_banners_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: app_banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.app_banners_id_seq OWNED BY public.app_banners.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.articles (
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


ALTER TABLE public.articles OWNER TO khafroyal_laconcierge_us;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: attribute_type; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.attribute_type (
    id bigint NOT NULL,
    attribute_type_name character varying(255) NOT NULL,
    attribute_type_uid character varying(50) NOT NULL,
    attribute_type_status integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.attribute_type OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_type_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.attribute_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_type_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.attribute_type_id_seq OWNED BY public.attribute_type.id;


--
-- Name: attribute_values; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.attribute_values (
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


ALTER TABLE public.attribute_values OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_values_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.attribute_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_values_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.attribute_values_id_seq OWNED BY public.attribute_values.id;


--
-- Name: attribute_values_request; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.attribute_values_request (
    id bigint NOT NULL,
    request_id integer DEFAULT 0 NOT NULL,
    attribute character varying(600) NOT NULL,
    value character varying(1600) NOT NULL
);


ALTER TABLE public.attribute_values_request OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.attribute_values_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attribute_values_request_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.attribute_values_request_id_seq OWNED BY public.attribute_values_request.id;


--
-- Name: attributes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.attributes (
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


ALTER TABLE public.attributes OWNER TO khafroyal_laconcierge_us;

--
-- Name: attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attributes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.attributes_id_seq OWNED BY public.attributes.id;


--
-- Name: bank; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.bank (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.bank OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_code_types; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.bank_code_types (
    id bigint NOT NULL,
    name character varying(500),
    country_id integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.bank_code_types OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_code_types_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.bank_code_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_code_types_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_code_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.bank_code_types_id_seq OWNED BY public.bank_code_types.id;


--
-- Name: bank_details; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.bank_details (
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


ALTER TABLE public.bank_details OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_details_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.bank_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_details_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.bank_details_id_seq OWNED BY public.bank_details.id;


--
-- Name: bank_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.bank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.bank_id_seq OWNED BY public.bank.id;


--
-- Name: brand; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.brand (
    id bigint NOT NULL,
    name character varying(600),
    industry_type integer DEFAULT 0 NOT NULL,
    image character varying(600),
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.brand OWNER TO khafroyal_laconcierge_us;

--
-- Name: brand_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;


--
-- Name: building_type; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.building_type (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    active integer DEFAULT 1 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.building_type OWNER TO khafroyal_laconcierge_us;

--
-- Name: building_type_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.building_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.building_type_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: building_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.building_type_id_seq OWNED BY public.building_type.id;


--
-- Name: cart; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.cart (
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


ALTER TABLE public.cart OWNER TO khafroyal_laconcierge_us;

--
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;


--
-- Name: cart_service; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.cart_service (
    id bigint NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    device_cart_id character varying(600),
    booked_time character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    building_type_id integer
);


ALTER TABLE public.cart_service OWNER TO khafroyal_laconcierge_us;

--
-- Name: cart_service_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.cart_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_service_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: cart_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.cart_service_id_seq OWNED BY public.cart_service.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.category (
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


ALTER TABLE public.category OWNER TO khafroyal_laconcierge_us;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    active smallint DEFAULT '1'::smallint NOT NULL,
    country_id integer NOT NULL,
    state_id integer NOT NULL,
    created_uid bigint,
    updated_uid bigint,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cities OWNER TO khafroyal_laconcierge_us;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: cleaning_services; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.cleaning_services (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cleaning_services OWNER TO khafroyal_laconcierge_us;

--
-- Name: cleaning_services_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.cleaning_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleaning_services_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: cleaning_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.cleaning_services_id_seq OWNED BY public.cleaning_services.id;


--
-- Name: comment_likes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.comment_likes (
    id bigint NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.comment_likes OWNER TO khafroyal_laconcierge_us;

--
-- Name: comment_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.comment_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_likes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: comment_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.comment_likes_id_seq OWNED BY public.comment_likes.id;


--
-- Name: comment_taged_users; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.comment_taged_users (
    id bigint NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.comment_taged_users OWNER TO khafroyal_laconcierge_us;

--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.comment_taged_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_taged_users_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.comment_taged_users_id_seq OWNED BY public.comment_taged_users.id;


--
-- Name: contact_us; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.contact_us (
    id bigint NOT NULL,
    name character varying(600),
    email character varying(600),
    dial_code character varying(600),
    mobile_number character varying(600),
    message text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.contact_us OWNER TO khafroyal_laconcierge_us;

--
-- Name: contact_us_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.contact_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: contact_us_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.contact_us_id_seq OWNED BY public.contact_us.id;


--
-- Name: contact_us_settings; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.contact_us_settings (
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


ALTER TABLE public.contact_us_settings OWNER TO khafroyal_laconcierge_us;

--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.contact_us_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_us_settings_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.contact_us_settings_id_seq OWNED BY public.contact_us_settings.id;


--
-- Name: contracting; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.contracting (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255),
    building_type integer,
    contract_type integer,
    file character varying(255),
    deleted integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer,
    status integer,
    price double precision,
    qoutation_file character varying(255),
    transaction_id character varying(255),
    payment_ref character varying(255)
);


ALTER TABLE public.contracting OWNER TO khafroyal_laconcierge_us;

--
-- Name: contracting_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.contracting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contracting_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: contracting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.contracting_id_seq OWNED BY public.contracting.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.country (
    id bigint NOT NULL,
    name character varying(1500) NOT NULL,
    prefix character varying(20) NOT NULL,
    dial_code character varying(100) NOT NULL,
    active character varying(255) DEFAULT '1'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.country OWNER TO khafroyal_laconcierge_us;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;


--
-- Name: coupon; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.coupon (
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


ALTER TABLE public.coupon OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_category; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.coupon_category (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_category OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_category_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.coupon_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_category_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.coupon_category_id_seq OWNED BY public.coupon_category.id;


--
-- Name: coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.coupon_id_seq OWNED BY public.coupon.id;


--
-- Name: coupon_products; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.coupon_products (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_products OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_products_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.coupon_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_products_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.coupon_products_id_seq OWNED BY public.coupon_products.id;


--
-- Name: coupon_services; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.coupon_services (
    id bigint NOT NULL,
    coupon_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.coupon_services OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_services_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.coupon_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupon_services_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: coupon_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.coupon_services_id_seq OWNED BY public.coupon_services.id;


--
-- Name: designations; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.designations (
    id bigint NOT NULL,
    user_id bigint,
    user_type integer DEFAULT 0 NOT NULL,
    designation character varying(255) NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.designations OWNER TO khafroyal_laconcierge_us;

--
-- Name: designations_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.designations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designations_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: designations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.designations_id_seq OWNED BY public.designations.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO khafroyal_laconcierge_us;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: faq; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.faq (
    id bigint NOT NULL,
    title character varying(600),
    description text,
    created_by integer DEFAULT 0 NOT NULL,
    updated_by integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.faq OWNER TO khafroyal_laconcierge_us;

--
-- Name: faq_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.faq_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.faq_id_seq OWNED BY public.faq.id;


--
-- Name: featured_products; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.featured_products (
    id bigint NOT NULL,
    master_product integer DEFAULT 0 NOT NULL,
    description character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.featured_products OWNER TO khafroyal_laconcierge_us;

--
-- Name: featured_products_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.featured_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.featured_products_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: featured_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.featured_products_id_seq OWNED BY public.featured_products.id;


--
-- Name: featured_products_img; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.featured_products_img (
    id bigint NOT NULL,
    featured_product_id integer DEFAULT 0 NOT NULL,
    image character varying(600) NOT NULL
);


ALTER TABLE public.featured_products_img OWNER TO khafroyal_laconcierge_us;

--
-- Name: featured_products_img_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.featured_products_img_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.featured_products_img_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: featured_products_img_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.featured_products_img_id_seq OWNED BY public.featured_products_img.id;


--
-- Name: hair_colors; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.hair_colors (
    id bigint NOT NULL,
    name character varying(255),
    color character varying(30) NOT NULL,
    active smallint DEFAULT '1'::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.hair_colors OWNER TO khafroyal_laconcierge_us;

--
-- Name: hair_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.hair_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hair_colors_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: hair_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.hair_colors_id_seq OWNED BY public.hair_colors.id;


--
-- Name: help; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.help (
    id bigint NOT NULL,
    title character varying(600),
    description text,
    created_by integer DEFAULT 0 NOT NULL,
    updated_by integer DEFAULT 0 NOT NULL,
    active integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.help OWNER TO khafroyal_laconcierge_us;

--
-- Name: help_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.help_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.help_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: help_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.help_id_seq OWNED BY public.help.id;


--
-- Name: industry_types; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.industry_types (
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


ALTER TABLE public.industry_types OWNER TO khafroyal_laconcierge_us;

--
-- Name: industry_types_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.industry_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.industry_types_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: industry_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.industry_types_id_seq OWNED BY public.industry_types.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    vendor_id integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.likes OWNER TO khafroyal_laconcierge_us;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: maintainance; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.maintainance (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255),
    building_type integer,
    file character varying(255),
    deleted integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer,
    status integer,
    price double precision,
    qoutation_file character varying(255),
    transaction_id character varying(255),
    payment_ref character varying(255)
);


ALTER TABLE public.maintainance OWNER TO khafroyal_laconcierge_us;

--
-- Name: maintainance_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.maintainance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maintainance_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: maintainance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.maintainance_id_seq OWNED BY public.maintainance.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO khafroyal_laconcierge_us;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: moda_main_categories; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.moda_main_categories (
    id bigint NOT NULL,
    name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.moda_main_categories OWNER TO khafroyal_laconcierge_us;

--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.moda_main_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moda_main_categories_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.moda_main_categories_id_seq OWNED BY public.moda_main_categories.id;


--
-- Name: moda_sub_categories; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.moda_sub_categories (
    id bigint NOT NULL,
    main_category integer NOT NULL,
    name character varying(255),
    gender integer NOT NULL,
    image character varying(900),
    active smallint DEFAULT '1'::smallint NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.moda_sub_categories OWNER TO khafroyal_laconcierge_us;

--
-- Name: COLUMN moda_sub_categories.gender; Type: COMMENT; Schema: public; Owner: khafroyal_laconcierge_us
--

COMMENT ON COLUMN public.moda_sub_categories.gender IS '1.Male,2.female';


--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.moda_sub_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moda_sub_categories_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.moda_sub_categories_id_seq OWNED BY public.moda_sub_categories.id;


--
-- Name: my_moda; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.my_moda (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.my_moda OWNER TO khafroyal_laconcierge_us;

--
-- Name: my_moda_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.my_moda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_moda_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: my_moda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.my_moda_id_seq OWNED BY public.my_moda.id;


--
-- Name: my_moda_items; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.my_moda_items (
    id bigint NOT NULL,
    my_moda_id integer NOT NULL,
    product_id integer NOT NULL,
    product_attribute_id integer NOT NULL,
    moda_sub_category integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.my_moda_items OWNER TO khafroyal_laconcierge_us;

--
-- Name: my_moda_items_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.my_moda_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_moda_items_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: my_moda_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.my_moda_items_id_seq OWNED BY public.my_moda_items.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    description character varying(600),
    title character varying(600),
    image character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_type integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.notifications OWNER TO khafroyal_laconcierge_us;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: order_products; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.order_products (
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


ALTER TABLE public.order_products OWNER TO khafroyal_laconcierge_us;

--
-- Name: order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_products_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: order_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.order_products_id_seq OWNED BY public.order_products.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.orders (
    order_id bigint NOT NULL,
    invoice_id character varying(100),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision DEFAULT '0'::double precision,
    vat double precision DEFAULT '0'::double precision,
    discount double precision DEFAULT '0'::double precision,
    grand_total double precision DEFAULT '0'::double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    booking_date timestamp(0) without time zone,
    total_qty integer DEFAULT 0 NOT NULL,
    total_items_qty integer DEFAULT 0 NOT NULL,
    oder_type integer DEFAULT 0 NOT NULL,
    admin_commission double precision DEFAULT '0'::double precision,
    vendor_commission double precision DEFAULT '0'::double precision,
    shipping_charge double precision DEFAULT '0'::double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    is_muted integer DEFAULT 0 NOT NULL,
    refund_method integer DEFAULT 0 NOT NULL,
    refund_requested integer DEFAULT 0 NOT NULL,
    refund_requested_date character varying(600),
    order_no character varying(600)
);


ALTER TABLE public.orders OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: orders_services; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.orders_services (
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
    updated_at timestamp(0) without time zone,
    is_mute integer DEFAULT 0 NOT NULL,
    refund_method integer DEFAULT 0 NOT NULL,
    refund_requested integer DEFAULT 0 NOT NULL,
    refund_accepted integer DEFAULT 0 NOT NULL,
    refund_requested_date character varying(600),
    refund_accepted_date character varying(600),
    order_no character varying(600)
);


ALTER TABLE public.orders_services OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_items; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.orders_services_items (
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
    updated_at timestamp(0) without time zone,
    accepted_vendor integer DEFAULT 0 NOT NULL,
    accepted_date character varying(600)
);


ALTER TABLE public.orders_services_items OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_items_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.orders_services_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_services_items_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.orders_services_items_id_seq OWNED BY public.orders_services_items.id;


--
-- Name: orders_services_order_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.orders_services_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_services_order_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.orders_services_order_id_seq OWNED BY public.orders_services.order_id;


--
-- Name: orders_services_rejected; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.orders_services_rejected (
    id bigint NOT NULL,
    vendor_id integer DEFAULT 0 NOT NULL,
    service_order_id integer DEFAULT 0 NOT NULL,
    service_order_item_id bigint DEFAULT '0'::bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders_services_rejected OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_rejected_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.orders_services_rejected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_services_rejected_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: orders_services_rejected_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.orders_services_rejected_id_seq OWNED BY public.orders_services_rejected.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO khafroyal_laconcierge_us;

--
-- Name: payment_report; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.payment_report (
    id bigint NOT NULL,
    transaction_id character varying(255),
    payment_status character varying(255),
    user_id integer DEFAULT 0 NOT NULL,
    ref_id character varying(255),
    amount numeric(8,2) NOT NULL,
    method_type integer DEFAULT 1 NOT NULL,
    vat numeric(8,2) DEFAULT '0'::numeric NOT NULL,
    wallet_amount_used numeric(8,2) DEFAULT '0'::numeric NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.payment_report OWNER TO khafroyal_laconcierge_us;

--
-- Name: payment_report_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.payment_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_report_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: payment_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.payment_report_id_seq OWNED BY public.payment_report.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.personal_access_tokens (
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


ALTER TABLE public.personal_access_tokens OWNER TO khafroyal_laconcierge_us;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: post_comments; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.post_comments (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    comment text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    comment_node_id text
);


ALTER TABLE public.post_comments OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.post_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_comments_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.post_comments_id_seq OWNED BY public.post_comments.id;


--
-- Name: post_likes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.post_likes (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.post_likes OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.post_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_likes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.post_likes_id_seq OWNED BY public.post_likes.id;


--
-- Name: post_saves; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.post_saves (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.post_saves OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_saves_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.post_saves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_saves_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_saves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.post_saves_id_seq OWNED BY public.post_saves.id;


--
-- Name: post_users; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.post_users (
    id bigint NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.post_users OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_users_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.post_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_users_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: post_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.post_users_id_seq OWNED BY public.post_users.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.posts (
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


ALTER TABLE public.posts OWNER TO khafroyal_laconcierge_us;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product (
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
    master_product integer DEFAULT 0 NOT NULL,
    boxcount character varying(100)
);


ALTER TABLE public.product OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_attribute; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_attribute (
    attribute_id bigint NOT NULL,
    attribute_name character varying(400),
    attribute_status integer DEFAULT 0 NOT NULL,
    attribute_created_date timestamp(0) without time zone,
    attribute_name_arabic character varying(600),
    attribute_type integer,
    is_deleted integer DEFAULT 0
);


ALTER TABLE public.product_attribute OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_attribute_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_attribute_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_attribute_attribute_id_seq OWNED BY public.product_attribute.attribute_id;


--
-- Name: product_attribute_values; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_attribute_values (
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


ALTER TABLE public.product_attribute_values OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_attribute_values_attribute_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_values_attribute_values_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_attribute_values_attribute_values_id_seq OWNED BY public.product_attribute_values.attribute_values_id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_category (
    product_category_id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_category OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_category_product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_product_category_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_category_product_category_id_seq OWNED BY public.product_category.product_category_id;


--
-- Name: product_docs; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_docs (
    id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    title character varying(600),
    doc_path character varying(600)
);


ALTER TABLE public.product_docs OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_docs_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_docs_id_seq OWNED BY public.product_docs.id;


--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_images; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_images (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    image_name text NOT NULL,
    product_attribute_id integer NOT NULL
);


ALTER TABLE public.product_images OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_images_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_images_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;


--
-- Name: product_likes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_likes (
    id bigint NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_likes OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_likes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_likes_id_seq OWNED BY public.product_likes.id;


--
-- Name: product_master; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_master (
    id bigint NOT NULL,
    name character varying(600),
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_master OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_master_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_master_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_master_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_master_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_master_id_seq OWNED BY public.product_master.id;


--
-- Name: product_master_request; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_master_request (
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


ALTER TABLE public.product_master_request OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_master_request_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_master_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_master_request_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_master_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_master_request_id_seq OWNED BY public.product_master_request.id;


--
-- Name: product_selected_attribute_list; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_selected_attribute_list (
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


ALTER TABLE public.product_selected_attribute_list OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_selected_attribute_list_product_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_selected_attribute_list_product_attribute_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_selected_attribute_list_product_attribute_id_seq OWNED BY public.product_selected_attribute_list.product_attribute_id;


--
-- Name: product_selected_attributes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_selected_attributes (
    product_selected_attributes_id bigint NOT NULL,
    attribute_id integer DEFAULT 0 NOT NULL,
    attribute_values_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_selected_attributes OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_selected_attributes_product_selected_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_selected_attributes_product_selected_attributes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_selected_attributes_product_selected_attributes_id_seq OWNED BY public.product_selected_attributes.product_selected_attributes_id;


--
-- Name: product_specifications; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_specifications (
    prod_spec_id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    spec_title text,
    spec_descp text,
    lang integer DEFAULT 1,
    spec_title_arabic text,
    spec_descp_arabic text
);


ALTER TABLE public.product_specifications OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_specifications_prod_spec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_specifications_prod_spec_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_specifications_prod_spec_id_seq OWNED BY public.product_specifications.prod_spec_id;


--
-- Name: product_temp_image; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_temp_image (
    id bigint NOT NULL,
    product_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    image character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.product_temp_image OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_temp_image_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_temp_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_temp_image_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_temp_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_temp_image_id_seq OWNED BY public.product_temp_image.id;


--
-- Name: product_variations; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.product_variations (
    product_variations_id bigint NOT NULL,
    attribute_id integer DEFAULT 0 NOT NULL,
    attribute_values_id integer DEFAULT 0 NOT NULL,
    product_attribute_id integer DEFAULT 0 NOT NULL,
    product_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.product_variations OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.product_variations_product_variations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_variations_product_variations_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.product_variations_product_variations_id_seq OWNED BY public.product_variations.product_variations_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.products (
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


ALTER TABLE public.products OWNER TO khafroyal_laconcierge_us;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.ratings (
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
    updated_at timestamp(0) without time zone,
    order_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.ratings OWNER TO khafroyal_laconcierge_us;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: service; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.service (
    id bigint NOT NULL,
    name character varying(600),
    image character varying(600),
    service_price double precision,
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    "order" integer DEFAULT 0 NOT NULL,
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    included text,
    service_user_id bigint,
    building_type character varying(255),
    service_type character varying(255),
    contract_type character varying(255),
    duration text DEFAULT '0'::text NOT NULL,
    building_type_id integer,
    "time" character varying(255),
    document character varying(255)
);


ALTER TABLE public.service OWNER TO khafroyal_laconcierge_us;

--
-- Name: COLUMN service.service_type; Type: COMMENT; Schema: public; Owner: khafroyal_laconcierge_us
--

COMMENT ON COLUMN public.service.service_type IS '0 for one day, 1 for week, 2 for month';


--
-- Name: COLUMN service.contract_type; Type: COMMENT; Schema: public; Owner: khafroyal_laconcierge_us
--

COMMENT ON COLUMN public.service.contract_type IS '0 for fresh, 1 for Extention';


--
-- Name: service_category; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.service_category (
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


ALTER TABLE public.service_category OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_category_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.service_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_category_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.service_category_id_seq OWNED BY public.service_category.id;


--
-- Name: service_category_selected; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.service_category_selected (
    id bigint NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.service_category_selected OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_category_selected_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.service_category_selected_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_category_selected_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_category_selected_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.service_category_selected_id_seq OWNED BY public.service_category_selected.id;


--
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;


--
-- Name: service_include; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.service_include (
    id bigint NOT NULL,
    service_id integer,
    title character varying(255),
    description text,
    icon character varying(600),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.service_include OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_include_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.service_include_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_include_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_include_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.service_include_id_seq OWNED BY public.service_include.id;


--
-- Name: service_type; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.service_type (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.service_type OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_type_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.service_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_type_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: service_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.service_type_id_seq OWNED BY public.service_type.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    admin_commission double precision NOT NULL,
    shipping_charge double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tax_percentage double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE public.settings OWNER TO khafroyal_laconcierge_us;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: skin_colors; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.skin_colors (
    id bigint NOT NULL,
    name character varying(255),
    color character varying(30) NOT NULL,
    active smallint DEFAULT '1'::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.skin_colors OWNER TO khafroyal_laconcierge_us;

--
-- Name: skin_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.skin_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skin_colors_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: skin_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.skin_colors_id_seq OWNED BY public.skin_colors.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.states (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    active smallint DEFAULT '1'::smallint NOT NULL,
    country_id integer,
    created_uid integer,
    updated_uid integer,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.states OWNER TO khafroyal_laconcierge_us;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: store_images; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.store_images (
    id bigint NOT NULL,
    image character varying(900),
    store_id bigint NOT NULL
);


ALTER TABLE public.store_images OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_images_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.store_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_images_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.store_images_id_seq OWNED BY public.store_images.id;


--
-- Name: store_likes; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.store_likes (
    id bigint NOT NULL,
    store_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.store_likes OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.store_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_likes_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.store_likes_id_seq OWNED BY public.store_likes.id;


--
-- Name: store_managers_types; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.store_managers_types (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    vendor_id bigint
);


ALTER TABLE public.store_managers_types OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_managers_types_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.store_managers_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_managers_types_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_managers_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.store_managers_types_id_seq OWNED BY public.store_managers_types.id;


--
-- Name: store_type; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.store_type (
    id bigint NOT NULL,
    name character varying(600) NOT NULL,
    banner_image character varying(600),
    active integer DEFAULT 0 NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.store_type OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_type_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.store_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_type_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: store_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.store_type_id_seq OWNED BY public.store_type.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.stores (
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
    active smallint DEFAULT '1'::smallint NOT NULL,
    verified smallint DEFAULT '0'::smallint NOT NULL,
    deleted integer DEFAULT 0 NOT NULL,
    created_uid bigint,
    updated_uid bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    commission double precision
);


ALTER TABLE public.stores OWNER TO khafroyal_laconcierge_us;

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: temp_order_products; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.temp_order_products (
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


ALTER TABLE public.temp_order_products OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.temp_order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_order_products_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_order_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.temp_order_products_id_seq OWNED BY public.temp_order_products.id;


--
-- Name: temp_orders; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.temp_orders (
    id bigint NOT NULL,
    invoice_id character varying(100),
    user_id integer DEFAULT 0 NOT NULL,
    address_id integer DEFAULT 0 NOT NULL,
    total double precision DEFAULT '0'::double precision,
    vat double precision DEFAULT '0'::double precision,
    discount double precision DEFAULT '0'::double precision,
    grand_total double precision DEFAULT '0'::double precision,
    payment_mode integer DEFAULT 0 NOT NULL,
    admin_commission double precision DEFAULT '0'::double precision,
    vendor_commission double precision DEFAULT '0'::double precision,
    shipping_charge double precision DEFAULT '0'::double precision,
    temp_id character varying(255) NOT NULL
);


ALTER TABLE public.temp_orders OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.temp_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_orders_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.temp_orders_id_seq OWNED BY public.temp_orders.id;


--
-- Name: temp_service_order_items; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.temp_service_order_items (
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


ALTER TABLE public.temp_service_order_items OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.temp_service_order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_service_order_items_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.temp_service_order_items_id_seq OWNED BY public.temp_service_order_items.id;


--
-- Name: temp_service_orders; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.temp_service_orders (
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
    temp_id character varying(600),
    booking_date character varying(600)
);


ALTER TABLE public.temp_service_orders OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.temp_service_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_service_orders_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.temp_service_orders_id_seq OWNED BY public.temp_service_orders.id;


--
-- Name: user_address; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.user_address (
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


ALTER TABLE public.user_address OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_address_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.user_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_address_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.user_address_id_seq OWNED BY public.user_address.id;


--
-- Name: user_follows; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.user_follows (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    follow_user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.user_follows OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_follows_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.user_follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_follows_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.user_follows_id_seq OWNED BY public.user_follows.id;


--
-- Name: user_privileges; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.user_privileges (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    designation_id bigint NOT NULL,
    privileges character varying(1600),
    status smallint DEFAULT '1'::smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.user_privileges OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_privileges_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.user_privileges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_privileges_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: user_privileges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.user_privileges_id_seq OWNED BY public.user_privileges.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.users (
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
    wallet_amount double precision DEFAULT '0'::double precision NOT NULL,
    password_reset_code character varying(600),
    password_reset_time character varying(600),
    approve integer DEFAULT 0 NOT NULL,
    user_permissions text,
    password_reset_otp character varying(600)
);


ALTER TABLE public.users OWNER TO khafroyal_laconcierge_us;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_role; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.users_role (
    id bigint NOT NULL,
    role_name character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users_role OWNER TO khafroyal_laconcierge_us;

--
-- Name: users_role_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.users_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_role_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: users_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.users_role_id_seq OWNED BY public.users_role.id;


--
-- Name: vendor_details; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.vendor_details (
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


ALTER TABLE public.vendor_details OWNER TO khafroyal_laconcierge_us;

--
-- Name: vendor_details_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.vendor_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_details_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: vendor_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.vendor_details_id_seq OWNED BY public.vendor_details.id;


--
-- Name: vendor_services; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.vendor_services (
    id bigint NOT NULL,
    vendor_id bigint NOT NULL,
    service_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.vendor_services OWNER TO khafroyal_laconcierge_us;

--
-- Name: vendor_services_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.vendor_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendor_services_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: vendor_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.vendor_services_id_seq OWNED BY public.vendor_services.id;


--
-- Name: wallet_histories; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.wallet_histories (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    wallet_amount double precision DEFAULT '0'::double precision NOT NULL,
    pay_type character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    pay_method integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.wallet_histories OWNER TO khafroyal_laconcierge_us;

--
-- Name: wallet_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.wallet_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallet_histories_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: wallet_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.wallet_histories_id_seq OWNED BY public.wallet_histories.id;


--
-- Name: wallet_payment_report; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.wallet_payment_report (
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


ALTER TABLE public.wallet_payment_report OWNER TO khafroyal_laconcierge_us;

--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.wallet_payment_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallet_payment_report_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.wallet_payment_report_id_seq OWNED BY public.wallet_payment_report.id;


--
-- Name: websockets_statistics_entries; Type: TABLE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE TABLE public.websockets_statistics_entries (
    id integer NOT NULL,
    app_id character varying(255) NOT NULL,
    peak_connection_count integer NOT NULL,
    websocket_message_count integer NOT NULL,
    api_message_count integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.websockets_statistics_entries OWNER TO khafroyal_laconcierge_us;

--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE SEQUENCE public.websockets_statistics_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.websockets_statistics_entries_id_seq OWNER TO khafroyal_laconcierge_us;

--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER SEQUENCE public.websockets_statistics_entries_id_seq OWNED BY public.websockets_statistics_entries.id;


--
-- Name: admin_designation id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.admin_designation ALTER COLUMN id SET DEFAULT nextval('public.admin_designation_id_seq'::regclass);


--
-- Name: amount_type id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.amount_type ALTER COLUMN id SET DEFAULT nextval('public.amount_type_id_seq'::regclass);


--
-- Name: app_banners id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.app_banners ALTER COLUMN id SET DEFAULT nextval('public.app_banners_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: attribute_type id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_type ALTER COLUMN id SET DEFAULT nextval('public.attribute_type_id_seq'::regclass);


--
-- Name: attribute_values id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_values ALTER COLUMN id SET DEFAULT nextval('public.attribute_values_id_seq'::regclass);


--
-- Name: attribute_values_request id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_values_request ALTER COLUMN id SET DEFAULT nextval('public.attribute_values_request_id_seq'::regclass);


--
-- Name: attributes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attributes ALTER COLUMN id SET DEFAULT nextval('public.attributes_id_seq'::regclass);


--
-- Name: bank id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank ALTER COLUMN id SET DEFAULT nextval('public.bank_id_seq'::regclass);


--
-- Name: bank_code_types id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank_code_types ALTER COLUMN id SET DEFAULT nextval('public.bank_code_types_id_seq'::regclass);


--
-- Name: bank_details id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank_details ALTER COLUMN id SET DEFAULT nextval('public.bank_details_id_seq'::regclass);


--
-- Name: brand id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);


--
-- Name: building_type id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.building_type ALTER COLUMN id SET DEFAULT nextval('public.building_type_id_seq'::regclass);


--
-- Name: cart id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);


--
-- Name: cart_service id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cart_service ALTER COLUMN id SET DEFAULT nextval('public.cart_service_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: cleaning_services id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cleaning_services ALTER COLUMN id SET DEFAULT nextval('public.cleaning_services_id_seq'::regclass);


--
-- Name: comment_likes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_likes ALTER COLUMN id SET DEFAULT nextval('public.comment_likes_id_seq'::regclass);


--
-- Name: comment_taged_users id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_taged_users ALTER COLUMN id SET DEFAULT nextval('public.comment_taged_users_id_seq'::regclass);


--
-- Name: contact_us id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contact_us ALTER COLUMN id SET DEFAULT nextval('public.contact_us_id_seq'::regclass);


--
-- Name: contact_us_settings id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contact_us_settings ALTER COLUMN id SET DEFAULT nextval('public.contact_us_settings_id_seq'::regclass);


--
-- Name: contracting id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contracting ALTER COLUMN id SET DEFAULT nextval('public.contracting_id_seq'::regclass);


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- Name: coupon id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon ALTER COLUMN id SET DEFAULT nextval('public.coupon_id_seq'::regclass);


--
-- Name: coupon_category id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_category ALTER COLUMN id SET DEFAULT nextval('public.coupon_category_id_seq'::regclass);


--
-- Name: coupon_products id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_products ALTER COLUMN id SET DEFAULT nextval('public.coupon_products_id_seq'::regclass);


--
-- Name: coupon_services id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_services ALTER COLUMN id SET DEFAULT nextval('public.coupon_services_id_seq'::regclass);


--
-- Name: designations id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.designations ALTER COLUMN id SET DEFAULT nextval('public.designations_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: faq id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.faq ALTER COLUMN id SET DEFAULT nextval('public.faq_id_seq'::regclass);


--
-- Name: featured_products id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.featured_products ALTER COLUMN id SET DEFAULT nextval('public.featured_products_id_seq'::regclass);


--
-- Name: featured_products_img id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.featured_products_img ALTER COLUMN id SET DEFAULT nextval('public.featured_products_img_id_seq'::regclass);


--
-- Name: hair_colors id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.hair_colors ALTER COLUMN id SET DEFAULT nextval('public.hair_colors_id_seq'::regclass);


--
-- Name: help id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.help ALTER COLUMN id SET DEFAULT nextval('public.help_id_seq'::regclass);


--
-- Name: industry_types id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.industry_types ALTER COLUMN id SET DEFAULT nextval('public.industry_types_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: maintainance id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.maintainance ALTER COLUMN id SET DEFAULT nextval('public.maintainance_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: moda_main_categories id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.moda_main_categories ALTER COLUMN id SET DEFAULT nextval('public.moda_main_categories_id_seq'::regclass);


--
-- Name: moda_sub_categories id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.moda_sub_categories ALTER COLUMN id SET DEFAULT nextval('public.moda_sub_categories_id_seq'::regclass);


--
-- Name: my_moda id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.my_moda ALTER COLUMN id SET DEFAULT nextval('public.my_moda_id_seq'::regclass);


--
-- Name: my_moda_items id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.my_moda_items ALTER COLUMN id SET DEFAULT nextval('public.my_moda_items_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: order_products id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.order_products ALTER COLUMN id SET DEFAULT nextval('public.order_products_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_services order_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services ALTER COLUMN order_id SET DEFAULT nextval('public.orders_services_order_id_seq'::regclass);


--
-- Name: orders_services_items id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services_items ALTER COLUMN id SET DEFAULT nextval('public.orders_services_items_id_seq'::regclass);


--
-- Name: orders_services_rejected id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services_rejected ALTER COLUMN id SET DEFAULT nextval('public.orders_services_rejected_id_seq'::regclass);


--
-- Name: payment_report id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.payment_report ALTER COLUMN id SET DEFAULT nextval('public.payment_report_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: post_comments id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_comments ALTER COLUMN id SET DEFAULT nextval('public.post_comments_id_seq'::regclass);


--
-- Name: post_likes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_likes ALTER COLUMN id SET DEFAULT nextval('public.post_likes_id_seq'::regclass);


--
-- Name: post_saves id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_saves ALTER COLUMN id SET DEFAULT nextval('public.post_saves_id_seq'::regclass);


--
-- Name: post_users id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_users ALTER COLUMN id SET DEFAULT nextval('public.post_users_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: product_attribute attribute_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_attribute ALTER COLUMN attribute_id SET DEFAULT nextval('public.product_attribute_attribute_id_seq'::regclass);


--
-- Name: product_attribute_values attribute_values_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_attribute_values ALTER COLUMN attribute_values_id SET DEFAULT nextval('public.product_attribute_values_attribute_values_id_seq'::regclass);


--
-- Name: product_category product_category_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_category ALTER COLUMN product_category_id SET DEFAULT nextval('public.product_category_product_category_id_seq'::regclass);


--
-- Name: product_docs id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_docs ALTER COLUMN id SET DEFAULT nextval('public.product_docs_id_seq'::regclass);


--
-- Name: product_images id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);


--
-- Name: product_likes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_likes ALTER COLUMN id SET DEFAULT nextval('public.product_likes_id_seq'::regclass);


--
-- Name: product_master id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_master ALTER COLUMN id SET DEFAULT nextval('public.product_master_id_seq'::regclass);


--
-- Name: product_master_request id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_master_request ALTER COLUMN id SET DEFAULT nextval('public.product_master_request_id_seq'::regclass);


--
-- Name: product_selected_attribute_list product_attribute_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_selected_attribute_list ALTER COLUMN product_attribute_id SET DEFAULT nextval('public.product_selected_attribute_list_product_attribute_id_seq'::regclass);


--
-- Name: product_selected_attributes product_selected_attributes_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_selected_attributes ALTER COLUMN product_selected_attributes_id SET DEFAULT nextval('public.product_selected_attributes_product_selected_attributes_id_seq'::regclass);


--
-- Name: product_specifications prod_spec_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_specifications ALTER COLUMN prod_spec_id SET DEFAULT nextval('public.product_specifications_prod_spec_id_seq'::regclass);


--
-- Name: product_temp_image id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_temp_image ALTER COLUMN id SET DEFAULT nextval('public.product_temp_image_id_seq'::regclass);


--
-- Name: product_variations product_variations_id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_variations ALTER COLUMN product_variations_id SET DEFAULT nextval('public.product_variations_product_variations_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: service id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);


--
-- Name: service_category id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_category ALTER COLUMN id SET DEFAULT nextval('public.service_category_id_seq'::regclass);


--
-- Name: service_category_selected id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_category_selected ALTER COLUMN id SET DEFAULT nextval('public.service_category_selected_id_seq'::regclass);


--
-- Name: service_include id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_include ALTER COLUMN id SET DEFAULT nextval('public.service_include_id_seq'::regclass);


--
-- Name: service_type id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_type ALTER COLUMN id SET DEFAULT nextval('public.service_type_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: skin_colors id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.skin_colors ALTER COLUMN id SET DEFAULT nextval('public.skin_colors_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Name: store_images id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_images ALTER COLUMN id SET DEFAULT nextval('public.store_images_id_seq'::regclass);


--
-- Name: store_likes id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_likes ALTER COLUMN id SET DEFAULT nextval('public.store_likes_id_seq'::regclass);


--
-- Name: store_managers_types id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_managers_types ALTER COLUMN id SET DEFAULT nextval('public.store_managers_types_id_seq'::regclass);


--
-- Name: store_type id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_type ALTER COLUMN id SET DEFAULT nextval('public.store_type_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Name: temp_order_products id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_order_products ALTER COLUMN id SET DEFAULT nextval('public.temp_order_products_id_seq'::regclass);


--
-- Name: temp_orders id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_orders ALTER COLUMN id SET DEFAULT nextval('public.temp_orders_id_seq'::regclass);


--
-- Name: temp_service_order_items id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_service_order_items ALTER COLUMN id SET DEFAULT nextval('public.temp_service_order_items_id_seq'::regclass);


--
-- Name: temp_service_orders id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_service_orders ALTER COLUMN id SET DEFAULT nextval('public.temp_service_orders_id_seq'::regclass);


--
-- Name: user_address id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_address ALTER COLUMN id SET DEFAULT nextval('public.user_address_id_seq'::regclass);


--
-- Name: user_follows id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_follows ALTER COLUMN id SET DEFAULT nextval('public.user_follows_id_seq'::regclass);


--
-- Name: user_privileges id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_privileges ALTER COLUMN id SET DEFAULT nextval('public.user_privileges_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_role id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.users_role ALTER COLUMN id SET DEFAULT nextval('public.users_role_id_seq'::regclass);


--
-- Name: vendor_details id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.vendor_details ALTER COLUMN id SET DEFAULT nextval('public.vendor_details_id_seq'::regclass);


--
-- Name: vendor_services id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.vendor_services ALTER COLUMN id SET DEFAULT nextval('public.vendor_services_id_seq'::regclass);


--
-- Name: wallet_histories id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.wallet_histories ALTER COLUMN id SET DEFAULT nextval('public.wallet_histories_id_seq'::regclass);


--
-- Name: wallet_payment_report id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.wallet_payment_report ALTER COLUMN id SET DEFAULT nextval('public.wallet_payment_report_id_seq'::regclass);


--
-- Name: websockets_statistics_entries id; Type: DEFAULT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.websockets_statistics_entries ALTER COLUMN id SET DEFAULT nextval('public.websockets_statistics_entries_id_seq'::regclass);


--
-- Data for Name: admin_designation; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.admin_designation (id, name, is_deletd) FROM stdin;
\.


--
-- Data for Name: amount_type; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.amount_type (id, name) FROM stdin;
1	%
2	Amount
\.


--
-- Data for Name: app_banners; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.app_banners (id, banner_title, banner_image, active, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.articles (id, title_en, title_ar, status, desc_en, desc_ar, meta_title, meta_keyword, meta_description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: attribute_type; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.attribute_type (id, attribute_type_name, attribute_type_uid, attribute_type_status) FROM stdin;
1	Dropdown	dropdown	1
2	Button	radio	1
3	Image Selection	radio_image	1
4	Color Box	radio_button_group	1
\.


--
-- Data for Name: attribute_values; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.attribute_values (id, attribute_id, attribute_values, attribute_value_in, attribute_value_color, deleted, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: attribute_values_request; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.attribute_values_request (id, request_id, attribute, value) FROM stdin;
\.


--
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.attributes (id, attribute_name, active, attribute_type, industry_type, company_id, store_id, is_common, deleted, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.bank (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: bank_code_types; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.bank_code_types (id, name, country_id, active, deleted, created_at, updated_at) FROM stdin;
1	IFSC (India)	0	0	0	\N	\N
2	SORT CODE (UK)	0	0	0	\N	\N
3	SWIFT CODE	0	0	0	\N	\N
\.


--
-- Data for Name: bank_details; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.bank_details (id, bank_name, company_account, code_type, account_no, branch_code, branch_name, bank_statement_doc, credit_card_sta_doc, country, user_id, created_at, updated_at, iban) FROM stdin;
\.


--
-- Data for Name: brand; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.brand (id, name, industry_type, image, active, created_at, updated_at, deleted) FROM stdin;
\.


--
-- Data for Name: building_type; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.building_type (id, name, description, created_at, updated_at, active, deleted) FROM stdin;
\.


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.cart (id, product_id, product_attribute_id, quantity, user_id, store_id, device_cart_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cart_service; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.cart_service (id, service_id, user_id, device_cart_id, booked_time, created_at, updated_at, building_type_id) FROM stdin;
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.category (id, name, image, banner_image, parent_id, active, deleted, sort_order, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.cities (id, name, active, country_id, state_id, created_uid, updated_uid, deleted, created_at, updated_at) FROM stdin;
1	Dubai	1	1	0	1	\N	0	2023-10-16 05:36:36	2023-10-16 05:36:36
\.


--
-- Data for Name: cleaning_services; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.cleaning_services (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comment_likes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.comment_likes (id, comment_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comment_taged_users; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.comment_taged_users (id, comment_id, user_id) FROM stdin;
\.


--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.contact_us (id, name, email, dial_code, mobile_number, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: contact_us_settings; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.contact_us_settings (id, title_en, title_ar, email, mobile, desc_en, desc_ar, location, latitude, longitude, twitter, instagram, facebook, youtube, linkedin, created_at, updated_at) FROM stdin;
1	MODA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: contracting; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.contracting (id, title, description, building_type, contract_type, file, deleted, created_at, updated_at, user_id, status, price, qoutation_file, transaction_id, payment_ref) FROM stdin;
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.country (id, name, prefix, dial_code, active, created_at, updated_at, deleted) FROM stdin;
1	United Arab Emirates	971	971	1	2023-10-16 05:36:25	\N	0
\.


--
-- Data for Name: coupon; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.coupon (id, coupon_title, coupon_description, coupon_end_date, coupon_amount, coupon_minimum_spend, coupon_max_spend, coupon_usage_percoupon, coupon_usage_perx, coupon_usage_peruser, coupon_vender_id, coupon_status, deleted, coupon_code, amount_type, start_date, applied_to, minimum_amount, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: coupon_category; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.coupon_category (id, coupon_id, category_id) FROM stdin;
\.


--
-- Data for Name: coupon_products; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.coupon_products (id, coupon_id, product_id) FROM stdin;
\.


--
-- Data for Name: coupon_services; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.coupon_services (id, coupon_id, service_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: designations; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.designations (id, user_id, user_type, designation, status, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: faq; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.faq (id, title, description, created_by, updated_by, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: featured_products; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.featured_products (id, master_product, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: featured_products_img; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.featured_products_img (id, featured_product_id, image) FROM stdin;
\.


--
-- Data for Name: hair_colors; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.hair_colors (id, name, color, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: help; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.help (id, title, description, created_by, updated_by, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: industry_types; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.industry_types (id, name, active, deleted, sort_order, created_uid, updated_uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.likes (id, user_id, product_id, vendor_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: maintainance; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.maintainance (id, title, description, building_type, file, deleted, created_at, updated_at, user_id, status, price, qoutation_file, transaction_id, payment_ref) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.migrations (id, migration, batch) FROM stdin;
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
80	2022_09_02_042305_create_amount_type	1
81	2022_09_02_070349_create_designation_table	1
82	2022_09_02_105714_add_columns_to_user_table	1
83	2022_09_02_151343_create_coupon_category	1
84	2022_09_02_162532_create_user_privileges_table	1
85	2022_09_03_060222_create_product_temp_image	1
86	2022_09_03_093842_alter_product_attribute_change_attribute_type	1
87	2022_09_04_035948_create_admin_designation	1
88	2022_09_04_144626_create_cart_table	1
89	2022_09_05_073828_add_tax_percentage_to_settings_table	1
90	2022_09_05_094102_remove_unique_phone_from_users_table	1
91	2022_09_06_011715_create_orders	1
92	2022_09_08_010349_create_user_adresses_table	1
93	2022_09_08_024755_create_temp_order_products_table	1
94	2022_09_08_024821_create_temp_orders_table	1
95	2022_09_08_035231_alter_order_products	1
96	2022_09_08_042318_create_payment_report_table	1
97	2022_09_12_124711_drop_amount_type	1
98	2022_09_12_124846_amount_type	1
99	2022_09_13_043222_create_moda_main_categories_table	1
100	2022_09_13_043731_create_moda_sub_categories_table	1
101	2022_09_13_063112_create_hair_colors_table	1
102	2022_09_13_063148_create_skin_colors_table	1
103	2022_09_13_094928_alter_product_add_moda_categories	1
104	2022_09_13_100148_alter_users_add_extra	1
105	2022_09_14_052904_create_store_type_table	1
106	2022_09_14_072323_create_wallet_histories_table	1
107	2022_09_14_072738_alter_users_add_wallet_amount	1
108	2022_09_14_102301_create_my_moda_table	1
109	2022_09_14_104738_create_my_moda_items_table	1
110	2022_09_16_045220_create_post_saves_table	1
111	2022_09_17_060127_alter_posts_add_visibity	1
112	2022_09_19_041614_add_password_reset_code	1
113	2022_09_19_132546_create_help_table	1
114	2022_09_19_141934_add_land_mark	1
115	2022_09_20_094958_add_size_chart	1
116	2022_09_20_114010_add_store_type	1
117	2022_09_21_044300_alter_table_user_privileges_change_user_privileges	1
118	2022_09_21_063311_alter_post_add_extra_image_names	1
119	2022_09_23_125130_alter_table_store_type_change_banner_image	1
120	2022_09_23_135257_add_txt_location	1
121	2022_09_24_034810_add_approve	1
122	2022_10_10_144757_create_service_category	1
123	2022_10_11_053449_create_service	1
124	2022_10_22_112559_create_service_category_selected	1
125	2022_10_22_122802_drop_category_from_service	1
126	2022_10_25_030016_create_vendor_services_table	1
127	2022_10_25_051258_drop_area_from_vendor_details	1
128	2022_10_25_051355_add_area	1
129	2022_10_27_061349_drop_coupon	1
130	2022_10_27_062118_create_coupon	1
131	2022_10_27_063447_create_coupon_products	1
132	2022_10_27_071451_add_featured	1
133	2022_10_27_102343_add_user_permissions_column	1
134	2022_10_27_103447_add_password_reset_otp	1
135	2022_10_28_054725_add_pharmacycommission	1
136	2022_10_28_055919_add_featured_flag	1
137	2022_10_29_165317_create_product_master	1
138	2022_10_30_102118_add_master_product	1
139	2022_10_31_070219_create_likes	1
140	2022_10_31_072641_add_description	1
141	2022_11_02_050059_add_location	1
142	2022_11_02_052609_create_wallet_payment_report	1
143	2022_11_03_064022_create_ratings	1
144	2022_11_04_123322_create_featured_products	1
145	2022_11_04_123438_create_featured_products_img	1
146	2022_11_07_115737_create_cart_service	1
147	2022_11_09_042245_add_iban	1
148	2022_11_09_053111_create_contact_us	1
149	2022_11_10_052857_create_temp_service_orders	1
150	2022_11_10_053649_create_temp_service_order_items	1
151	2022_11_10_065916_create_orders_services_items	1
152	2022_11_10_071401_add_booking_date	1
153	2022_11_10_072709_create_orders_services	1
154	2022_11_10_074136_create_product_master_request	1
155	2022_11_10_120556_add_product_type	1
156	2022_11_10_121824_create_attribute_values_request	1
157	2022_11_11_043038_create_coupon_services	1
158	2022_11_11_100549_add_cover_image	1
159	2022_11_14_045017_add_pay_method	1
160	2022_11_17_040539_add_boxcount	1
161	2022_11_18_122709_add_is_muted	1
162	2022_11_19_070928_add_is_mute	1
163	2022_11_19_090748_add_accepted_vendor	1
164	2022_11_22_034939_add_user_type	1
165	2022_11_22_055216_create_orders_services_rejected	1
166	2022_11_23_044220_add_refund_method	1
167	2022_11_25_085834_add_refund_requested	1
168	2022_11_29_040327_add_order_no	1
169	2022_11_29_040445_add_order_nos	1
170	2022_12_23_113750_add_included_to_service_table	1
171	2022_12_23_130421_add_service_user_id_to_service	1
172	2022_12_26_091623_create_cleaning_services_table	1
173	2022_12_27_081044_add_building_type_to_service	1
174	2022_12_28_115650_add_service_type_to_service_table	1
175	2022_12_28_122912_add_contract_type_to_service_table	1
176	2023_01_04_000001_create_service_include_table	1
177	2023_01_04_000002_create_service_type_table	1
178	2023_01_05_000003_create_building_type_table	1
179	2023_01_05_000004_add_active_building-type	1
180	2023_01_05_000005_add_duration_service	1
181	2023_01_05_000006_add_building_type_service	1
182	2023_01_05_103804_add_time_to_service	1
183	2023_01_06_070205_add_document_to_service	1
184	2023_01_25_113910_create_contracting_table	1
185	2023_01_25_113942_create_maintainance_table	1
186	2023_01_26_071211_add_user_id_to_notification	1
187	2023_02_02_080127_add_booking_date_to_temp_service_order	1
188	2023_02_03_101419_change_city_id_to_building_type_id_to_cart_service	1
189	2023_02_09_065114_create_columns_in_contracting	1
190	2023_02_09_065153_create_columns_in_maintainance	1
191	2023_02_15_104221_create_price_to_contracting	1
192	2023_02_15_104241_create_price_to_maintainance	1
193	2023_02_21_115000_add_payment_columns_to_contracting_table	1
194	2023_02_21_131838_add_columns_to_maintainance_table	1
195	2023_03_21_064807_add_order_id	1
196	2023_03_23_035747_alter_service_change_description	1
\.


--
-- Data for Name: moda_main_categories; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.moda_main_categories (id, name, created_at, updated_at) FROM stdin;
1	Head	2023-10-16 05:25:50	\N
2	Upper Body	2023-10-16 05:25:50	\N
3	Lower Body	2023-10-16 05:25:50	\N
4	Footwear	2023-10-16 05:25:50	\N
5	Makeup	2023-10-16 05:25:50	\N
6	Accessories	2023-10-16 05:25:50	\N
\.


--
-- Data for Name: moda_sub_categories; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.moda_sub_categories (id, main_category, name, gender, image, active, sort_order, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: my_moda; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.my_moda (id, user_id, date, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: my_moda_items; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.my_moda_items (id, my_moda_id, product_id, product_attribute_id, moda_sub_category, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.notifications (id, description, title, image, created_at, updated_at, user_type, user_id) FROM stdin;
\.


--
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.order_products (id, order_id, product_id, product_attribute_id, product_type, quantity, price, discount, total, vendor_id, order_status, admin_commission, vendor_commission, shipping_charge) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.orders (order_id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, status, booking_date, total_qty, total_items_qty, oder_type, admin_commission, vendor_commission, shipping_charge, created_at, updated_at, is_muted, refund_method, refund_requested, refund_requested_date, order_no) FROM stdin;
\.


--
-- Data for Name: orders_services; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.orders_services (order_id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, status, booking_date, admin_commission, vendor_commission, created_at, updated_at, is_mute, refund_method, refund_requested, refund_accepted, refund_requested_date, refund_accepted_date, order_no) FROM stdin;
\.


--
-- Data for Name: orders_services_items; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.orders_services_items (id, order_id, service_id, price, discount, total, order_status, admin_commission, vendor_commission, booking_date, created_at, updated_at, accepted_vendor, accepted_date) FROM stdin;
\.


--
-- Data for Name: orders_services_rejected; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.orders_services_rejected (id, vendor_id, service_order_id, service_order_item_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payment_report; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.payment_report (id, transaction_id, payment_status, user_id, ref_id, amount, method_type, vat, wallet_amount_used, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: post_comments; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.post_comments (id, user_id, post_id, parent_id, comment, created_at, updated_at, comment_node_id) FROM stdin;
\.


--
-- Data for Name: post_likes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.post_likes (id, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: post_saves; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.post_saves (id, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: post_users; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.post_users (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.posts (id, user_id, caption, file_type, file, location_name, lattitude, longitude, post_firebase_node_id, created_at, updated_at, active, visibility, extra_file_names) FROM stdin;
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product (id, product_type, product_desc_full, product_desc_short, product_sale_from, product_sale_to, product_featured_image, product_tag, product_created_by, product_updated_by, product_status, product_deleted, product_name, product_variation_type, product_taxable, product_vender_id, product_image, product_unique_iden, product_brand_id, product_name_arabic, product_desc_full_arabic, product_desc_short_arabic, cash_points, offer_enabled, deal_enabled, is_today_offer, today_offer_date, thanku_perc, custom_status, meta_title, meta_keyword, meta_description, product_vendor_status, product_gender, is_kandora, collection_id, hot_offer_enabled, trending_enabled, offers_list, zero_quantity_orders, product_code, product_tags, sort_order, offer_for_short, hot_offer_sort_order, new_trending_sort_order, author_id, deleted, default_category_id, default_attribute_id, created_at, updated_at, brand, store_id, moda_main_category, moda_sub_category, featured, master_product, boxcount) FROM stdin;
\.


--
-- Data for Name: product_attribute; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_attribute (attribute_id, attribute_name, attribute_status, attribute_created_date, attribute_name_arabic, attribute_type, is_deleted) FROM stdin;
\.


--
-- Data for Name: product_attribute_values; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_attribute_values (attribute_values_id, attribute_id, attribute_values, attribute_values_arabic, attribute_value_in, attribute_value_color, attribute_value_label, attribute_value_label_arabic, attribute_value_image, is_deleted, attribute_value_sort_order, attribute_color) FROM stdin;
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_category (product_category_id, product_id, category_id) FROM stdin;
\.


--
-- Data for Name: product_docs; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_docs (id, product_id, title, doc_path) FROM stdin;
\.


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_images (id, product_id, image_name, product_attribute_id) FROM stdin;
\.


--
-- Data for Name: product_likes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_likes (id, product_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: product_master; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_master (id, name, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: product_master_request; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_master_request (id, name, description, vendor_id, deleted, accepted, created_at, updated_at, product_type, category) FROM stdin;
\.


--
-- Data for Name: product_selected_attribute_list; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_selected_attribute_list (product_attribute_id, product_id, manage_stock, stock_quantity, allow_back_order, stock_status, sold_individually, weight, length, height, width, shipping_class, sale_price, regular_price, taxable, image, shipping_note, title, rating, rated_users, image_temp, barcode, image_action, pr_code, product_desc, product_full_descr, size_chart) FROM stdin;
\.


--
-- Data for Name: product_selected_attributes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_selected_attributes (product_selected_attributes_id, attribute_id, attribute_values_id, product_id) FROM stdin;
\.


--
-- Data for Name: product_specifications; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_specifications (prod_spec_id, product_id, spec_title, spec_descp, lang, spec_title_arabic, spec_descp_arabic) FROM stdin;
\.


--
-- Data for Name: product_temp_image; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_temp_image (id, product_id, product_attribute_id, image, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: product_variations; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.product_variations (product_variations_id, attribute_id, attribute_values_id, product_attribute_id, product_id) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.products (id, product_type, name, active, deleted, created_by, updated_by, company_id, store_id, description, featured, meta_title, meta_description, meta_keywords, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.ratings (id, type, user_id, product_id, product_varient_id, service_id, vendor_id, rating, title, comment, created_at, updated_at, order_id) FROM stdin;
\.


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.service (id, name, image, service_price, active, deleted, "order", description, created_at, updated_at, included, service_user_id, building_type, service_type, contract_type, duration, building_type_id, "time", document) FROM stdin;
1	Deep clean AC service	1697438301652cda5ddaa43.png	350	1	0	0	\N	2023-10-16 06:38:21	2023-10-16 06:38:21	\N	\N	\N	\N	\N	30	\N	\N	\N
2	Gas leak fix & refill	1697438382652cdaaea0aff.png	450	1	0	0	\N	2023-10-16 06:39:42	2023-10-16 06:39:42	\N	\N	\N	\N	\N	80	\N	\N	\N
3	Shower installation (wall mounted/ hand-held)	1697438422652cdad6a62bc.png	280	1	0	0	\N	2023-10-16 06:40:22	2023-10-16 06:40:22	\N	\N	\N	\N	\N	80	\N	\N	\N
4	Floor mounted western toilet replacement	1697438564652cdb64ef41b.png	390	1	0	0	\N	2023-10-16 06:42:44	2023-10-16 06:42:44	\N	\N	\N	\N	\N	90	\N	\N	\N
5	Home Gardening	1697438634652cdbaaeab6f.png	890	1	0	0	\N	2023-10-16 06:43:54	2023-10-16 06:43:54	\N	\N	\N	\N	\N	120	\N	\N	\N
6	Commercial Space Painting	1697438693652cdbe5e44fa.png	1500	1	0	0	\N	2023-10-16 06:44:53	2023-10-16 06:44:53	\N	\N	\N	\N	\N	180	\N	\N	\N
7	Fixing broken windows	1697438735652cdc0f2e4ab.png	850	1	0	0	\N	2023-10-16 06:45:35	2023-10-16 06:45:35	\N	\N	\N	\N	\N	150	\N	\N	\N
\.


--
-- Data for Name: service_category; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.service_category (id, name, image, banner_image, parent_id, active, deleted, "order", description, created_at, updated_at) FROM stdin;
1	Painter	1697438092652cd98cdb84c.png	1697438092652cd98cdc489.jpeg	0	1	0	0	\N	2023-10-16 06:34:52	2023-10-16 06:34:52
2	Gardener	1697438115652cd9a3aeb5d.png	1697438115652cd9a3af6b3.jpg	0	1	0	0	\N	2023-10-16 06:35:15	2023-10-16 06:35:15
3	Plumber	1697438139652cd9bbb78f1.png	1697438139652cd9bbb844a.jpg	0	1	0	0	\N	2023-10-16 06:35:39	2023-10-16 06:35:39
4	Electrician	1697438164652cd9d418475.png	1697438164652cd9d418f67.jpg	0	1	0	0	\N	2023-10-16 06:36:04	2023-10-16 06:36:04
5	Handyman	1697438203652cd9fbae0c1.png	1697438203652cd9fbaeca9.jpg	0	1	0	0	\N	2023-10-16 06:36:43	2023-10-16 06:36:43
\.


--
-- Data for Name: service_category_selected; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.service_category_selected (id, service_id, category_id) FROM stdin;
1	1	4
2	2	4
3	3	3
4	4	3
5	5	2
6	6	1
7	7	5
\.


--
-- Data for Name: service_include; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.service_include (id, service_id, title, description, icon, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: service_type; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.service_type (id, name, description, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.settings (id, admin_commission, shipping_charge, created_at, updated_at, tax_percentage) FROM stdin;
1	0	0	\N	\N	0
\.


--
-- Data for Name: skin_colors; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.skin_colors (id, name, color, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.states (id, name, active, country_id, created_uid, updated_uid, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: store_images; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.store_images (id, image, store_id) FROM stdin;
\.


--
-- Data for Name: store_likes; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.store_likes (id, store_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: store_managers_types; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.store_managers_types (id, name, created_at, updated_at, vendor_id) FROM stdin;
\.


--
-- Data for Name: store_type; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.store_type (id, name, banner_image, active, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.stores (id, vendor_id, industry_type, store_name, business_email, dial_code, mobile, description, location, latitude, longitude, address_line1, address_line2, country_id, state_id, city_id, zip, logo, cover_image, license_number, license_doc, vat_cert_number, vat_cert_doc, active, verified, deleted, created_uid, updated_uid, created_at, updated_at, commission) FROM stdin;
\.


--
-- Data for Name: temp_order_products; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.temp_order_products (id, order_id, product_id, product_attribute_id, product_type, quantity, price, discount, total, vendor_id, admin_commission, vendor_commission, shipping_charge) FROM stdin;
\.


--
-- Data for Name: temp_orders; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.temp_orders (id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, admin_commission, vendor_commission, shipping_charge, temp_id) FROM stdin;
\.


--
-- Data for Name: temp_service_order_items; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.temp_service_order_items (id, order_id, service_id, price, discount, total, admin_commission, vendor_commission, booking_date) FROM stdin;
\.


--
-- Data for Name: temp_service_orders; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.temp_service_orders (id, invoice_id, user_id, address_id, total, vat, discount, grand_total, payment_mode, admin_commission, vendor_commission, temp_id, booking_date) FROM stdin;
\.


--
-- Data for Name: user_address; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.user_address (id, user_id, full_name, dial_code, phone, address, country_id, state_id, city_id, address_type, status, is_default, created_at, updated_at, land_mark, building_name, latitude, longitude, location) FROM stdin;
\.


--
-- Data for Name: user_follows; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.user_follows (id, user_id, follow_user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_privileges; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.user_privileges (id, user_id, designation_id, privileges, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.users (id, name, email, dial_code, phone, phone_verified, password, email_verified_at, role, first_name, last_name, user_image, user_phone_otp, user_device_token, user_device_type, user_access_token, firebase_user_key, remember_token, created_at, updated_at, country_id, state_id, city_id, area, active, deleted, display_name, business_name, email_verified, user_email_otp, dob, vendor, store, previllege, about_me, verified, designation_id, is_private_profile, user_name, gender, website, wallet_amount, password_reset_code, password_reset_time, approve, user_permissions, password_reset_otp) FROM stdin;
2	RUSVIN K	rusvin@gmail.com	971	7034526952	0	$2y$10$hAxPYVEXmaZ0Wml0hKc1Wu2KieRNFQFLr5nj3wyUqJUrgSlQhrF7i	\N	2	RUSVIN	K	\N	\N	\N	\N	\N	\N	\N	2023-10-16 05:37:06	2023-10-16 05:37:17	0	0	0	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
3	\N	rusvinmerak@gmail.com	971	7034526954	0	$2y$10$.9Fvgn4hvE4v0JFGOLxlA..zHWnklgT4hGBhMQNXwxt1694IIVnVW	\N	3	RUSVIN	K	\N	\N	\N	\N	\N	\N	\N	2023-10-16 05:42:51	\N	1	0	1	0	0	0	\N	\N	0	\N	\N	0	0	0	\N	1	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
1	Admin	admin@admin.com	971	112233445566778899	0	$2y$10$4CKClSnfh0w959jNrsJyl.8/oowWbizHIg4FrOlXxfgtYYBU6Y6jK	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	1	0	\N	\N	0	\N	\N	0	0	0	\N	0	\N	0	\N	1	\N	0	\N	\N	0	\N	\N
\.


--
-- Data for Name: users_role; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.users_role (id, role_name, created_at, updated_at) FROM stdin;
1	admin	2023-10-16 05:25:49	2023-10-16 05:25:49
2	users	2023-10-16 05:25:49	2023-10-16 05:25:49
3	vendors	2023-10-16 05:25:49	2023-10-16 05:25:49
\.


--
-- Data for Name: vendor_details; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.vendor_details (id, homedelivery, logo, key_control, branches, company_name, company_brand, legal_staus, reg_date, trade_license, trade_license_expiry, vat_reg_number, vat_reg_expiry, address1, address2, street, state, city, zip, trade_license_doc, chamber_of_commerce_doc, share_certificate_doc, power_attorny_doc, vat_reg_doc, signed_agreement_doc, identy1_type, identy1_doc, identy2_type, identy2_doc, company_identy1_type, company_identy1_doc, company_identy2_type, company_identy2_doc, created_at, updated_at, industry_type, user_id, store_type, txt_location, location, latitude, longitude, area, pharmacycommission, servicecommission, featured_flag, open_time, close_time, description, cover_image) FROM stdin;
1	1	/uploads/company/652ccc0daaa6b_1697434637.jpg	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	\N	\N	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2023-10-16 05:37:06	2023-10-16 05:37:17	1	2	0	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
2	1	/uploads/company/652ccd5b5f982_1697434971.jpg	0	0	ABCD LLP	\N	\N	\N	121212	2023-11-30 00:00:00	\N	\N	ar	212	2323	0	1	87855	/uploads/company/652ccd5b5fad5_1697434971.jpg	\N	\N	\N	\N	\N	0	\N	0	\N	0	\N	0	\N	2023-10-16 05:42:51	2023-10-16 05:42:51	2	3	0	\N	57WH+VV - Downtown Dubai - Dubai - United Arab Emirates	25.1972295	55.27974699999999	ABCD	\N	\N	0	\N	\N	\N	\N
\.


--
-- Data for Name: vendor_services; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.vendor_services (id, vendor_id, service_id, created_at, updated_at) FROM stdin;
1	3	1	2023-10-16 07:06:00	2023-10-16 07:06:00
2	3	3	2023-10-16 07:06:00	2023-10-16 07:06:00
3	1	1	2023-10-24 08:37:00	2023-10-24 08:37:00
4	1	2	2023-10-24 08:37:00	2023-10-24 08:37:00
\.


--
-- Data for Name: wallet_histories; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.wallet_histories (id, user_id, wallet_amount, pay_type, description, created_at, updated_at, pay_method) FROM stdin;
\.


--
-- Data for Name: wallet_payment_report; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.wallet_payment_report (id, transaction_id, payment_status, user_id, ref_id, amount, method_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: websockets_statistics_entries; Type: TABLE DATA; Schema: public; Owner: khafroyal_laconcierge_us
--

COPY public.websockets_statistics_entries (id, app_id, peak_connection_count, websocket_message_count, api_message_count, created_at, updated_at) FROM stdin;
\.


--
-- Name: admin_designation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.admin_designation_id_seq', 1, false);


--
-- Name: amount_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.amount_type_id_seq', 2, true);


--
-- Name: app_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.app_banners_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, false);


--
-- Name: attribute_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.attribute_type_id_seq', 4, true);


--
-- Name: attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.attribute_values_id_seq', 1, false);


--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.attribute_values_request_id_seq', 1, false);


--
-- Name: attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.attributes_id_seq', 1, false);


--
-- Name: bank_code_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.bank_code_types_id_seq', 3, true);


--
-- Name: bank_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.bank_details_id_seq', 1, false);


--
-- Name: bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.bank_id_seq', 1, false);


--
-- Name: brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.brand_id_seq', 1, false);


--
-- Name: building_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.building_type_id_seq', 1, false);


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.cart_id_seq', 1, false);


--
-- Name: cart_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.cart_service_id_seq', 1, false);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, true);


--
-- Name: cleaning_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.cleaning_services_id_seq', 1, false);


--
-- Name: comment_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.comment_likes_id_seq', 1, false);


--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.comment_taged_users_id_seq', 1, false);


--
-- Name: contact_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.contact_us_id_seq', 1, false);


--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.contact_us_settings_id_seq', 1, true);


--
-- Name: contracting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.contracting_id_seq', 1, false);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.country_id_seq', 1, true);


--
-- Name: coupon_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.coupon_category_id_seq', 1, false);


--
-- Name: coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.coupon_id_seq', 1, false);


--
-- Name: coupon_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.coupon_products_id_seq', 1, false);


--
-- Name: coupon_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.coupon_services_id_seq', 1, true);


--
-- Name: designations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.designations_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.faq_id_seq', 1, false);


--
-- Name: featured_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.featured_products_id_seq', 1, false);


--
-- Name: featured_products_img_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.featured_products_img_id_seq', 1, false);


--
-- Name: hair_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.hair_colors_id_seq', 1, false);


--
-- Name: help_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.help_id_seq', 1, false);


--
-- Name: industry_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.industry_types_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: maintainance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.maintainance_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.migrations_id_seq', 196, true);


--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.moda_main_categories_id_seq', 6, true);


--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.moda_sub_categories_id_seq', 1, false);


--
-- Name: my_moda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.my_moda_id_seq', 1, false);


--
-- Name: my_moda_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.my_moda_items_id_seq', 1, false);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- Name: order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.order_products_id_seq', 1, false);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- Name: orders_services_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.orders_services_items_id_seq', 1, false);


--
-- Name: orders_services_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.orders_services_order_id_seq', 1, false);


--
-- Name: orders_services_rejected_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.orders_services_rejected_id_seq', 1, false);


--
-- Name: payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.payment_report_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: post_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.post_comments_id_seq', 1, false);


--
-- Name: post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.post_likes_id_seq', 1, false);


--
-- Name: post_saves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.post_saves_id_seq', 1, false);


--
-- Name: post_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.post_users_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_attribute_attribute_id_seq', 1, false);


--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_attribute_values_attribute_values_id_seq', 1, false);


--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_category_product_category_id_seq', 1, false);


--
-- Name: product_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_docs_id_seq', 1, false);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_images_id_seq', 1, false);


--
-- Name: product_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_likes_id_seq', 1, false);


--
-- Name: product_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_master_id_seq', 1, false);


--
-- Name: product_master_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_master_request_id_seq', 1, false);


--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_selected_attribute_list_product_attribute_id_seq', 1, false);


--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_selected_attributes_product_selected_attributes_id_seq', 1, false);


--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_specifications_prod_spec_id_seq', 1, false);


--
-- Name: product_temp_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_temp_image_id_seq', 1, false);


--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.product_variations_product_variations_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: service_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.service_category_id_seq', 5, true);


--
-- Name: service_category_selected_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.service_category_selected_id_seq', 7, true);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.service_id_seq', 7, true);


--
-- Name: service_include_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.service_include_id_seq', 1, false);


--
-- Name: service_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.service_type_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, true);


--
-- Name: skin_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.skin_colors_id_seq', 1, false);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: store_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.store_images_id_seq', 1, false);


--
-- Name: store_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.store_likes_id_seq', 1, false);


--
-- Name: store_managers_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.store_managers_types_id_seq', 1, false);


--
-- Name: store_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.store_type_id_seq', 1, false);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.stores_id_seq', 1, false);


--
-- Name: temp_order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.temp_order_products_id_seq', 1, false);


--
-- Name: temp_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.temp_orders_id_seq', 1, false);


--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.temp_service_order_items_id_seq', 1, false);


--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.temp_service_orders_id_seq', 1, false);


--
-- Name: user_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.user_address_id_seq', 1, false);


--
-- Name: user_follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.user_follows_id_seq', 1, false);


--
-- Name: user_privileges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.user_privileges_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: users_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.users_role_id_seq', 3, true);


--
-- Name: vendor_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.vendor_details_id_seq', 2, true);


--
-- Name: vendor_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.vendor_services_id_seq', 4, true);


--
-- Name: wallet_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.wallet_histories_id_seq', 1, false);


--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.wallet_payment_report_id_seq', 1, false);


--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: khafroyal_laconcierge_us
--

SELECT pg_catalog.setval('public.websockets_statistics_entries_id_seq', 1, false);


--
-- Name: admin_designation admin_designation_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.admin_designation
    ADD CONSTRAINT admin_designation_pkey PRIMARY KEY (id);


--
-- Name: amount_type amount_type_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.amount_type
    ADD CONSTRAINT amount_type_pkey PRIMARY KEY (id);


--
-- Name: app_banners app_banners_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.app_banners
    ADD CONSTRAINT app_banners_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: attribute_type attribute_type_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_type
    ADD CONSTRAINT attribute_type_pkey PRIMARY KEY (id);


--
-- Name: attribute_values attribute_values_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_values
    ADD CONSTRAINT attribute_values_pkey PRIMARY KEY (id);


--
-- Name: attribute_values_request attribute_values_request_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attribute_values_request
    ADD CONSTRAINT attribute_values_request_pkey PRIMARY KEY (id);


--
-- Name: attributes attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (id);


--
-- Name: bank_code_types bank_code_types_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank_code_types
    ADD CONSTRAINT bank_code_types_pkey PRIMARY KEY (id);


--
-- Name: bank_details bank_details_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank_details
    ADD CONSTRAINT bank_details_pkey PRIMARY KEY (id);


--
-- Name: bank bank_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: brand brand_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);


--
-- Name: building_type building_type_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.building_type
    ADD CONSTRAINT building_type_pkey PRIMARY KEY (id);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: cart_service cart_service_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cart_service
    ADD CONSTRAINT cart_service_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: cleaning_services cleaning_services_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.cleaning_services
    ADD CONSTRAINT cleaning_services_pkey PRIMARY KEY (id);


--
-- Name: comment_likes comment_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_likes
    ADD CONSTRAINT comment_likes_pkey PRIMARY KEY (id);


--
-- Name: comment_taged_users comment_taged_users_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_taged_users
    ADD CONSTRAINT comment_taged_users_pkey PRIMARY KEY (id);


--
-- Name: contact_us contact_us_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (id);


--
-- Name: contact_us_settings contact_us_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contact_us_settings
    ADD CONSTRAINT contact_us_settings_pkey PRIMARY KEY (id);


--
-- Name: contracting contracting_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.contracting
    ADD CONSTRAINT contracting_pkey PRIMARY KEY (id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: coupon_category coupon_category_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_category
    ADD CONSTRAINT coupon_category_pkey PRIMARY KEY (id);


--
-- Name: coupon coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon
    ADD CONSTRAINT coupon_pkey PRIMARY KEY (id);


--
-- Name: coupon_products coupon_products_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_products
    ADD CONSTRAINT coupon_products_pkey PRIMARY KEY (id);


--
-- Name: coupon_services coupon_services_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.coupon_services
    ADD CONSTRAINT coupon_services_pkey PRIMARY KEY (id);


--
-- Name: designations designations_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.designations
    ADD CONSTRAINT designations_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: faq faq_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.faq
    ADD CONSTRAINT faq_pkey PRIMARY KEY (id);


--
-- Name: featured_products_img featured_products_img_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.featured_products_img
    ADD CONSTRAINT featured_products_img_pkey PRIMARY KEY (id);


--
-- Name: featured_products featured_products_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.featured_products
    ADD CONSTRAINT featured_products_pkey PRIMARY KEY (id);


--
-- Name: hair_colors hair_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.hair_colors
    ADD CONSTRAINT hair_colors_pkey PRIMARY KEY (id);


--
-- Name: help help_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.help
    ADD CONSTRAINT help_pkey PRIMARY KEY (id);


--
-- Name: industry_types industry_types_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.industry_types
    ADD CONSTRAINT industry_types_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: maintainance maintainance_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.maintainance
    ADD CONSTRAINT maintainance_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: moda_main_categories moda_main_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.moda_main_categories
    ADD CONSTRAINT moda_main_categories_pkey PRIMARY KEY (id);


--
-- Name: moda_sub_categories moda_sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.moda_sub_categories
    ADD CONSTRAINT moda_sub_categories_pkey PRIMARY KEY (id);


--
-- Name: my_moda_items my_moda_items_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.my_moda_items
    ADD CONSTRAINT my_moda_items_pkey PRIMARY KEY (id);


--
-- Name: my_moda my_moda_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.my_moda
    ADD CONSTRAINT my_moda_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_products order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: orders_services_items orders_services_items_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services_items
    ADD CONSTRAINT orders_services_items_pkey PRIMARY KEY (id);


--
-- Name: orders_services orders_services_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services
    ADD CONSTRAINT orders_services_pkey PRIMARY KEY (order_id);


--
-- Name: orders_services_rejected orders_services_rejected_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders_services_rejected
    ADD CONSTRAINT orders_services_rejected_pkey PRIMARY KEY (id);


--
-- Name: payment_report payment_report_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.payment_report
    ADD CONSTRAINT payment_report_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: post_comments post_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id);


--
-- Name: post_likes post_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_likes
    ADD CONSTRAINT post_likes_pkey PRIMARY KEY (id);


--
-- Name: post_saves post_saves_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_saves
    ADD CONSTRAINT post_saves_pkey PRIMARY KEY (id);


--
-- Name: post_users post_users_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_users
    ADD CONSTRAINT post_users_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: product_attribute product_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_attribute
    ADD CONSTRAINT product_attribute_pkey PRIMARY KEY (attribute_id);


--
-- Name: product_attribute_values product_attribute_values_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_attribute_values
    ADD CONSTRAINT product_attribute_values_pkey PRIMARY KEY (attribute_values_id);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (product_category_id);


--
-- Name: product_docs product_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_docs
    ADD CONSTRAINT product_docs_pkey PRIMARY KEY (id);


--
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- Name: product_likes product_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_likes
    ADD CONSTRAINT product_likes_pkey PRIMARY KEY (id);


--
-- Name: product_master product_master_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_master
    ADD CONSTRAINT product_master_pkey PRIMARY KEY (id);


--
-- Name: product_master_request product_master_request_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_master_request
    ADD CONSTRAINT product_master_request_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_selected_attribute_list product_selected_attribute_list_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_selected_attribute_list
    ADD CONSTRAINT product_selected_attribute_list_pkey PRIMARY KEY (product_attribute_id);


--
-- Name: product_selected_attributes product_selected_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_selected_attributes
    ADD CONSTRAINT product_selected_attributes_pkey PRIMARY KEY (product_selected_attributes_id);


--
-- Name: product_specifications product_specifications_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_specifications
    ADD CONSTRAINT product_specifications_pkey PRIMARY KEY (prod_spec_id);


--
-- Name: product_temp_image product_temp_image_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_temp_image
    ADD CONSTRAINT product_temp_image_pkey PRIMARY KEY (id);


--
-- Name: product_variations product_variations_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_variations
    ADD CONSTRAINT product_variations_pkey PRIMARY KEY (product_variations_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: service_category service_category_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_category
    ADD CONSTRAINT service_category_pkey PRIMARY KEY (id);


--
-- Name: service_category_selected service_category_selected_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_category_selected
    ADD CONSTRAINT service_category_selected_pkey PRIMARY KEY (id);


--
-- Name: service_include service_include_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_include
    ADD CONSTRAINT service_include_pkey PRIMARY KEY (id);


--
-- Name: service service_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- Name: service_type service_type_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service_type
    ADD CONSTRAINT service_type_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: skin_colors skin_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.skin_colors
    ADD CONSTRAINT skin_colors_pkey PRIMARY KEY (id);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: store_images store_images_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_images
    ADD CONSTRAINT store_images_pkey PRIMARY KEY (id);


--
-- Name: store_likes store_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_likes
    ADD CONSTRAINT store_likes_pkey PRIMARY KEY (id);


--
-- Name: store_managers_types store_managers_types_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_managers_types
    ADD CONSTRAINT store_managers_types_pkey PRIMARY KEY (id);


--
-- Name: store_type store_type_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_type
    ADD CONSTRAINT store_type_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: temp_order_products temp_order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_order_products
    ADD CONSTRAINT temp_order_products_pkey PRIMARY KEY (id);


--
-- Name: temp_orders temp_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_orders
    ADD CONSTRAINT temp_orders_pkey PRIMARY KEY (id);


--
-- Name: temp_service_order_items temp_service_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_service_order_items
    ADD CONSTRAINT temp_service_order_items_pkey PRIMARY KEY (id);


--
-- Name: temp_service_orders temp_service_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_service_orders
    ADD CONSTRAINT temp_service_orders_pkey PRIMARY KEY (id);


--
-- Name: user_address user_address_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (id);


--
-- Name: user_follows user_follows_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_follows
    ADD CONSTRAINT user_follows_pkey PRIMARY KEY (id);


--
-- Name: user_privileges user_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_privileges
    ADD CONSTRAINT user_privileges_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_role users_role_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.users_role
    ADD CONSTRAINT users_role_pkey PRIMARY KEY (id);


--
-- Name: vendor_details vendor_details_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.vendor_details
    ADD CONSTRAINT vendor_details_pkey PRIMARY KEY (id);


--
-- Name: vendor_services vendor_services_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.vendor_services
    ADD CONSTRAINT vendor_services_pkey PRIMARY KEY (id);


--
-- Name: wallet_histories wallet_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.wallet_histories
    ADD CONSTRAINT wallet_histories_pkey PRIMARY KEY (id);


--
-- Name: wallet_payment_report wallet_payment_report_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.wallet_payment_report
    ADD CONSTRAINT wallet_payment_report_pkey PRIMARY KEY (id);


--
-- Name: websockets_statistics_entries websockets_statistics_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.websockets_statistics_entries
    ADD CONSTRAINT websockets_statistics_entries_pkey PRIMARY KEY (id);


--
-- Name: des_user_id; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX des_user_id ON public.designations USING btree (user_id);


--
-- Name: designation_id; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX designation_id ON public.users USING btree (designation_id);


--
-- Name: man_vendor_id; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX man_vendor_id ON public.store_managers_types USING btree (vendor_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: user_designation_id; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX user_designation_id ON public.user_privileges USING btree (designation_id);


--
-- Name: user_user_id; Type: INDEX; Schema: public; Owner: khafroyal_laconcierge_us
--

CREATE INDEX user_user_id ON public.user_privileges USING btree (user_id);


--
-- Name: bank_details bank_details_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.bank_details
    ADD CONSTRAINT bank_details_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: comment_likes comment_likes_comment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_likes
    ADD CONSTRAINT comment_likes_comment_id_foreign FOREIGN KEY (comment_id) REFERENCES public.post_comments(id) ON DELETE CASCADE;


--
-- Name: comment_likes comment_likes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_likes
    ADD CONSTRAINT comment_likes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: comment_taged_users comment_taged_users_comment_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_taged_users
    ADD CONSTRAINT comment_taged_users_comment_id_foreign FOREIGN KEY (comment_id) REFERENCES public.post_comments(id) ON DELETE CASCADE;


--
-- Name: comment_taged_users comment_taged_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.comment_taged_users
    ADD CONSTRAINT comment_taged_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: designations designations_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.designations
    ADD CONSTRAINT designations_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: order_products order_products_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: orders orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: post_comments post_comments_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_comments post_comments_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: post_saves post_saves_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_saves
    ADD CONSTRAINT post_saves_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_saves post_saves_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_saves
    ADD CONSTRAINT post_saves_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: post_users post_users_post_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_users
    ADD CONSTRAINT post_users_post_id_foreign FOREIGN KEY (post_id) REFERENCES public.posts(id) ON DELETE CASCADE;


--
-- Name: post_users post_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.post_users
    ADD CONSTRAINT post_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: product_docs product_docs_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_docs
    ADD CONSTRAINT product_docs_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: product_images product_images_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: product_selected_attributes product_selected_attributes_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_selected_attributes
    ADD CONSTRAINT product_selected_attributes_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: product_specifications product_specifications_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_specifications
    ADD CONSTRAINT product_specifications_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: product_variations product_variations_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.product_variations
    ADD CONSTRAINT product_variations_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: service service_service_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_service_user_id_foreign FOREIGN KEY (service_user_id) REFERENCES public.users(id);


--
-- Name: store_managers_types store_managers_types_vendor_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.store_managers_types
    ADD CONSTRAINT store_managers_types_vendor_id_foreign FOREIGN KEY (vendor_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: temp_order_products temp_order_products_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_order_products
    ADD CONSTRAINT temp_order_products_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;


--
-- Name: temp_orders temp_orders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.temp_orders
    ADD CONSTRAINT temp_orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_address user_address_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_follows user_follows_follow_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_follows
    ADD CONSTRAINT user_follows_follow_user_id_foreign FOREIGN KEY (follow_user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_follows user_follows_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.user_follows
    ADD CONSTRAINT user_follows_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: vendor_details vendor_details_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.vendor_details
    ADD CONSTRAINT vendor_details_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: wallet_histories wallet_histories_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: khafroyal_laconcierge_us
--

ALTER TABLE ONLY public.wallet_histories
    ADD CONSTRAINT wallet_histories_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

