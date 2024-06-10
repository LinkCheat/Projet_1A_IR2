SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE absence;
TRUNCATE auth_user;
TRUNCATE matiere;
TRUNCATE eleve;
TRUNCATE note;
TRUNCATE seance;
TRUNCATE groupe;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `last_name`, `first_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$XlVHbFRSlWF4pAUqo8IUus$OckGxGVysZeatTczLGAmGOBMheU/wFJRxMin01x2CIU=', '2024-06-05 14:04:02.589357', 1, 'admin', '', '', 'admin@uha.fr', 1, 1, '2024-06-05 14:02:17.054212'),
(184, 'pbkdf2_sha256$390000$kLbWvz0EfhKBJ5zhEVi7zp$alZouMK+Hag54K9p96XfAbC2jpJTcFojVgnMQievwy8=', NULL, 0, '22304059', 'ABI-ISSI', 'ELIE', 'elie.abi-issi@uha.fr', 0, 1, '2024-06-06 08:55:10.782604'),
(185, 'pbkdf2_sha256$390000$K8AyNZzL3g4wgEc4oWoWxs$0IFjrMbU4XtIWpUqtQWW1auO4TQOisHORgSMxwMXfVw=', NULL, 0, '22104670', 'ANTROPIUS', 'SIMON', 'simon.antropius@uha.fr', 0, 1, '2024-06-06 08:55:10.975313'),
(186, 'pbkdf2_sha256$390000$ATCGUoO9hRqOcTpGAqnzrI$U6rzuxVkd5/Z1zWCDZeaL/t/WzXdBAUwJ5x6IRwedzE=', NULL, 0, '22304715', 'AUGEY', 'LOUIS', 'louis.augey@uha.fr', 0, 1, '2024-06-06 08:55:11.104177'),
(187, 'pbkdf2_sha256$390000$NrynMKCSC00ZGhASf0MPMu$bsi2134Jxiklle0z6spbThbNQWApY7sVUe5DfcjY424=', NULL, 0, '22305104', 'BAYA', 'HAMZA', 'hamza.baya@uha.fr', 0, 1, '2024-06-06 08:55:11.234353'),
(188, 'pbkdf2_sha256$390000$S9bXYkO6YvSBa28EPxMGaX$bUWkM1HXFqiAzyuyXHyNj47YHo1BsVlySqoC8S7j4vM=', NULL, 0, '22204595', 'BENCHAHBOUN', 'RIM', 'rim.benchahboun@uha.fr', 0, 1, '2024-06-06 08:55:11.360908'),
(189, 'pbkdf2_sha256$390000$RGqjf6IUdsN9ZoRKyzXey1$j2H+8wur1W6OTNkK8CoUqwtbGL6a/KduarHhS9ampGM=', NULL, 0, '22104745', 'BEN-CHARNIA', 'SIRINE', 'sirine.ben-charnia@uha.fr', 0, 1, '2024-06-06 08:55:11.485879'),
(190, 'pbkdf2_sha256$390000$0hKWQtIrKOfmiijwwasz9P$gi9/mf/2j52UVPX9kWgVSXfQJRUu54Be1MZ7vAopny0=', NULL, 0, '22303556', 'BERNARDI', 'NICOLAS', 'nicolas.bernardi@uha.fr', 0, 1, '2024-06-06 08:55:11.613683'),
(191, 'pbkdf2_sha256$390000$8YArZXNvP3njXNQZzywXxa$UZ3TrG6sEZS5B0kbIgWxzyfHY85O1o148hcMatQTkro=', NULL, 0, '22104710', 'BOMBA', 'ROMAIN', 'romain.bomba@uha.fr', 0, 1, '2024-06-06 08:55:11.776312'),
(192, 'pbkdf2_sha256$390000$8qsByBK3Ldf3euqZnLiuUQ$lMd6zVCfX7sHmZdUG+7QF1o0X7uyqXhde57HMxZKx+E=', NULL, 0, '22304466', 'BOUARAB', 'LIZA', 'liza.bouarab@uha.fr', 0, 1, '2024-06-06 08:55:11.903411'),
(193, 'pbkdf2_sha256$390000$zLlf6kyuumNj0l5WOgb0bN$cP2hLVWZASyye+bFM2i6m9KsMk4byq8Zt8DplZDywuE=', NULL, 0, '22304010', 'BOURICHI', 'IKRAM', 'ikram.bourichi@uha.fr', 0, 1, '2024-06-06 08:55:12.029493'),
(194, 'pbkdf2_sha256$390000$yJMcy2qfC5RENNKEoSEPq5$Qc4oPrwP4seNZ3W0syDq+TdUCtJSuKWl8uqEA2AVagM=', NULL, 0, '22303900', 'CARBON', 'BENJAMIN', 'benjamin.carbon@uha.fr', 0, 1, '2024-06-06 08:55:12.157336'),
(195, 'pbkdf2_sha256$390000$PIFj4wddV7ofZtLjFSxber$Jzbd+FUQ1iCsFfRusaA8Xk3pAXgIzxz5QxhByZk7KGg=', NULL, 0, '22304669', 'CHAABANE', 'MEJDA', 'mejda.chaabane@uha.fr', 0, 1, '2024-06-06 08:55:12.283566'),
(196, 'pbkdf2_sha256$390000$cVsJDGY7f92l9j244bsrqg$6uiRsgDV0ctelByRjmtjzAsNWQbrnIxpRAiM9uwASJc=', NULL, 0, '22304463', 'CHOUAF', 'MEHDI', 'mehdi.chouaf@uha.fr', 0, 1, '2024-06-06 08:55:12.410899'),
(197, 'pbkdf2_sha256$390000$TqOi8BftPUvzgp2CSCdrMB$gKAfU3Hsrgr4qe0/rhiq1kQquUZ8AQ/WiKBKsKc4zFQ=', NULL, 0, '22104716', 'DESMONTEIX', 'MAXENCE', 'maxence.desmonteix@uha.fr', 0, 1, '2024-06-06 08:55:12.537484'),
(198, 'pbkdf2_sha256$390000$FXOKIQqbY4ZCHGuXSO9Nwg$CODof4aEBj/aUe64scxPyxYZ+MQw09UOcH4vOABAjCQ=', NULL, 0, '22304105', 'DOUARD', 'EVAN', 'evan.douard@uha.fr', 0, 1, '2024-06-06 08:55:12.664438'),
(199, 'pbkdf2_sha256$390000$Ee02q5SxmHMqGMujW5Kpdu$LQfZeUs349BPjUEY2/bjP9LhlfbOiWKNYazcHKZEPDs=', NULL, 0, '22304137', 'EL-MOUJARRADE', 'DOUAE', 'douae.el-moujarrade@uha.fr', 0, 1, '2024-06-06 08:55:12.790902'),
(200, 'pbkdf2_sha256$390000$zE2D9kY6BE6i8VX5eE93JH$rN7BcnwOtuX7g2iMErKLkPziJy0LUd9e8ce2lvWtXfM=', NULL, 0, '21901399', 'ERTZER', 'LUDOVIC', 'ludovic.ertzer@uha.fr', 0, 1, '2024-06-06 08:55:12.917988'),
(201, 'pbkdf2_sha256$390000$g0YGLQVH0Hz79PNVFqVNoS$c7vnV5aya7tDTnYu1NMM9tiU5OK7/hm0QnYLL2vcetI=', NULL, 0, '22104720', 'ESSLINGER', 'HARRY', 'harry.esslinger@uha.fr', 0, 1, '2024-06-06 08:55:13.045400'),
(202, 'pbkdf2_sha256$390000$MEFhdnVxElY9oTUJc1xvcG$gO17kzVL842nVZPwbXk1EQHtJqqAsGlZJAsCDD6v7qk=', NULL, 0, '22000139', 'FADLALLAH', 'MOHAMED AMINE', 'mohamed amine.fadlallah@uha.fr', 0, 1, '2024-06-06 08:55:13.173765'),
(203, 'pbkdf2_sha256$390000$3BSeqORPTCqc17XUK6gvR9$RFeZQrJohcKvcj/Ob1nmq6GYVR22Mv9S9+VMk72sMFE=', NULL, 0, '22303866', 'GACHA', 'MOHAMED', 'mohamed.gacha@uha.fr', 0, 1, '2024-06-06 08:55:13.299304'),
(204, 'pbkdf2_sha256$390000$TPFruBaXUsBJU0tudJDZGU$39YpdGTPigS7TyiPZIX+FTnJTBfe9eBWq+FD8hfkKs4=', NULL, 0, '22304055', 'GAILLOT', 'ALBAN', 'alban.gaillot@uha.fr', 0, 1, '2024-06-06 08:55:13.426873'),
(205, 'pbkdf2_sha256$390000$8GAYKch1vCTN7eqJnRvbAg$BheqQE3QDON0qfKHjg33j/BdehCZiquYrtWAr0asDSI=', NULL, 0, '22304023', 'GAUTHERET', 'ARNAUD', 'arnaud.gautheret@uha.fr', 0, 1, '2024-06-06 08:55:13.553541'),
(206, 'pbkdf2_sha256$390000$FmNaz1Tqtxryp5MT8Poe9T$f/PriU9+miAi9cvrhvCuwSi6MMAKgFUh6HVLtXrrs9M=', NULL, 0, '22104756', 'GIRARDAT', 'QUENTIN', 'quentin.girardat@uha.fr', 0, 1, '2024-06-06 08:55:13.680950'),
(207, 'pbkdf2_sha256$390000$HKNR9RvZUaoYRho2HSw00s$ylUOFN59vHa80Qd6D13j9t9Bh5gEsyN1u1+DDfZVSig=', NULL, 0, '22304779', 'HAMDANE', 'WISSAM', 'wissam.hamdane@uha.fr', 0, 1, '2024-06-06 08:55:13.806591'),
(208, 'pbkdf2_sha256$390000$9L1DgyBlO18rEcz6djsTlp$qN5K9KbHlY+vB9OB+vDVi4B041eJSpyfxkHgsjXlkAg=', NULL, 0, '22303994', 'IBRAHIM', 'ALEXIS', 'alexis.ibrahim@uha.fr', 0, 1, '2024-06-06 08:55:13.932710'),
(209, 'pbkdf2_sha256$390000$ROM4qyCHEdocnMGu5izm3y$wMTbKfLSr8NQMTxjtHZHTPcgP31eSPgQNC9e/Gn9R04=', NULL, 0, '22304145', 'JABRI', 'FADWA', 'fadwa.jabri@uha.fr', 0, 1, '2024-06-06 08:55:14.060262'),
(210, 'pbkdf2_sha256$390000$6n2SUzqq0iBupXed30ZyYF$2S0GedOMNy3HJjtrNq4M7FvVH3kcFAl+qlxwe6TSQtQ=', NULL, 0, '22303899', 'KEMICHA', 'DORRA', 'dorra.kemicha@uha.fr', 0, 1, '2024-06-06 08:55:14.187637'),
(211, 'pbkdf2_sha256$390000$I4NGVyqyTkzKnenXS1spWO$GGVc6FqGkXrLmxNZ4QOhzJGtvGneTWnCHCZUSeRyHYs=', NULL, 0, '22303681', 'KOUIRI', 'OUSSAMA', 'oussama.kouiri@uha.fr', 0, 1, '2024-06-06 08:55:14.314323'),
(212, 'pbkdf2_sha256$390000$Ep3EUV9uzrxgrVXJ54SGOw$aTdczt09ydDnqkxfhMwEHOJsN8uFU9ppMNBPsX+eIzU=', NULL, 0, '22304369', 'LAHARGOUE', 'MATTHIS', 'matthis.lahargoue@uha.fr', 0, 1, '2024-06-06 08:55:14.440236'),
(213, 'pbkdf2_sha256$390000$IMbLEpMJvI2P8tpMssYpG6$PAx99g0e4MlOg5rDbApxvglndhs64muBg2SSZZ6QFIM=', NULL, 0, '22304768', 'LAMOUALDA', 'SALMA', 'salma.lamoualda@uha.fr', 0, 1, '2024-06-06 08:55:14.567255'),
(214, 'pbkdf2_sha256$390000$d6veehqvqAX5FxxIu8YmQr$VU+aYGvDJ5HTQMW7W8YFVG5hFtreJJo8h3nKj8B3VXI=', NULL, 0, '22304479', 'LOUSSOUARN', 'QUENTIN', 'quentin.loussouarn@uha.fr', 0, 1, '2024-06-06 08:55:14.694042'),
(215, 'pbkdf2_sha256$390000$JZFmGWk9qbtxmwLn9xMoQo$aemt4gC2MsAAX5v1pmZrkOgsSaVLAki0KR6lQHmlTP8=', NULL, 0, '22304117', 'MURRIS', 'VICTOR', 'victor.murris@uha.fr', 0, 1, '2024-06-06 08:55:14.848300'),
(216, 'pbkdf2_sha256$390000$KsDHYdOA0g8wRIOGxBKqdC$LJ+adEewhiIev26TLV7t26NeNqprBSiRS3ivj5HIN+Y=', NULL, 0, '22304830', 'NABAT', 'SALAH-EDDINE', 'salah-eddine.nabat@uha.fr', 0, 1, '2024-06-06 08:55:14.976546'),
(217, 'pbkdf2_sha256$390000$vjB3XBvy0vxKOhf8ZGu0JZ$GQ2Nnwk5zDmlCzMkOrHQwskHz9nwJyrlsSUsWjvTKQI=', NULL, 0, '22303917', 'NAJJI', 'AYA', 'aya.najji@uha.fr', 0, 1, '2024-06-06 08:55:15.103278'),
(218, 'pbkdf2_sha256$390000$cHUnZxriOHy3JxDANG5nlt$WdwA/vkVGn5IlPo39UQF88Dq2nNR9mwcteR4QVA/K58=', NULL, 0, '22304141', 'OUIDIR', 'NASSIM', 'nassim.ouidir@uha.fr', 0, 1, '2024-06-06 08:55:15.231544'),
(219, 'pbkdf2_sha256$390000$B8mqBA7WPhlHuFTNU1OTMr$wV3qkjQbcsYXyBgyRJj3ob0Yb8JbCfCexU3xOJ8bk5w=', NULL, 0, '22304412', 'OUMALOUL', 'ZYAD', 'zyad.oumaloul@uha.fr', 0, 1, '2024-06-06 08:55:15.359179'),
(220, 'pbkdf2_sha256$390000$FzwdwGx12LmqPEwRcX4vPS$4xjeoXtrkFYsO+WOz3AntQNGn2iXCzjAALdh9HX3dc8=', NULL, 0, '22001266', 'PRAVEDNYI', 'OLEG', 'oleg.pravednyi@uha.fr', 0, 1, '2024-06-06 08:55:15.487670'),
(221, 'pbkdf2_sha256$390000$9eQQJ2HyBExXM7Pxxl09pT$T3h3OXKGAIrvhbSIiF1BW/rTS1LrTMb9jL8uXl1Ayyk=', NULL, 0, '22304051', 'ROCHDI', 'YOUSSEF', 'youssef.rochdi@uha.fr', 0, 1, '2024-06-06 08:55:15.614157'),
(222, 'pbkdf2_sha256$390000$4pzFOkrpoGI5xUeVMJFGBR$hbVdUHOQWaI79Ljslf2YNqmybkuMMUCbDq4nsaGWOKk=', NULL, 0, '22304185', 'ROUTIER', 'REMI', 'remi.routier@uha.fr', 0, 1, '2024-06-06 08:55:15.741273'),
(223, 'pbkdf2_sha256$390000$LOr5fp3LZCTQIPds03eG3I$xjfIWaJOkFnLggY5Fz3tRfeOIc2Q2R0wtxdAzF4Ox1g=', NULL, 0, '22304902', 'SANCIAUME', 'MAXIME', 'maxime.sanciaume@uha.fr', 0, 1, '2024-06-06 08:55:15.869179'),
(224, 'pbkdf2_sha256$390000$576iAhOiillIWR11KBhkXA$fKk14aR59mvnHZSWDMHu+IvM+70QEpeDTh9keA3OaxE=', NULL, 0, '22104728', 'SENECHAL', 'LOUIS', 'louis.senechal@uha.fr', 0, 1, '2024-06-06 08:55:15.996213'),
(225, 'pbkdf2_sha256$390000$EvFNkBXEZnc0h2SufUhBXJ$BsBMfj/H1wmwnAb7/Z25Fx5A1hKI+fQoKcAS3HZ0DJI=', NULL, 0, '22304815', 'SOUKHRATI', 'MAROUANE', 'marouane.soukhrati@uha.fr', 0, 1, '2024-06-06 08:55:16.122896'),
(226, 'pbkdf2_sha256$390000$dB3CGlvxrslwyIKC1ZsUNy$uu5euri5yQBWmgxt+mUSK7sMHex+tBgK7zZe8A8m6Yo=', NULL, 0, '22304339', 'TAGHOULT-OUNMIR', 'AMRAN', 'amran.taghoult-ounmir@uha.fr', 0, 1, '2024-06-06 08:55:16.250030'),
(227, 'pbkdf2_sha256$390000$5RQxyF9oExmB8YzhDbrs0g$JRAUOXs2jaMJwQu1GR4yriEasvfw2qXHe1Ga/co3eXs=', NULL, 0, '22204535', 'THIAM-MAME', 'YACINE', 'yacine.thiam-mame@uha.fr', 0, 1, '2024-06-06 08:55:16.377726'),
(228, 'pbkdf2_sha256$390000$2KAWmJoH3PNvamCfgelMFG$90sYlgdpSQhYJKaysp8VLcTlevNG/qyxdchRI/TZ+sM=', NULL, 0, '22304054', 'TIEMTORE', 'CLOVIS', 'clovis.tiemtore@uha.fr', 0, 1, '2024-06-06 08:55:16.505012'),
(229, 'pbkdf2_sha256$390000$l6pdfspcEwwFTkqx84P5iT$ZXniwbz6oSF9jJ7tw6U+XwnAu+YZb4v059Bsa/yNFD4=', NULL, 0, '22303904', 'VANGU', 'ERWAN', 'erwan.vangu@uha.fr', 0, 1, '2024-06-06 08:55:16.631232'),
(230, 'pbkdf2_sha256$390000$Ne3vq9ET7SnH4qhWJ0rmPZ$bfnDpd1J7ZLF1x2GNfTvCmJo1WMnOYJ8QwNNeGL816w=', NULL, 0, '22303848', 'WURTZ', 'PERRINE', 'perrine.wurtz@uha.fr', 0, 1, '2024-06-06 08:55:16.756843'),
(231, 'pbkdf2_sha256$390000$ituUXhoKGxuZLM7PbiWZTx$7Xi3gIeeSXFiDRNzr6GgBAAWPZBKGkCSwsrblYMegxU=', NULL, 0, '1', 'DION', 'Joel', 'joel.dion@uha.fr', 0, 1, '2024-06-06 08:55:16.883753'),
(232, 'pbkdf2_sha256$390000$k455IzLd6iwiNPzRcFaXrB$sPG34d1JNDblT+1IP2QT61r4EkqwslXlJMDrPSlzUa0=', NULL, 0, '2', 'ANICIC', 'Sylvia', 'sylvia.anicic@uha.fr', 0, 1, '2024-06-06 08:55:17.008937'),
(233, 'pbkdf2_sha256$390000$M8zxoWM9hr9GjxS7QPLFfO$mXlAqHQnIQg/SHAYT6qH+egsW3FFHQ3I51uEJ6CAXQQ=', NULL, 0, '3', 'THIRY', 'Laurent', 'laurent.thiry@uha.fr', 0, 1, '2024-06-06 08:55:17.134951'),
(234, 'pbkdf2_sha256$390000$hwTRwdpzccIk7eh999a7aG$OcM1M6rYQMhUrEBrfDJmjrCpfj5UF9on0b+Ls/lUHwY=', NULL, 0, '4', 'STUDER', 'Philippe', 'philippe.studer@uha.fr', 0, 1, '2024-06-06 08:55:17.261184'),
(235, 'pbkdf2_sha256$390000$julHnc3JYfitUVa4GulVVl$SQjMnl/W2PF3c9+O5hpHxG5QQUAY4q5b2Zswh3nxHTw=', NULL, 0, '5', 'FORESTIER', 'Germain', 'germain.forestier@uha.fr', 0, 1, '2024-06-06 08:55:17.388600'),
(236, 'pbkdf2_sha256$390000$cQMvcMhbeKxIk8B2Z3A5y7$SnIFUqgCDanSL3N5J7TY4U4CkYpl++TBT0cdo88xOlw=', NULL, 0, '6', 'HILT', 'Benoit', 'benoit.hilt@uha.fr', 0, 1, '2024-06-06 08:55:17.513506'),
(237, 'pbkdf2_sha256$390000$i0EBmPx7yl8hERWUgtPo9f$uq8aQ89sJKyrG5Lx3zcpHEThcRPivKGNNLYTEF5xE8k=', NULL, 0, '7', 'HAYE', 'Ludovic', 'ludovic.haye@uha.fr', 0, 1, '2024-06-06 08:55:17.640051'),
(238, 'pbkdf2_sha256$390000$0B8jFK7e0jvspPQ3GhvbFU$C6T6bYt+kxJ1TQNyQQCsaNX0EMSbnolzoIG67MGWFI4=', NULL, 0, '8', 'VIGOUROUX', 'Christian', 'christian.vigouroux@uha.fr', 0, 1, '2024-06-06 08:55:17.767948'),
(239, 'pbkdf2_sha256$390000$8gjVDrb2Wyahe25alDtVvD$ndeB6Ihn74WuVHSCBqfWJtn83d9LHsMAQjdMVTBvbKE=', NULL, 0, '9', 'RUMA', 'Corinne', 'corinne.ruma@uha.fr', 0, 1, '2024-06-06 08:55:17.895824'),
(240, 'pbkdf2_sha256$390000$ncxnQgre9shmc2mElKKFyk$lVF4LNHouoEt9CSH4TGv/NrLHopb4/nxJ+Q2fHxs1Lo=', NULL, 0, '10', 'GEYER', 'Cyril', 'cyril.geyer@uha.fr', 0, 1, '2024-06-06 08:55:18.022235'),
(241, 'pbkdf2_sha256$390000$Y8bHEanceFWuk60WRHrEmN$NXg2oGMTxhX5bU0XGwUmahNX2z1EaYp7Jtf70VZm8Ik=', NULL, 0, '11', 'WEBER', 'Jonathan', 'jonathan.weber@uha.fr', 0, 1, '2024-06-06 08:55:18.152539');

INSERT INTO `matiere` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('IR-5.1', 'Immersion', 'S5', 4, 'IR_UE1_Fondamentaux_S5', 70, 231),
('IR-5.2.1', 'Mathématiques discrètes I', 'S5', 2, 'IR_UE2_Analyse_S5', 20, 232),
('IR-5.2.2', 'Mathématiques discrètes II', 'S5', 2, 'IR_UE2_Analyse_S5', 24, 233),
('IR-5.2.3', 'Mathématiques et signal', 'S5', 2, 'IR_UE2_Analyse_S5', 28, 234),
('IR-5.2.4', 'Programmation fonctionnelle & preuves', 'S5', 2, 'IR_UE2_Analyse_S5', 20, 235),
('IR-5.3.1', 'Architecture des ordinateurs', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 10, 236),
('IR-5.3.2', 'ICG', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 26, 7),
('IR-5.3.3', 'Découverte des Réseaux', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 25, 238),
('IR-5.3.4', 'Unix commandes de base', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 24, 239),
('IR-5.3.5', 'Systèmes d’exploitation', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30, 240),
('IR-5.3.6', 'Algorithmie et structures de données-C', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 30, 231),
('IR-5.4.1', 'Technologies WEB I', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, 232),
('IR-5.4.2', 'Technologies WEB II', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, 233),
('IR-5.4.3', 'Programmation WEB', 'S5', 2, 'IR_UE1_Fondamentaux_S5', 20, 234),
('IR-5.5.1', 'Recherche bibliographique', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, 235),
('IR-5.5.2', 'Communiquer et présenter un projet', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 2, 236),
('IR-5.5.3', 'Analyse de la valeur', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, 237),
('IR-5.5.4', 'Projet Professionnel/Connaissance de soi', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 8, 238),
('IR-5.5.5', 'CV/Lettre de motivation', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 4, 239),
('IR-5.5.6', 'Français - Projet Voltaire (en ligne)', 'S5', 1, 'IR_UE1_Fondamentaux_S5', 6, 240),
('IR-5.6.1', 'Anglais', 'S5', 2, 'LV', 24, 231),
('IR-6.1', 'Maths générales', 'S6', 4, 'IR_UE1_Maths_S6', 80, 232),
('IR-6.1.1', 'Calcul matriciel', 'S6', 1, 'IR_UE1_Maths_S6', 10, 233),
('IR-6.1.2', 'Analyse générale', 'S6', 1, 'IR_UE1_Maths_S6', 10, 234),
('IR-6.1.3', 'Statistiques et systèmes stochastiques', 'S6', 1, 'IR_UE1_Maths_S6', 28, 235),
('IR-6.1.4', 'Analyse numérique et calcul scientifique', 'S6', 1, 'IR_UE1_Maths_S6', 20, 236),
('IR-6.1.5', 'Projet', 'S6', 1, 'IR_UE1_Maths_S6', 12, 237),
('IR-6.2', 'Ingénierie objet', 'S6', 6, 'IR_UE2_Objets_S6', 76, 238),
('IR-6.2.1', 'AOO & langage Java', 'S6', 2, 'IR_UE2_Objets_S6', 32, 239),
('IR-6.2.2', 'UML', 'S6', 2, 'IR_UE2_Objets_S6', 24, 240),
('IR-6.2.3', 'Projet', 'S6', 2, 'IR_UE2_Objets_S6', 20, 231),
('IR-6.3', 'Données', 'S6', 4, 'IR_UE2_Data_S6', 62, 232),
('IR-6.3.1', 'SGBD', 'S6', 2, 'IR_UE2_Data_S6', 28, 233),
('IR-6.3.2', 'BI', 'S6', 2, 'IR_UE2_Data_S6', 34, 234),
('IR-7.1', 'Programmation système', 'S7', 5, 'IR_UE1_System_S7', 82, 235),
('IR-7.1.1', 'Théorie des langages', 'S7', 1, 'IR_UE1_System_S7', 24, 236),
('IR-7.1.2', 'Programmation système (API Unix)', 'S7', 1, 'IR_UE1_System_S7', 20, 237),
('IR-7.1.3', 'Langage C++', 'S7', 1, 'IR_UE1_System_S7', 38, 238),
('IR-7.2', 'Ingénierie Logicielle I', 'S7', 6, 'IR_UE1_Logiciel_S7', 86, 239),
('IR-7.2.1', 'Génie logiciel', 'S7', 1, 'IR_UE1_Logiciel_S7', 20, 240),
('IR-7.2.2', 'Industrialisation logicielle', 'S7', 1, 'IR_UE1_Logiciel_S7', 22, 231),
('IR-7.2.3', 'Architectures à objets et Design Pattern', 'S7', 1, 'IR_UE1_Logiciel_S7', 20, 232),
('IR-7.2.4', 'Architecture des IHM', 'S7', 1, 'IR_UE1_Logiciel_S7', 24, 233),
('IR-8.1', 'Ingénierie des langages et modèles', 'S8', 8, 'IR_UE1_Langages_S8', 94, 234),
('IR-8.1.1', 'Réseaux (architecture, protocole, programmation)', 'S8', 2, 'IR_UE1_Langages_S8', 26, 235),
('IR-8.1.2', 'Compilation', 'S8', 2, 'IR_UE1_Langages_S8', 28, 236),
('IR-8.1.3', 'Représentation et analyse de documents', 'S8', 2, 'IR_UE1_Langages_S8', 20, 237),
('IR-8.1.4', 'Eco-conception', 'S8', 2, 'IR_UE1_Langages_S8', 20, 238),
('IR-8.2', 'Science des données II', 'S8', 9, 'IR_UE2_Data_S8', 92, 239),
('IR-8.2.1', 'IA/Optimisation', 'S8', 2, 'IR_UE2_Data_S8', 10, 240),
('IR-8.2.2', 'Cloud Computing', 'S8', 2, 'IR_UE2_Data_S8', 30, 231),
('IR-8.2.3', 'Deep Learning I', 'S8', 2, 'IR_UE2_Data_S8', 24, 232),
('IR-8.2.4', 'Mathématiques pour les datasciences', 'S8', 2, 'IR_UE2_Data_S8', 28, 233);

INSERT INTO `note` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`) VALUES
(184, 'IR-5.1', 15.50, '2024-06-10', 'Partiel', 'Très bien'),
(185, 'IR-5.2.1', 12.00, '2024-06-11', 'TP', 'Peut mieux faire'),
(186, 'IR-5.2.2', 8.00, '2024-06-12', 'Partiel', 'À améliorer'),
(187, 'IR-5.2.3', 17.00, '2024-06-13', 'Partiel', 'Excellent'),
(188, 'IR-5.2.4', 11.00, '2024-06-14', 'TP', 'Moyen'),
(189, 'IR-5.3.1', 14.00, '2024-06-15', 'Partiel', 'Bien fait'),
(190, 'IR-5.3.2', 13.00, '2024-06-16', 'TP', 'Correct'),
(191, 'IR-5.3.3', 16.00, '2024-06-17', 'Partiel', 'Très bon'),
(192, 'IR-5.3.4', 10.00, '2024-06-18', 'TP', 'Insuffisant'),
(193, 'IR-5.3.5', 18.00, '2024-06-19', 'Partiel', 'Parfait'),
(194, 'IR-6.1', 9.00, '2024-06-20', 'TP', 'Passable'),
(195, 'IR-6.2', 16.00, '2024-06-21', 'Partiel', 'Impressionnant'),
(196, 'IR-6.3', 14.00, '2024-06-22', 'TP', 'Bon travail'),
(197, 'IR-7.1', 6.00, '2024-06-23', 'Partiel', 'Réviser'),
(198, 'IR-7.2', 19.00, '2024-06-24', 'Partiel', 'Presque parfait'),
(199, 'IR-8.1', 13.00, '2024-06-25', 'TP', 'Solide'),
(200, 'IR-8.2', 7.50, '2024-06-26', 'Partiel', 'À concentrer'),
(201, 'IR-6.1.1', 10.00, '2024-06-27', 'TP', 'Moyen'),
(202, 'IR-6.1.2', 12.50, '2024-06-28', 'Partiel', 'Adéquat'),
(203, 'IR-6.1.4', 17.50, '2024-06-30', 'Partiel', 'Très haut niveau');

