--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-2.pgdg20.04+1)

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
-- Data for Name: admin_designation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: amount_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.amount_type VALUES (1, '%');
INSERT INTO public.amount_type VALUES (2, 'Amount');


--
-- Data for Name: app_banners; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: attribute_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.attribute_type VALUES (1, 'Dropdown', 'dropdown', 1);
INSERT INTO public.attribute_type VALUES (2, 'Button', 'radio', 1);
INSERT INTO public.attribute_type VALUES (3, 'Image Selection', 'radio_image', 1);
INSERT INTO public.attribute_type VALUES (4, 'Color Box', 'radio_button_group', 1);


--
-- Data for Name: attribute_values; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: attribute_values_request; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bank VALUES (1, 'ADCB', '2023-10-10 09:15:19', '2023-10-10 09:55:52');


--
-- Data for Name: bank_code_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bank_code_types VALUES (1, 'IFSC (India)', 0, 0, 0, NULL, NULL);
INSERT INTO public.bank_code_types VALUES (2, 'SORT CODE (UK)', 0, 0, 0, NULL, NULL);
INSERT INTO public.bank_code_types VALUES (3, 'SWIFT CODE', 0, 0, 0, NULL, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Admin', 'admin@admin.com', '971', '112233445566778899', 0, '$2y$10$4CKClSnfh0w959jNrsJyl.8/oowWbizHIg4FrOlXxfgtYYBU6Y6jK', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO public.users VALUES (2, 'USER TEST', 'testuser@gmail.com', '971', '323232323', 0, '$2y$10$48KUTbz8Pr.tw02MFdjmveXyRM6SniVe89oxhi6EEbWRRQctesIjm', NULL, '2', 'USER', 'TEST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-09 07:29:02', '2023-10-09 07:34:02', 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO public.users VALUES (3, NULL, 'rusvinmerak@gmail.com', '971', '7034526952', 0, '$2y$10$Cu3yZo4CxfeU74DT4j7Ry.mI.ByzmFph4zeyANTmdZLDDDbR7UZl6', NULL, '3', 'RUSVIN', 'K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-09 13:48:51', '2023-10-11 05:17:43', 1, 0, 1, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, 1, NULL, 0, NULL, 1, NULL, 0, NULL, NULL, 0, NULL, NULL);


--
-- Data for Name: bank_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bank_details VALUES (1, '1', 'asasas', 0, '121212', '121212', '121212', NULL, NULL, 1, 3, '2023-10-10 09:32:16', '2023-10-10 09:32:16', '121212');


--
-- Data for Name: brand; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: building_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.building_type VALUES (1, 'Home', NULL, '2023-10-09 07:39:03', '2023-10-09 10:56:44', 1, 0);


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cart_service; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities VALUES (1, 'Dubai', 1, 1, 0, 1, NULL, 0, '2023-10-09 07:28:21', '2023-10-09 07:28:21');


--
-- Data for Name: cleaning_services; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: post_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: comment_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: comment_taged_users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: contact_us; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: contact_us_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contact_us_settings VALUES (1, 'Le conceirge', NULL, 'admin@gmail.com', NULL, NULL, NULL, 'Lobby - 673C+W8P - Dubai World Trade Centre - Dubai - United Arab Emirates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-09 12:46:37');


--
-- Data for Name: contracting; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country VALUES (1, 'United Arab Emirates', '971', '971', '1', '2023-10-09 07:23:04', NULL, 0);


--
-- Data for Name: coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: coupon_category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: coupon_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: coupon_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.coupon_services VALUES (1, 1, 1);


--
-- Data for Name: designations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: faq; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: featured_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: featured_products_img; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: hair_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: help; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: industry_types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: maintainance; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations VALUES (1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1);
INSERT INTO public.migrations VALUES (2, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO public.migrations VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO public.migrations VALUES (6, '2022_07_22_072324_create_country_models_table', 1);
INSERT INTO public.migrations VALUES (7, '2022_07_28_095424_create_category_table', 1);
INSERT INTO public.migrations VALUES (8, '2022_07_29_113349_create_products_table', 1);
INSERT INTO public.migrations VALUES (9, '2022_07_29_115922_create_product_attributes_table', 1);
INSERT INTO public.migrations VALUES (10, '2022_07_29_121226_create_product_images_table', 1);
INSERT INTO public.migrations VALUES (11, '2022_08_01_044301_add_deleted_to_country_table', 1);
INSERT INTO public.migrations VALUES (12, '2022_08_01_052546_create_industry_types_table', 1);
INSERT INTO public.migrations VALUES (13, '2022_08_01_072954_create_attributes_table', 1);
INSERT INTO public.migrations VALUES (14, '2022_08_01_081612_create_attribute_type_table', 1);
INSERT INTO public.migrations VALUES (15, '2022_08_01_105755_create_attribute_values_table', 1);
INSERT INTO public.migrations VALUES (16, '2022_08_03_162220_create_users_role_table', 1);
INSERT INTO public.migrations VALUES (17, '2022_08_04_085250_create_states_table', 1);
INSERT INTO public.migrations VALUES (18, '2022_08_04_085323_create_cities_table', 1);
INSERT INTO public.migrations VALUES (19, '2022_08_04_102446_create_stores_table', 1);
INSERT INTO public.migrations VALUES (20, '2022_08_04_153341_update_users_table', 1);
INSERT INTO public.migrations VALUES (21, '2022_08_05_041320_create_vendor_details', 1);
INSERT INTO public.migrations VALUES (22, '2022_08_05_044559_create_bank_details', 1);
INSERT INTO public.migrations VALUES (23, '2022_08_05_055145_create_store_images_table', 1);
INSERT INTO public.migrations VALUES (24, '2022_08_05_162828_add_active_to_users', 1);
INSERT INTO public.migrations VALUES (25, '2022_08_05_165055_add_deleted_to_users', 1);
INSERT INTO public.migrations VALUES (26, '2022_08_06_042655_add_industry_type_to_vendor_details', 1);
INSERT INTO public.migrations VALUES (27, '2022_08_06_052804_update_vendor_details_table', 1);
INSERT INTO public.migrations VALUES (28, '2022_08_06_053808_alter_table_vendor_details_change_chamber_of_commerce_doc', 1);
INSERT INTO public.migrations VALUES (29, '2022_08_06_071210_alter_product_attribute_add_extra', 1);
INSERT INTO public.migrations VALUES (30, '2022_08_06_072956_alter_product_images_add_attribute_id', 1);
INSERT INTO public.migrations VALUES (31, '2022_08_06_155049_update_bank_details_table', 1);
INSERT INTO public.migrations VALUES (32, '2022_08_10_034617_alter_table_vendor_details_change_homedelivery', 1);
INSERT INTO public.migrations VALUES (33, '2022_08_10_153155_create_app_banners', 1);
INSERT INTO public.migrations VALUES (34, '2022_08_11_065227_create_articles', 1);
INSERT INTO public.migrations VALUES (35, '2022_08_11_071259_create_faq', 1);
INSERT INTO public.migrations VALUES (36, '2022_08_11_162220_create_bank', 1);
INSERT INTO public.migrations VALUES (37, '2022_08_14_152538_create_contact_us_settings', 1);
INSERT INTO public.migrations VALUES (38, '2022_08_14_154810_create_settings', 1);
INSERT INTO public.migrations VALUES (39, '2022_08_14_160604_create_notifications', 1);
INSERT INTO public.migrations VALUES (40, '2022_08_16_151905_create_product', 1);
INSERT INTO public.migrations VALUES (41, '2022_08_16_160300_add_display_name_to_users', 1);
INSERT INTO public.migrations VALUES (42, '2022_08_16_160422_add_business_name_to_users', 1);
INSERT INTO public.migrations VALUES (43, '2022_08_16_163007_create_product_attribute', 1);
INSERT INTO public.migrations VALUES (44, '2022_08_16_163708_create_product_attribute_values', 1);
INSERT INTO public.migrations VALUES (45, '2022_08_17_105931_create_product_category', 1);
INSERT INTO public.migrations VALUES (46, '2022_08_17_111528_drop_product_attributes', 1);
INSERT INTO public.migrations VALUES (47, '2022_08_17_113326_create_product_selected_attribute_list', 1);
INSERT INTO public.migrations VALUES (48, '2022_08_17_114730_create_product_docs', 1);
INSERT INTO public.migrations VALUES (49, '2022_08_17_143257_create_order_products', 1);
INSERT INTO public.migrations VALUES (50, '2022_08_17_144802_create_product_specifications', 1);
INSERT INTO public.migrations VALUES (51, '2022_08_17_145318_create_product_variations', 1);
INSERT INTO public.migrations VALUES (52, '2022_08_19_041937_create_brand', 1);
INSERT INTO public.migrations VALUES (53, '2022_08_19_042907_add_deleted_to_brand', 1);
INSERT INTO public.migrations VALUES (54, '2022_08_19_103034_alter_table_product_attribute_change_attribute_type', 1);
INSERT INTO public.migrations VALUES (55, '2022_08_19_103645_alter_table_product_attribute_change_is_deleted', 1);
INSERT INTO public.migrations VALUES (56, '2022_08_19_121718_alter_table_product_attribute_values_change_attribute_value_color', 1);
INSERT INTO public.migrations VALUES (57, '2022_08_19_121948_alter_table_product_attribute_values_change_attribute_value_label', 1);
INSERT INTO public.migrations VALUES (58, '2022_08_19_124250_create_product_selected_attributes_table', 1);
INSERT INTO public.migrations VALUES (59, '2022_08_20_050413_add_brand_to_product', 1);
INSERT INTO public.migrations VALUES (60, '2022_08_23_124030_create_bank_code_types', 1);
INSERT INTO public.migrations VALUES (61, '2022_08_24_035518_create_store_managers_types', 1);
INSERT INTO public.migrations VALUES (62, '2022_08_24_081624_add_columns_to_users_table', 1);
INSERT INTO public.migrations VALUES (63, '2022_08_25_093923_create_posts_table', 1);
INSERT INTO public.migrations VALUES (64, '2022_08_25_102809_create_post_users_table', 1);
INSERT INTO public.migrations VALUES (65, '2022_08_26_075605_create_post_likes_table', 1);
INSERT INTO public.migrations VALUES (66, '2022_08_26_083919_create_post_comments_table', 1);
INSERT INTO public.migrations VALUES (67, '2022_08_26_094609_create_comment_taged_users_table', 1);
INSERT INTO public.migrations VALUES (68, '2022_08_26_120123_alter_post_commets_add_extra', 1);
INSERT INTO public.migrations VALUES (69, '2022_08_26_131152_create_comment_likes_table', 1);
INSERT INTO public.migrations VALUES (70, '2022_08_27_182018_add_store_id_to_product', 1);
INSERT INTO public.migrations VALUES (71, '2022_08_29_020455_add_vendor_to_users', 1);
INSERT INTO public.migrations VALUES (72, '2022_08_30_023652_add_commission_to_stores', 1);
INSERT INTO public.migrations VALUES (73, '2022_08_30_035602_create_store_likes_table', 1);
INSERT INTO public.migrations VALUES (74, '2022_08_30_035706_create_product_likes_table', 1);
INSERT INTO public.migrations VALUES (75, '2022_08_30_053123_create_user_follows_table', 1);
INSERT INTO public.migrations VALUES (76, '2022_08_30_083554_add_vendor_id_column_to_store_managers_types', 1);
INSERT INTO public.migrations VALUES (77, '2022_08_30_110300_alter_user_add_about_me', 1);
INSERT INTO public.migrations VALUES (78, '2022_08_30_113554_alter_post_add_post_status', 1);
INSERT INTO public.migrations VALUES (79, '2022_08_31_175858_add_verified_to_users', 1);
INSERT INTO public.migrations VALUES (80, '2022_09_02_042305_create_amount_type', 1);
INSERT INTO public.migrations VALUES (81, '2022_09_02_070349_create_designation_table', 1);
INSERT INTO public.migrations VALUES (82, '2022_09_02_105714_add_columns_to_user_table', 1);
INSERT INTO public.migrations VALUES (83, '2022_09_02_151343_create_coupon_category', 1);
INSERT INTO public.migrations VALUES (84, '2022_09_02_162532_create_user_privileges_table', 1);
INSERT INTO public.migrations VALUES (85, '2022_09_03_060222_create_product_temp_image', 1);
INSERT INTO public.migrations VALUES (86, '2022_09_03_093842_alter_product_attribute_change_attribute_type', 1);
INSERT INTO public.migrations VALUES (87, '2022_09_04_035948_create_admin_designation', 1);
INSERT INTO public.migrations VALUES (88, '2022_09_04_144626_create_cart_table', 1);
INSERT INTO public.migrations VALUES (89, '2022_09_05_073828_add_tax_percentage_to_settings_table', 1);
INSERT INTO public.migrations VALUES (90, '2022_09_05_094102_remove_unique_phone_from_users_table', 1);
INSERT INTO public.migrations VALUES (91, '2022_09_06_011715_create_orders', 1);
INSERT INTO public.migrations VALUES (92, '2022_09_08_010349_create_user_adresses_table', 1);
INSERT INTO public.migrations VALUES (93, '2022_09_08_024755_create_temp_order_products_table', 1);
INSERT INTO public.migrations VALUES (94, '2022_09_08_024821_create_temp_orders_table', 1);
INSERT INTO public.migrations VALUES (95, '2022_09_08_035231_alter_order_products', 1);
INSERT INTO public.migrations VALUES (96, '2022_09_08_042318_create_payment_report_table', 1);
INSERT INTO public.migrations VALUES (97, '2022_09_12_124711_drop_amount_type', 1);
INSERT INTO public.migrations VALUES (98, '2022_09_12_124846_amount_type', 1);
INSERT INTO public.migrations VALUES (99, '2022_09_13_043222_create_moda_main_categories_table', 1);
INSERT INTO public.migrations VALUES (100, '2022_09_13_043731_create_moda_sub_categories_table', 1);
INSERT INTO public.migrations VALUES (101, '2022_09_13_063112_create_hair_colors_table', 1);
INSERT INTO public.migrations VALUES (102, '2022_09_13_063148_create_skin_colors_table', 1);
INSERT INTO public.migrations VALUES (103, '2022_09_13_094928_alter_product_add_moda_categories', 1);
INSERT INTO public.migrations VALUES (104, '2022_09_13_100148_alter_users_add_extra', 1);
INSERT INTO public.migrations VALUES (105, '2022_09_14_052904_create_store_type_table', 1);
INSERT INTO public.migrations VALUES (106, '2022_09_14_072323_create_wallet_histories_table', 1);
INSERT INTO public.migrations VALUES (107, '2022_09_14_072738_alter_users_add_wallet_amount', 1);
INSERT INTO public.migrations VALUES (108, '2022_09_14_102301_create_my_moda_table', 1);
INSERT INTO public.migrations VALUES (109, '2022_09_14_104738_create_my_moda_items_table', 1);
INSERT INTO public.migrations VALUES (110, '2022_09_16_045220_create_post_saves_table', 1);
INSERT INTO public.migrations VALUES (111, '2022_09_17_060127_alter_posts_add_visibity', 1);
INSERT INTO public.migrations VALUES (112, '2022_09_19_041614_add_password_reset_code', 1);
INSERT INTO public.migrations VALUES (113, '2022_09_19_132546_create_help_table', 1);
INSERT INTO public.migrations VALUES (114, '2022_09_19_141934_add_land_mark', 1);
INSERT INTO public.migrations VALUES (115, '2022_09_20_094958_add_size_chart', 1);
INSERT INTO public.migrations VALUES (116, '2022_09_20_114010_add_store_type', 1);
INSERT INTO public.migrations VALUES (117, '2022_09_21_044300_alter_table_user_privileges_change_user_privileges', 1);
INSERT INTO public.migrations VALUES (118, '2022_09_21_063311_alter_post_add_extra_image_names', 1);
INSERT INTO public.migrations VALUES (119, '2022_09_23_125130_alter_table_store_type_change_banner_image', 1);
INSERT INTO public.migrations VALUES (120, '2022_09_23_135257_add_txt_location', 1);
INSERT INTO public.migrations VALUES (121, '2022_09_24_034810_add_approve', 1);
INSERT INTO public.migrations VALUES (122, '2022_10_10_144757_create_service_category', 1);
INSERT INTO public.migrations VALUES (123, '2022_10_11_053449_create_service', 1);
INSERT INTO public.migrations VALUES (124, '2022_10_22_112559_create_service_category_selected', 1);
INSERT INTO public.migrations VALUES (125, '2022_10_22_122802_drop_category_from_service', 1);
INSERT INTO public.migrations VALUES (126, '2022_10_25_030016_create_vendor_services_table', 1);
INSERT INTO public.migrations VALUES (127, '2022_10_25_051258_drop_area_from_vendor_details', 1);
INSERT INTO public.migrations VALUES (128, '2022_10_25_051355_add_area', 1);
INSERT INTO public.migrations VALUES (129, '2022_10_27_061349_drop_coupon', 1);
INSERT INTO public.migrations VALUES (130, '2022_10_27_062118_create_coupon', 1);
INSERT INTO public.migrations VALUES (131, '2022_10_27_063447_create_coupon_products', 1);
INSERT INTO public.migrations VALUES (132, '2022_10_27_071451_add_featured', 1);
INSERT INTO public.migrations VALUES (133, '2022_10_27_102343_add_user_permissions_column', 1);
INSERT INTO public.migrations VALUES (134, '2022_10_27_103447_add_password_reset_otp', 1);
INSERT INTO public.migrations VALUES (135, '2022_10_28_054725_add_pharmacycommission', 1);
INSERT INTO public.migrations VALUES (136, '2022_10_28_055919_add_featured_flag', 1);
INSERT INTO public.migrations VALUES (137, '2022_10_29_165317_create_product_master', 1);
INSERT INTO public.migrations VALUES (138, '2022_10_30_102118_add_master_product', 1);
INSERT INTO public.migrations VALUES (139, '2022_10_31_070219_create_likes', 1);
INSERT INTO public.migrations VALUES (140, '2022_10_31_072641_add_description', 1);
INSERT INTO public.migrations VALUES (141, '2022_11_02_050059_add_location', 1);
INSERT INTO public.migrations VALUES (142, '2022_11_02_052609_create_wallet_payment_report', 1);
INSERT INTO public.migrations VALUES (143, '2022_11_03_064022_create_ratings', 1);
INSERT INTO public.migrations VALUES (144, '2022_11_04_123322_create_featured_products', 1);
INSERT INTO public.migrations VALUES (145, '2022_11_04_123438_create_featured_products_img', 1);
INSERT INTO public.migrations VALUES (146, '2022_11_07_115737_create_cart_service', 1);
INSERT INTO public.migrations VALUES (147, '2022_11_09_042245_add_iban', 1);
INSERT INTO public.migrations VALUES (148, '2022_11_09_053111_create_contact_us', 1);
INSERT INTO public.migrations VALUES (149, '2022_11_10_052857_create_temp_service_orders', 1);
INSERT INTO public.migrations VALUES (150, '2022_11_10_053649_create_temp_service_order_items', 1);
INSERT INTO public.migrations VALUES (151, '2022_11_10_065916_create_orders_services_items', 1);
INSERT INTO public.migrations VALUES (152, '2022_11_10_071401_add_booking_date', 1);
INSERT INTO public.migrations VALUES (153, '2022_11_10_072709_create_orders_services', 1);
INSERT INTO public.migrations VALUES (154, '2022_11_10_074136_create_product_master_request', 1);
INSERT INTO public.migrations VALUES (155, '2022_11_10_120556_add_product_type', 1);
INSERT INTO public.migrations VALUES (156, '2022_11_10_121824_create_attribute_values_request', 1);
INSERT INTO public.migrations VALUES (157, '2022_11_11_043038_create_coupon_services', 1);
INSERT INTO public.migrations VALUES (158, '2022_11_11_100549_add_cover_image', 1);
INSERT INTO public.migrations VALUES (159, '2022_11_14_045017_add_pay_method', 1);
INSERT INTO public.migrations VALUES (160, '2022_11_17_040539_add_boxcount', 1);
INSERT INTO public.migrations VALUES (161, '2022_11_18_122709_add_is_muted', 1);
INSERT INTO public.migrations VALUES (162, '2022_11_19_070928_add_is_mute', 1);
INSERT INTO public.migrations VALUES (163, '2022_11_19_090748_add_accepted_vendor', 1);
INSERT INTO public.migrations VALUES (164, '2022_11_22_034939_add_user_type', 1);
INSERT INTO public.migrations VALUES (165, '2022_11_22_055216_create_orders_services_rejected', 1);
INSERT INTO public.migrations VALUES (166, '2022_11_23_044220_add_refund_method', 1);
INSERT INTO public.migrations VALUES (167, '2022_11_25_085834_add_refund_requested', 1);
INSERT INTO public.migrations VALUES (168, '2022_11_29_040327_add_order_no', 1);
INSERT INTO public.migrations VALUES (169, '2022_11_29_040445_add_order_nos', 1);
INSERT INTO public.migrations VALUES (170, '2022_12_23_113750_add_included_to_service_table', 1);
INSERT INTO public.migrations VALUES (171, '2022_12_23_130421_add_service_user_id_to_service', 1);
INSERT INTO public.migrations VALUES (172, '2022_12_26_091623_create_cleaning_services_table', 1);
INSERT INTO public.migrations VALUES (173, '2022_12_27_081044_add_building_type_to_service', 1);
INSERT INTO public.migrations VALUES (174, '2022_12_28_115650_add_service_type_to_service_table', 1);
INSERT INTO public.migrations VALUES (175, '2022_12_28_122912_add_contract_type_to_service_table', 1);
INSERT INTO public.migrations VALUES (176, '2023_01_04_000001_create_service_include_table', 1);
INSERT INTO public.migrations VALUES (177, '2023_01_04_000002_create_service_type_table', 1);
INSERT INTO public.migrations VALUES (178, '2023_01_05_000003_create_building_type_table', 1);
INSERT INTO public.migrations VALUES (179, '2023_01_05_000004_add_active_building-type', 1);
INSERT INTO public.migrations VALUES (180, '2023_01_05_000005_add_duration_service', 1);
INSERT INTO public.migrations VALUES (181, '2023_01_05_000006_add_building_type_service', 1);
INSERT INTO public.migrations VALUES (182, '2023_01_05_103804_add_time_to_service', 1);
INSERT INTO public.migrations VALUES (183, '2023_01_06_070205_add_document_to_service', 1);
INSERT INTO public.migrations VALUES (184, '2023_01_25_113910_create_contracting_table', 1);
INSERT INTO public.migrations VALUES (185, '2023_01_25_113942_create_maintainance_table', 1);
INSERT INTO public.migrations VALUES (186, '2023_01_26_071211_add_user_id_to_notification', 1);
INSERT INTO public.migrations VALUES (187, '2023_02_02_080127_add_booking_date_to_temp_service_order', 1);
INSERT INTO public.migrations VALUES (188, '2023_02_03_101419_change_city_id_to_building_type_id_to_cart_service', 1);
INSERT INTO public.migrations VALUES (189, '2023_02_09_065114_create_columns_in_contracting', 1);
INSERT INTO public.migrations VALUES (190, '2023_02_09_065153_create_columns_in_maintainance', 1);
INSERT INTO public.migrations VALUES (191, '2023_02_15_104221_create_price_to_contracting', 1);
INSERT INTO public.migrations VALUES (192, '2023_02_15_104241_create_price_to_maintainance', 1);
INSERT INTO public.migrations VALUES (193, '2023_02_21_115000_add_payment_columns_to_contracting_table', 1);
INSERT INTO public.migrations VALUES (194, '2023_02_21_131838_add_columns_to_maintainance_table', 1);
INSERT INTO public.migrations VALUES (195, '2023_03_21_064807_add_order_id', 1);
INSERT INTO public.migrations VALUES (196, '2023_03_23_035747_alter_service_change_description', 1);


--
-- Data for Name: moda_main_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moda_main_categories VALUES (1, 'Head', '2023-10-09 07:16:58', NULL);
INSERT INTO public.moda_main_categories VALUES (2, 'Upper Body', '2023-10-09 07:16:58', NULL);
INSERT INTO public.moda_main_categories VALUES (3, 'Lower Body', '2023-10-09 07:16:58', NULL);
INSERT INTO public.moda_main_categories VALUES (4, 'Footwear', '2023-10-09 07:16:58', NULL);
INSERT INTO public.moda_main_categories VALUES (5, 'Makeup', '2023-10-09 07:16:58', NULL);
INSERT INTO public.moda_main_categories VALUES (6, 'Accessories', '2023-10-09 07:16:58', NULL);


--
-- Data for Name: moda_sub_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: my_moda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: my_moda_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders_services; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders_services_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders_services_rejected; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: payment_report; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: post_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: post_saves; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: post_users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_attribute_values; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_docs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_master; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_master_request; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_selected_attribute_list; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_selected_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_specifications; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_temp_image; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_variations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service VALUES (3, 'Deep clean AC service', '16969221466524fa223de50.png', 350, 1, 0, 0, NULL, '2023-10-10 07:15:46', '2023-10-10 07:15:46', NULL, NULL, NULL, NULL, NULL, '30', 1, NULL, NULL);
INSERT INTO public.service VALUES (2, 'One hour', NULL, 30, 0, 0, 0, NULL, '2023-10-09 13:25:51', '2023-10-10 07:15:55', NULL, NULL, NULL, NULL, NULL, '30', 1, NULL, NULL);
INSERT INTO public.service VALUES (1, 'Home Nursing', '16968371656523ae2ddc27b.jpg', 100, 0, 0, 0, 'Home Nursing', '2023-10-09 07:39:25', '2023-10-10 07:15:58', NULL, NULL, NULL, NULL, NULL, '60', 1, NULL, NULL);
INSERT INTO public.service VALUES (4, 'Gas leak fix & refill', '16969222776524faa58f271.png', 450, 1, 0, 0, NULL, '2023-10-10 07:17:57', '2023-10-10 07:17:57', NULL, NULL, NULL, NULL, NULL, '80', 1, NULL, NULL);
INSERT INTO public.service VALUES (5, 'Shower installation (wall mounted/ hand-held)', '1696923687652500276348a.png', 280, 1, 0, 0, NULL, '2023-10-10 07:41:27', '2023-10-10 07:41:27', NULL, NULL, NULL, NULL, NULL, '55', 1, NULL, NULL);
INSERT INTO public.service VALUES (6, 'Floor mounted western toilet replacement', '16969238076525009feab58.png', 390, 1, 0, 0, NULL, '2023-10-10 07:43:27', '2023-10-10 07:43:27', NULL, NULL, NULL, NULL, NULL, '90', 1, NULL, NULL);
INSERT INTO public.service VALUES (7, 'Home Gardening', '1696923892652500f4c11a6.png', 890, 1, 0, 0, NULL, '2023-10-10 07:44:52', '2023-10-10 07:44:52', NULL, NULL, NULL, NULL, NULL, '120', 1, NULL, NULL);
INSERT INTO public.service VALUES (8, 'Commercial Space Painting', '1696924069652501a5ece60.png', 1500, 1, 0, 0, NULL, '2023-10-10 07:47:49', '2023-10-10 07:47:49', NULL, NULL, NULL, NULL, NULL, '180', 1, NULL, NULL);
INSERT INTO public.service VALUES (9, 'Fixing broken windows', '169692428065250278d7a49.png', 850, 1, 0, 0, NULL, '2023-10-10 07:51:20', '2023-10-10 07:51:20', NULL, NULL, NULL, NULL, NULL, '150', 1, NULL, NULL);


--
-- Data for Name: service_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service_category VALUES (1, 'Nursing', '16968369416523ad4d1af74.jpg', NULL, 0, 0, 1, 0, NULL, '2023-10-09 07:35:41', '2023-10-10 07:54:22');
INSERT INTO public.service_category VALUES (2, 'Daily', NULL, NULL, 1, 0, 1, 0, NULL, '2023-10-09 13:23:40', '2023-10-10 07:56:26');
INSERT INTO public.service_category VALUES (3, 'Painter', '1696924950652505165ffab.png', '16969213066524f6dada496.jpeg', 0, 1, 0, 0, NULL, '2023-10-10 07:01:46', '2023-10-10 08:02:30');
INSERT INTO public.service_category VALUES (4, 'Gardener', '1696925123652505c374f06.png', '16969213986524f7367e25f.jpg', 0, 1, 0, 0, NULL, '2023-10-10 07:03:18', '2023-10-10 08:05:23');
INSERT INTO public.service_category VALUES (5, 'Plumber', '1696925136652505d08c44a.png', '16969214796524f78745ded.jpg', 0, 1, 0, 0, NULL, '2023-10-10 07:04:39', '2023-10-10 08:05:36');
INSERT INTO public.service_category VALUES (6, 'Electrician', '1696925147652505dbd2b49.png', '16969216516524f833d247f.jpg', 0, 1, 0, 0, NULL, '2023-10-10 07:07:31', '2023-10-10 08:05:47');
INSERT INTO public.service_category VALUES (7, 'Handyman', '1696925157652505e5c86ba.png', '16969218326524f8e8bba58.jpg', 0, 1, 0, 0, NULL, '2023-10-10 07:10:32', '2023-10-10 08:05:57');


--
-- Data for Name: service_category_selected; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service_category_selected VALUES (2, 2, 2);
INSERT INTO public.service_category_selected VALUES (4, 1, 2);
INSERT INTO public.service_category_selected VALUES (5, 3, 6);
INSERT INTO public.service_category_selected VALUES (6, 4, 6);
INSERT INTO public.service_category_selected VALUES (7, 5, 5);
INSERT INTO public.service_category_selected VALUES (8, 6, 5);
INSERT INTO public.service_category_selected VALUES (9, 7, 4);
INSERT INTO public.service_category_selected VALUES (10, 8, 3);
INSERT INTO public.service_category_selected VALUES (11, 9, 7);


--
-- Data for Name: service_include; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.service_include VALUES (2, 1, 'gg', 'ngcjhfjh', '16968554736523f5b1d049e.jpg', '2023-10-09 12:47:21', '2023-10-09 12:47:21');


--
-- Data for Name: service_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.settings VALUES (1, 0, 0, NULL, NULL, 0);


--
-- Data for Name: skin_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_images; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_managers_types; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: store_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: temp_order_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: temp_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: temp_service_order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: temp_service_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_address; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_follows; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: user_privileges; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: users_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_role VALUES (1, 'admin', '2023-10-09 07:16:57', '2023-10-09 07:16:57');
INSERT INTO public.users_role VALUES (2, 'users', '2023-10-09 07:16:57', '2023-10-09 07:16:57');
INSERT INTO public.users_role VALUES (3, 'vendors', '2023-10-09 07:16:57', '2023-10-09 07:16:57');


--
-- Data for Name: vendor_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vendor_details VALUES (1, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2023-10-09 07:29:02', '2023-10-09 07:29:02', 1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO public.vendor_details VALUES (2, 0, '/uploads/company/652404c35f1e8_1696859331.jpg', 0, 0, 'ABCD LLP', NULL, NULL, NULL, '232', '2023-10-27 00:00:00', NULL, NULL, 'ar', '212', 'wewe', 0, 1, '87855', '/uploads/company/652404c35f34a_1696859331.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, '2023-10-09 13:48:51', '2023-10-11 05:17:43', 3, 3, 0, '57WH+VV - Downtown Dubai - Dubai - United Arab Emirates', '57WH+VV - Downtown Dubai - Dubai - United Arab Emirates', '25.1972295', '55.27974699999999', 'wewe', NULL, 10, 0, '10:00 AM', '12:00 PM', 'asasas', NULL);


--
-- Data for Name: vendor_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vendor_services VALUES (1, 3, 3, '2023-10-11 07:01:00', '2023-10-11 07:01:00');
INSERT INTO public.vendor_services VALUES (2, 3, 4, '2023-10-11 07:01:00', '2023-10-11 07:01:00');
INSERT INTO public.vendor_services VALUES (3, 3, 8, '2023-10-11 07:27:00', '2023-10-11 07:27:00');


--
-- Data for Name: wallet_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: wallet_payment_report; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: websockets_statistics_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: admin_designation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_designation_id_seq', 1, false);


--
-- Name: amount_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.amount_type_id_seq', 2, true);


--
-- Name: app_banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_banners_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, false);


--
-- Name: attribute_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attribute_type_id_seq', 4, true);


--
-- Name: attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attribute_values_id_seq', 1, false);


--
-- Name: attribute_values_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attribute_values_request_id_seq', 1, false);


--
-- Name: attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attributes_id_seq', 1, false);


--
-- Name: bank_code_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_code_types_id_seq', 3, true);


--
-- Name: bank_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_details_id_seq', 1, true);


--
-- Name: bank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_id_seq', 1, true);


--
-- Name: brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_id_seq', 1, false);


--
-- Name: building_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.building_type_id_seq', 1, true);


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_id_seq', 1, false);


--
-- Name: cart_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_service_id_seq', 1, false);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, false);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, true);


--
-- Name: cleaning_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cleaning_services_id_seq', 1, false);


--
-- Name: comment_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_likes_id_seq', 1, false);


--
-- Name: comment_taged_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_taged_users_id_seq', 1, false);


--
-- Name: contact_us_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_us_id_seq', 1, false);


--
-- Name: contact_us_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contact_us_settings_id_seq', 1, true);


--
-- Name: contracting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contracting_id_seq', 1, false);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 1, true);


--
-- Name: coupon_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_category_id_seq', 1, false);


--
-- Name: coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_id_seq', 1, false);


--
-- Name: coupon_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_products_id_seq', 1, false);


--
-- Name: coupon_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupon_services_id_seq', 1, true);


--
-- Name: designations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.designations_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faq_id_seq', 1, false);


--
-- Name: featured_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.featured_products_id_seq', 1, false);


--
-- Name: featured_products_img_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.featured_products_img_id_seq', 1, false);


--
-- Name: hair_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hair_colors_id_seq', 1, false);


--
-- Name: help_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.help_id_seq', 1, false);


--
-- Name: industry_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.industry_types_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: maintainance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maintainance_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 196, true);


