SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE absence;
TRUNCATE auth_user;
TRUNCATE matiere_IR;
TRUNCATE table_IR;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$XlVHbFRSlWF4pAUqo8IUus$OckGxGVysZeatTczLGAmGOBMheU/wFJRxMin01x2CIU=', '2024-06-05 14:04:02.589357', 1, 'admin', '', '', 'admin@uha.fr', 1, 1, '2024-06-05 14:02:17.054212');