INSERT INTO `groupe` (`COL 2`) VALUES
('A1_IR'),
('A1_IR_TD1'),
('A1_IR_TD2'),
('A1_IR_TP1'),
('A1_IR_TP2'),
('A1_IR_TP3');

INSERT INTO `groupe_id_students` (`grouptptd_id`, `user_id`) VALUES
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(1, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 204),
(1, 205),
(1, 206),
(1, 207),
(1, 208),
(1, 209),
(1, 210),
(1, 211),
(1, 212),
(1, 213),
(1, 214),
(1, 215),
(1, 216),
(1, 217),
(1, 218),
(1, 219),
(1, 220),
(1, 221),
(1, 222),
(1, 223),
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(1, 229),
(1, 230),
(2, 184),
(3, 185),
(2, 186),
(3, 187),
(2, 188),
(3, 189),
(2, 190),
(3, 191),
(2, 192),
(3, 193),
(2, 194),
(3, 195),
(2, 196),
(3, 197),
(2, 198),
(3, 199),
(2, 200),
(3, 201),
(2, 202),
(3, 203),
(2, 204),
(3, 205),
(2, 206),
(3, 207),
(2, 208),
(3, 209),
(2, 210),
(3, 211),
(2, 212),
(3, 213),
(2, 214),
(3, 215),
(2, 216),
(3, 217),
(2, 218),
(3, 219),
(2, 220),
(3, 221),
(2, 222),
(3, 223),
(2, 224),
(3, 225),
(2, 226),
(3, 227),
(2, 228),
(3, 229),
(2, 230),
(4, 184),
(5, 185),
(6, 186),
(4, 187),
(5, 188),
(6, 189),
(4, 190),
(5, 191),
(6, 192),
(4, 193),
(5, 194),
(6, 195),
(4, 196),
(5, 197),
(6, 198),
(4, 199),
(5, 200),
(6, 201),
(4, 202),
(5, 203),
(6, 204),
(4, 205),
(5, 206),
(6, 207),
(4, 208),
(5, 209),
(6, 210),
(4, 211),
(5, 212),
(6, 213),
(4, 214),
(5, 215),
(6, 216),
(4, 217),
(5, 218),
(6, 219),
(4, 220),
(5, 221),
(6, 222),
(4, 223),
(5, 224),
(6, 225),
(4, 226),
(5, 227),
(6, 228),
(4, 229),
(5, 230);