--
-- Name: moda_main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moda_main_categories_id_seq', 6, true);


--
-- Name: moda_sub_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moda_sub_categories_id_seq', 1, false);


--
-- Name: my_moda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.my_moda_id_seq', 1, false);


--
-- Name: my_moda_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.my_moda_items_id_seq', 1, false);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- Name: order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_products_id_seq', 1, false);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- Name: orders_services_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_services_items_id_seq', 1, false);


--
-- Name: orders_services_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_services_order_id_seq', 1, false);


--
-- Name: orders_services_rejected_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_services_rejected_id_seq', 1, false);


--
-- Name: payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_report_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: post_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_comments_id_seq', 1, false);


--
-- Name: post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_likes_id_seq', 1, false);


--
-- Name: post_saves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_saves_id_seq', 1, false);


--
-- Name: post_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_users_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: product_attribute_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_attribute_attribute_id_seq', 1, false);


--
-- Name: product_attribute_values_attribute_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_attribute_values_attribute_values_id_seq', 1, false);


--
-- Name: product_category_product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_category_product_category_id_seq', 1, false);


--
-- Name: product_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_docs_id_seq', 1, false);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 1, false);


--
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_images_id_seq', 1, false);


--
-- Name: product_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_likes_id_seq', 1, false);


--
-- Name: product_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_master_id_seq', 1, false);


