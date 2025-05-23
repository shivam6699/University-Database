PGDMP  
            	        }            universitydatabase    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16466    universitydatabase    DATABASE     �   CREATE DATABASE universitydatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 "   DROP DATABASE universitydatabase;
                     postgres    false            �            1259    16522    courses    TABLE     �   CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_name character varying(100),
    department_id integer,
    professor_id integer,
    credits integer
);
    DROP TABLE public.courses;
       public         heap r       postgres    false            �            1259    16507    departments    TABLE     t   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100)
);
    DROP TABLE public.departments;
       public         heap r       postgres    false            �            1259    16532    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    enrollment_date date,
    grade character varying(5)
);
    DROP TABLE public.enrollments;
       public         heap r       postgres    false            �            1259    16512 
   professors    TABLE     �   CREATE TABLE public.professors (
    professor_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    phone character varying(20)
);
    DROP TABLE public.professors;
       public         heap r       postgres    false            �            1259    16527    students    TABLE       CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(100),
    last_name character varying(100),
    email character varying(100),
    phone character varying(20),
    date_of_birth date,
    enrollment_date date,
    department_id integer
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �          0    16522    courses 
   TABLE DATA           _   COPY public.courses (course_id, course_name, department_id, professor_id, credits) FROM stdin;
    public               postgres    false    219   �       �          0    16507    departments 
   TABLE DATA           E   COPY public.departments (department_id, department_name) FROM stdin;
    public               postgres    false    217   1       �          0    16532    enrollments 
   TABLE DATA           c   COPY public.enrollments (enrollment_id, student_id, course_id, enrollment_date, grade) FROM stdin;
    public               postgres    false    221   �       �          0    16512 
   professors 
   TABLE DATA           W   COPY public.professors (professor_id, first_name, last_name, email, phone) FROM stdin;
    public               postgres    false    218          �          0    16527    students 
   TABLE DATA           �   COPY public.students (student_id, first_name, last_name, email, phone, date_of_birth, enrollment_date, department_id) FROM stdin;
    public               postgres    false    220   �       5           2606    16526    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public                 postgres    false    219            1           2606    16511    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public                 postgres    false    217            9           2606    16536    enrollments enrollments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public                 postgres    false    221            3           2606    16516    professors professors_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (professor_id);
 D   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pkey;
       public                 postgres    false    218            7           2606    16531    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    220            �   j   x�340�tI,ILJ,NU�,.I�-�4B.C#N��ԢĒ̼t9c��1'TD�%�83=����&`��s*K2��9�8M�:L9�3��K3K@B@����� 9�"M      �   G   x�3�t��-(-I-RN�L�KN�2�t�IM.)�LN�Qp�K��KM-��K�2��M,�H�M,�L.����� �?�      �   v   x�M��1���ػ>f�"���X�\,�i �ơ6���8�0
���\�]�I"��M�q��V��r�!}v����f'��>e��0�Y�1�������M�{��""o�E"w      �   �   x�E���0Dg�c�Hboe�R��]R5����jZ��IOw��-i�����e��ɯ��w�:��TM�¡0y�ě��2����	S��L�j�4�ML�p6�] $��ml6Q�oLA�k)�A�$r9�      �   �   x����
�0�ϛw��Ǩ�yz���K��]�-���ۻI�O���@>f�DC������C0f{�{ڄvm�ܺ��T�K]IU%��a�F�c����*�3�@��F��v��)�}>���9�{��Vl9�c���'Y�����#=J\Lq�߿qa�����Bڊ=��	5�)��Mq�Cze�v=��������iz�����.n��"����+�mq��F���+     