INSERT INTO `eleve` (`COL 1`, `COL 2`, `COL 3`) VALUES
(184, 2, 4),
(185, 3, 5),
(186, 2, 6),
(187, 3, 4),
(188, 2, 5),
(189, 3, 6),
(190, 2, 4),
(191, 3, 5),
(192, 2, 6),
(193, 3, 4),
(194, 2, 5),
(195, 3, 6),
(196, 2, 4),
(197, 3, 5),
(198, 2, 6),
(199, 3, 4),
(200, 2, 5),
(201, 3, 6),
(202, 2, 4),
(203, 3, 5),
(204, 2, 6),
(205, 3, 4),
(206, 2, 5),
(207, 3, 6),
(208, 2, 4),
(209, 3, 5),
(210, 2, 6),
(211, 3, 4),
(212, 2, 5),
(213, 3, 6),
(214, 2, 4),
(215, 3, 5),
(216, 2, 6),
(217, 3, 4),
(218, 2, 5),
(219, 3, 6),
(220, 2, 4),
(221, 3, 5),
(222, 2, 6),
(223, 3, 4),
(224, 2, 5),
(225, 3, 6),
(226, 2, 4),
(227, 3, 5),
(228, 2, 6),
(229, 3, 4),
(230, 2, 5);

INSERT INTO `seance` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('IR-6.2.1', 1, '2024-06-10', '08:00', '10:00', 'E25', 'CM'),
('IR-6.2.2', 1, '2024-06-10', '10:00', '12:00', 'E25', 'CM'),
('IR-6.3.1', 4, '2024-06-10', '14:00', '18:00', 'PC_4', 'TP'),
('IR-6.3.2', 5, '2024-06-10', '14:00', '18:00', 'PC_3', 'TP'),
('IR-6.1.5', 6, '2024-06-10', '14:00', '18:00', 'PC_MASTER', 'TP'),
('IR-6.3.1', 5, '2024-06-11', '08:00', '12:00', 'PC_4', 'TP'),
('IR-6.3.2', 6, '2024-06-11', '08:00', '12:00', 'PC_3', 'TP'),
('IR-6.1.5', 4, '2024-06-11', '08:00', '12:00', 'PC_MASTER', 'TP'),
('IR-6.3.1', 6, '2024-06-11', '14:00', '18:00', 'PC_4', 'TP'),
('IR-6.3.2', 4, '2024-06-11', '14:00', '18:00', 'PC_3', 'TP'),
('IR-6.1.5', 5, '2024-06-11', '14:00', '18:00', 'PC_MASTER', 'TP');

INSERT INTO `absence` (`COL 1`, `COL 2`, `COL 3`) VALUES
( 209, 1, 'Rendez-vous médical'),
( 210, 1, 'Urgence familiale'),
( 211, 1, 'Congé maladie'),
( 212, 1, 'Problèmes de transport'),
( 213, 1, 'Raisons personnelles'),
( 214, 1, 'Rendez-vous médical'),
( 215, 1, 'Urgence familiale'),
( 216, 2, 'Congé maladie'),
( 217, 2, 'Problèmes de transport'),
( 218, 2, 'Raisons personnelles'),
( 219, 2, 'Rendez-vous médical'),
( 220, 2, 'Problèmes de transport'),
( 221, 2, 'Raisons personnelles');