--
-- Name: product_master_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_master_request_id_seq', 1, false);


--
-- Name: product_selected_attribute_list_product_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_selected_attribute_list_product_attribute_id_seq', 1, false);


--
-- Name: product_selected_attributes_product_selected_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_selected_attributes_product_selected_attributes_id_seq', 1, false);


--
-- Name: product_specifications_prod_spec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_specifications_prod_spec_id_seq', 1, false);


--
-- Name: product_temp_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_temp_image_id_seq', 1, false);


--
-- Name: product_variations_product_variations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_variations_product_variations_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: service_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_category_id_seq', 7, true);


--
-- Name: service_category_selected_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_category_selected_id_seq', 11, true);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_id_seq', 9, true);


--
-- Name: service_include_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_include_id_seq', 2, true);


--
-- Name: service_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_type_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, true);


--
-- Name: skin_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skin_colors_id_seq', 1, false);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: store_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_images_id_seq', 1, false);


--
-- Name: store_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_likes_id_seq', 1, false);


--
-- Name: store_managers_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_managers_types_id_seq', 1, false);


--
-- Name: store_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_type_id_seq', 1, false);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stores_id_seq', 1, false);


--
-- Name: temp_order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temp_order_products_id_seq', 1, false);


--
-- Name: temp_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temp_orders_id_seq', 1, false);


--
-- Name: temp_service_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temp_service_order_items_id_seq', 1, false);


--
-- Name: temp_service_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temp_service_orders_id_seq', 1, false);


--
-- Name: user_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_address_id_seq', 1, false);


--
-- Name: user_follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_follows_id_seq', 1, false);


--
-- Name: user_privileges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_privileges_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: users_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_role_id_seq', 3, true);


--
-- Name: vendor_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendor_details_id_seq', 2, true);


--
-- Name: vendor_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendor_services_id_seq', 3, true);


--
-- Name: wallet_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wallet_histories_id_seq', 1, false);


--
-- Name: wallet_payment_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wallet_payment_report_id_seq', 1, false);


--
-- Name: websockets_statistics_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.websockets_statistics_entries_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

