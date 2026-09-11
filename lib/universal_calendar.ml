type feast = {rank : Rank.t}

(*
UNIVERSAL_FEASTS = {
    1: {
        2: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saints Basil the Great and Gregory Nazianzen, Bishops and Doctors",
                commons=["pastors:bishop:several", "doctors"],
            )
        ],
        3: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="The Most Holy Name of Jesus",
                commons=[],  # There is no propers for this, you only take what is in the day.
            )
        ],
        7: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Raymond of Penyafort, Priest",
                commons=["pastors:priest"],
            )
        ],
        13: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Hilary of Poitiers, Bishop and Doctor of the Church",
                commons=["pastors:bishop", "doctors"],
            )
        ],
        17: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Anthony of Egypt, Abbot",
                commons=["men_religious"],
            )
        ],
        20: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Fabian, Pope and Martyr",
                commons=["one_martyr", "pastors:pope"],
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Sebastian, Martyr",
                commons=["one_martyr"],
            ),
        ],
        21: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Agnes, Virgin and Martyr",
                commons=["one_martyr", "virgins"],
            )
        ],
        22: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Vincent, Deacon and Martyr",
                commons=["one_martyr"],
            )
        ],
        24: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Francis de Sales, Bishop and Doctor of the Church",
                commons=["pastors:bishop", "doctors"],
            )
        ],
        25: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                name="The Conversion of Saint Paul the Apostle",
                commons=["apostles"],
            )
        ],
        26: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saints Timothy and Titus, Bishops",
                commons=["pastors:bishops"],
            )
        ],
        27: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Angela Merici, Virgin",
                commons=["virgins"],
            )
        ],
        28: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Thomas Aquinas, Priest and Doctor of the Church",
                commons=["doctors"],
            )
        ],
        31: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint John Bosco, Priest",
                commons=["pastors:priest"],
            )
        ],
    },
    2: {
        2: [
            Feast(
                rank=Rank.FEAST_LORD_GENERAL,
                name="The Presentation of the Lord",
                commons=[],
            )
        ],
        3: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Blase, Bishop and Martyr",
                commons=["one_martyr", "pastors:bishop"],
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Ansgar, Bishop",
                commons=["pastors:bishop"],
            ),
        ],
        5: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Agatha, Virgin and Martyr",
                commons=["one_martyr", "virgins"],
            )
        ],
        6: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saints Paul Miki and Companions, Martyrs",
                commons=["several_martyrs"],
            )
        ],
        8: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Jerome Emiliani, Priest",
                commons=["holy_men:teachers"],
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Josephine Bakhita, Virgin",
                commons=["virgins"],
            ),
        ],
        10: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Scholastica, Virgin",
                commons=["virgins"],
            )
        ],
        11: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Our Lady of Lourdes",
                commons=["blessed_virgin_mary"],
            )
        ],
        14: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saints Cyril, Monk, and Methodius, Bishop",
                commons=["pastors:multiple"],
            )
        ],
        17: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Seven Holy Founders of the Servite Order",
                commons=["holy_men:religious"],
            )
        ],
        21: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Peter Damian, Bishop and Doctor of the Church",
                commons=["pastors:bishop", "doctors"],
            )
        ],
        22: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                name="Chair of Saint Peter, Apostle",
                commons=["apostles"],
            )
        ],
        23: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Polycarp, Bishop and Martyr",
                commons=["one_martyr", "pastors:bishop"],
            )
        ],
        27: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Gregory of Narek, Abbot and Doctor of the Church",
                commons=["holy_men:religious", "doctors"],
            )
        ],
    },
    3: {
        4: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, name="Saint Casimir", commons=["holy_men"]
            )
        ],
        7: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saints Perpetua and Felicity, Martyrs",
                commons=["several_martyrs"],
            )
        ],
        8: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint John of God, Religious",
                commons=["holy_men:religious", "underprivileged"],
            )
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Frances of Rome, Religious",
                commons=["holy_women:religious"],
            )
        ],
        17: [
            Feast(rank=Rank.OPTIONAL_MEMORIAL, name="Saint Patrick, Bishop", commons=[])
        ],
        18: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Cyril of Jerusalem, Bishop and Doctor of the Church",
                commons=[],
            )
        ],
        19: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                name="Saint Joseph Spouse of the Blessed Virgin Mary",
                commons=["holy_men"],
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Turibius of Mogrovejo, Bishop",
                commons=[],
            )
        ],
        25: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL, name="Annunciation of the Lord", commons=[]
            )
        ],
    },
    4: {
        2: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Francis of Paola, Hermit",
                commons=["holy_men:religious"],
            )
        ],
        4: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Isidore, Bishop and Doctor of the Church",
                commons=["pastors:bishop", "doctors"],
            )
        ],
        5: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Vincent Ferrer, Priest",
                commons=["pastors:priest"],
            )
        ],
        7: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint John Baptist de la Salle, Priest",
                commons=["pastors:priest", "holy_men:teachers"],
            )
        ],
        11: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Stanislaus, Bishop and Martyr",
                commons=["one_martyr", "pastors:bishop"],
            )
        ],
        13: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Martin I, Pope and Martyr",
                commons=["one_martyr", "pastors:pope"],
            )
        ],
        21: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Anselm of Canterbury, Bishop and Doctor of the Church",
                commons=["pastors:bishop", "doctors"],
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint George, Martyr",
                commons=["one_martyr:easter"],
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Adalbert, Bishop and Martyr",
                commons=["one_martyr:easter", "pastors:bishop"],
            ),
        ],
        24: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Fidelis of Sigmaringen, Priest and Martyr",
                commons=["one_martyr:easter", "pastors:priest"],
            )
        ],
        25: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                name="Saint Mark the Evangelist",
                commons=["apostles:easter"],
            )
        ],
        28: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Peter Chanel, Priest and Martyr",
                commons=["one_martyr:easter"],
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Louis Grignon de Montfort, Priest",
                commons=[""],
            ),
        ],
        29: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                name="Saint Catherine of Siena, Virgin and Doctor of the Church",
                commons=["virgins"],
            )
        ],
        30: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                name="Saint Pius V, Pope",
                commons=["pastors:pope"],
            )
        ],
    },
    5: {
        1: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint Joseph the Worker"
            )
        ],
        2: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:bishops", "doctors"],
                name="Saint Athanasius, Bishop and Doctor of the Church",
            )
        ],
        3: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["apostles:easter"],
                name="Saints Philip and James, Apostles",
            )
        ],
        10: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "doctors"],
                name="Saint John De Avila, Priest and Doctor of the Church",
            )
        ],
        12: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saints Nereus and Achilleus, Martyrs",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["one_martyr"],
                name="Saint Pancras, Martyr",
            ),
        ],
        13: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="Our Lady of Fatima",
            )
        ],
        14: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["apostles"],
                name="Saint Matthias the Apostle",
            )
        ],
        18: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["one_martyr", "pastors:pope"],
                name="Saint John I, Pope and Martyr",
            )
        ],
        20: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint Bernardine of Siena, Priest",
            )
        ],
        21: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saint Christopher Magallanes and Companions, Martyrs",
            )
        ],
        22: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_women:religious"],
                name="Saint Rita of Cascia",
            )
        ],
        25: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["doctors", "holy_men:religious"],
                name="Saint Bede the Venerable, Priest and Doctor of the Church",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:pope"],
                name="Saint Gregory VII, Pope",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["virgins", "holy_women:religious"],
                name="Saint Mary Magdalene de Pazzi, Virgin",
            ),
        ],
        26: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint Philip Neri, Priest",
            )
        ],
        27: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop"],
                name="Saint Augustine of Canterbury, Bishop",
            )
        ],
        29: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:pope"],
                name="Saint Paul VI, pope",
            )
        ],
        31: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Visitation of the Blessed Virgin Mary",
            )
        ],
    },
    6: {
        1: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["one_martyr"],
                name="Saint Justin Martyr",
            )
        ],
        2: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saints Marcellinus and Peter, Martyrs",
            )
        ],
        3: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["several_martyrs"],
                name="Saints Charles Lwanga and Companions, Martyrs",
            )
        ],
        5: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["one_martyr", "pastors:bishop"],
                name="Saint Boniface, Bishop and Martyr",
            )
        ],
        6: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop"],
                name="Saint Norbert, Bishop",
            )
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["doctors"],
                name="Saint Ephrem, Deacon and Doctor of the Church",
            )
        ],
        11: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["apostles"],
                name="Saint Barnabas the Apostle",
            )
        ],
        13: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest", "doctors", "holy_men:religious"],
                name="Saint Anthony of Padua, Priest and Doctor of the Church",
            )
        ],
        19: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men:religious"],
                name="Saint Romuald, Abbot",
            )
        ],
        21: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["holy_men:religious"],
                name="Saint Aloysius Gonzaga, Religious",
            )
        ],
        22: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop"],
                name="Saint Paulinus of Nola, Bishop",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saints John Fisher, Bishop, and Thomas More, Martyrs",
            ),
        ],
        24: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                commons=["holy_men"],
                name="Birth of Saint John the Baptist",
            )
        ],
        27: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Cyril of Alexandria, Bishop and Doctor of the Church",
            )
        ],
        28: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["one_martyr", "pastors:bishop", "doctors"],
                name="Saint Irenaeus, Bishop, Martyr, and Doctor of the Church",
            )
        ],
        29: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                commons=["apostles"],
                name="Saints Peter and Paul, Apostles",
            )
        ],
        30: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="First Martyrs of the Holy Roman Church",
            )
        ],
    },
    7: {
        3: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["apostles"],
                name="Saint Thomas the Apostle",
            )
        ],
        4: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_women:underprivileged"],
                name="Saint Elizabeth of Portugal",
            )
        ],
        5: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "holy_men:teachers", "holy_men:religious"],
                name="Saint Anthony Zaccaria, Priest",
            )
        ],
        6: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["one_martyr", "virgins"],
                name="Saint Maria Goretti, Virgin and Martyr",
            )
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saint Augustine Zhao Rong and Companions, Martyrs",
            )
        ],
        11: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["holy_men:religious"],
                name="Saint Benedict, Abbot",
            )
        ],
        13: [
            Feast(rank=Rank.OPTIONAL_MEMORIAL, commons=["holy_men"], name="Saint Henry")
        ],
        14: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men:underprivileged"],
                name="Saint Camillus de Lellis, Priest",
            )
        ],
        15: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Bonaventure, Bishop and Doctor of the Church",
            )
        ],
        16: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="Our Lady of Mount Carmel",
            )
        ],
        20: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop", "one_martyr"],
                name="Saint Apollinaris, Bishop and Martyr",
            )
        ],
        21: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "doctors"],
                name="Saint Lawrence of Brindisi, Priest and Doctor of the Church",
            )
        ],
        22: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["holy_women"],
                name="Saint Mary Magdalene",
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_women:religious"],
                name="Saint Bridget, Religious",
            )
        ],
        24: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint Sharbel Makhluf, Priest",
            )
        ],
        25: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["apostles"],
                name="Saint James, Apostle",
            )
        ],
        26: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["holy_men"],
                name="Saints Joachim and Anne, Parents of the Blessed Virgin Mary",
            )
        ],
        29: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["holy_men"],
                name="Saints Martha, Mary and Lazarus",
            )
        ],
        30: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Peter Chrysologus, Bishop and Doctor of the Church",
            )
        ],
        31: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint Ignatius of Loyola, Priest",
            )
        ],
    },
    8: {
        1: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Alphonsus Maria de Liguori, Bishop and Doctor of the Church",
            )
        ],
        2: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop"],
                name="Saint Eusebius of Vercelli, Bishop",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest"],
                name="Saint Peter Julian Eymard, Priest",
            ),
        ],
        4: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest"],
                name="Saint Jean Vianney, Priest",
            )
        ],
        5: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="Dedication of the Basilica of Saint Mary Major",
            )
        ],
        6: [
            Feast(
                rank=Rank.FEAST_LORD_GENERAL,
                commons=[""],
                name="Transfiguration of the Lord",
            )
        ],
        7: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs"],
                name="Saint Sixtus II, Pope, and Companions, Martyrs",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest"],
                name="Saint Cajetan, Priest",
            ),
        ],
        8: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint Dominic, Priest",
            )
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["virgins", "one_martyr"],
                name="Teresa Benedicta of the Cross (Edith Stein), Virgin and Martyr",
            )
        ],
        10: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["one_martyr"],
                name="Saint Lawrence, Deacon and Martyr",
            )
        ],
        11: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["virgins", "holy_women:religious"],
                name="Saint Clare, Virgin",
            )
        ],
        12: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men:religious"],
                name="Saint Jane Frances de Chantal, Religious",
            )
        ],
        13: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["several_martyrs", "pastors:several"],
                name="Saints Pontian, Pope, and Hippolytus, Priest, Martyrs",
            )
        ],
        14: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest", "one_martyr"],
                name="Saint Maximilian Mary Kolbe, Priest and Martyr",
            )
        ],
        15: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Assumption of the Blessed Virgin Mary",
            )
        ],
        16: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men"],
                name="Saint Stephen of Hungary",
            )
        ],
        19: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:priest", "holy_men:religious"],
                name="Saint John Eudes, Priest",
            )
        ],
        20: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["doctors", "holy_men:religious"],
                name="Saint Bernard of Clairvaux, Abbot and Doctor of the Church",
            )
        ],
        21: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:pope"],
                name="Saint Pius X, Pope",
            )
        ],
        22: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Queenship of Blessed Virgin Mary",
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["virgins", "holy_women:religious"],
                name="Saint Rose of Lima, Virgin",
            )
        ],
        24: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["apostles"],
                name="Saint Bartholomew the Apostle",
            )
        ],
        25: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=["holy_men"], name="Saint Louis"
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men:teachers", "pastors:priest"],
                name="Saint Joseph of Calasanz, Priest",
            ),
        ],
        27: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL, commons=["holy_women"], name="Saint Monica"
            )
        ],
        28: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Augustine of Hippo, Bishop and Doctor of the Church",
            )
        ],
        29: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["one_martyr"],
                name="The Passion of Saint John the Baptist",
            )
        ],
    },
    9: {
        3: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:pope", "doctors"],
                name="Saint Gregory the Great, Pope and Doctor of the Church",
            )
        ],
        8: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Birth of the Blessed Virgin Mary",
            )
        ],
        12: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="The Most Holy Name of the Mary",
            )
        ],
        13: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint John Chrysostom, Bishop and Doctor of the Church",
            )
        ],
        14: [
            Feast(
                rank=Rank.FEAST_LORD_GENERAL,
                commons=[],
                name="The Exaltation of the Holy Cross",
            )
        ],
        15: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Our Lady of Sorrows",
            )
        ],
        16: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:???", "several_martyrs"],
                name="Saints Cornelius, Pope, and Cyprian, Bishop, Martyrs",
            )
        ],
        17: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop", "doctors"],
                name="Saint Robert Bellarmine, Bishop and Doctor of the Church",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["???"],
                name="Saint Hildegard of Bingen, Virgin and Doctor of the Church",
            ),
        ],
        19: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop", "one_martyr"],
                name="Saint Januarius, Bishop and Martyr",
            )
        ],
        20: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Andrew Kim Taegon, Priest, and Paul Chong Hasang and Companions, Martyrs",
            )
        ],
        21: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=[],
                name="Saint Matthew the Evangelist, Apostle, Evangelist",
            )
        ],
        23: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Pio of Pietrelcina, Priest",
            )
        ],
        26: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saints Cosmas and Damian, Martyrs",
            )
        ],
        27: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Vincent de Paul, Priest",
            )
        ],
        28: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint Wenceslaus, Martyr"
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saints Lawrence Ruiz and Companions, Martyrs",
            ),
        ],
        29: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=[],
                name="Saints Michael, Gabriel and Raphael, Archangels",
            )
        ],
        30: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Jerome, Priest and Doctor of the Church",
            )
        ],
    },
    10: {
        1: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Thérèse of the Child Jesus, Virgin and Doctorof the Church",
            )
        ],
        2: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL, commons=[], name="The Holy Guardian Angels"
            )
        ],
        4: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL, commons=[], name="Saint Francis of Assisi"
            )
        ],
        5: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Faustina Kowalska, Virgin",
            )
        ],
        6: [Feast(rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint Bruno, Priest")],
        7: [
            Feast(rank=Rank.MEMORIAL_GENERAL, commons=[], name="Our Lady of the Rosary")
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Denis and Companions, Martyrs",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint John Leonardi, Priest",
            ),
        ],
        11: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint John XXIII, Pope"
            )
        ],
        14: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Callistus I, Pope and Martyr",
            )
        ],
        15: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Teresa of Jesus, Virgin and Doctor of the Church",
            )
        ],
        16: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint Hedwig, Religious"
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Margaret Mary Alacoque, Virgin",
            ),
        ],
        17: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Ignatius of Antioch, Bishop and Martyr",
            )
        ],
        18: [
            Feast(rank=Rank.FEAST_GENERAL, commons=[], name="Saint Luke the Evangelist")
        ],
        22: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint John Paul II, Pope"
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint John of Capistrano, Priest",
            )
        ],
        24: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Anthony Mary Claret, Bishop",
            )
        ],
        28: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=[],
                name="Saint Simon and Saint Jude, Apostles",
            )
        ],
    },
    11: {
        1: [Feast(rank=Rank.SOLEMNITY_GENERAL, commons=[], name="All Saints")],
        2: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                commons=[],
                name="The Commemoration of All the Faithful Departed (All Souls)",
            )
        ],
        3: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Martin de Porres, Religious",
            )
        ],
        4: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Charles Borromeo, Bishop",
            )
        ],
        9: [
            Feast(
                rank=Rank.FEAST_LORD_GENERAL,
                commons=[],
                name="Dedication of the Lateran Basilica",
            )
        ],
        10: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Leo the Great, Pope and Doctor of the Church",
            )
        ],
        11: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Martin of Tours, Bishop",
            )
        ],
        12: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Josaphat, Bishop and Martyr",
            )
        ],
        15: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Albert the Great, Bishop and Doctor of the Church",
            )
        ],
        16: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Margaret of Scotland",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Gertrude the Great, Virgin",
            ),
        ],
        17: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Elizabeth of Hungary, Religious",
            )
        ],
        18: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Dedication of the Basilicas of Saints Peter and Paul, Apostles",
            )
        ],
        21: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Presentation of the Blessed Virgin Mary",
            )
        ],
        22: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Cecilia, Virgin and Martyr",
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Clement I, Pope and Martyr",
            ),
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Columban, Religious",
            ),
        ],
        24: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=[],
                name="Saint Andrew Dung Lac, Priest, and Companions, Martyrs",
            )
        ],
        25: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Catherine of Alexandria",
            )
        ],
        30: [
            Feast(rank=Rank.FEAST_GENERAL, commons=[], name="Saint Andrew the Apostle")
        ],
    },
    12: {
        3: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["pastors:priest"],
                name="Saint Francis Xavier, Priest",
            )
        ],
        4: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["doctors"],
                name="Saint John Damascene, Priest and Doctor of the Church",
            )
        ],
        6: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:bishop"],
                name="Saint Nicholas, Bishop",
            )
        ],
        7: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["doctors"],
                name="Saint Ambrose, Bishop and Doctor of the Church",
            )
        ],
        8: [
            Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                commons=["blessed_virgin_mary"],
                name="Immaculate Conception of the Blessed Virgin Mary",
            )
        ],
        9: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["holy_men"],
                name="Saint Juan Diego Cuauhtlatoatzin",
            )
        ],
        10: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="Our Lady of Loreto",
            )
        ],
        11: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["pastors:pope"],
                name="Saint Damasus I, Pope",
            )
        ],
        12: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=["blessed_virgin_mary"],
                name="Our Lady of Guadalupe",
            )
        ],
        13: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["virgins", "one_martyr"],
                name="Saint Lucy of Syracuse, Virgin and Martyr",
            )
        ],
        14: [
            Feast(
                rank=Rank.MEMORIAL_GENERAL,
                commons=["doctors", "pastors:priest"],
                name="Saint John of the Cross, Priest and Doctor of the Church",
            )
        ],
        21: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Peter Canisius, Priest and Doctorof the Church",
            )
        ],
        23: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint John of Kanty, Priest",
            )
        ],
        26: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=[],
                name="Saint Stephen, the First Martyr",
            )
        ],
        27: [
            Feast(
                rank=Rank.FEAST_GENERAL,
                commons=[],
                name="Saint John the Apostle and Evangelist",
            )
        ],
        28: [
            Feast(
                rank=Rank.FEAST_GENERAL, commons=[], name="The Holy Innocents, Martyrs"
            )
        ],
        29: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL,
                commons=[],
                name="Saint Thomas Becket, Bishop and Martyr",
            )
        ],
        31: [
            Feast(
                rank=Rank.OPTIONAL_MEMORIAL, commons=[], name="Saint Sylvester I, Pope"
            )
        ],
    },
}

UNIVERSAL_YEAR_TRANSFERS = {
    2008: [
        Transfer(
            original_date=datetime.date(2008, 3, 19),
            transfered_date=datetime.date(2008, 3, 15),
            feast=Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                name="Saint Joseph Spouse of the Blessed Virgin Mary",
                commons=["holy_men"],
            ),
            has_vespers_1=True,
            has_vespers_2=False,
        )
    ],
    2022: [
        Transfer(
            original_date=datetime.date(2022, 6, 24),
            transfered_date=datetime.date(2022, 6, 23),
            feast=Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                name="Birth of Saint John the Baptist",
                commons=["holy_men"],
            ),
            has_vespers_1=True,
            has_vespers_2=False,
        )
    ],
    # No official word yet but what happens in 2022 happens in 2033. TODO -- Check when the calendar comes out.
    # If this is an official rule, move to temporale.
    2033: [
        Transfer(
            original_date=datetime.date(2033, 6, 24),
            transfered_date=datetime.date(2033, 6, 23),
            feast=Feast(
                rank=Rank.SOLEMNITY_GENERAL,
                name="Birth of Saint John the Baptist",
                commons=["holy_men"],
            ),
            has_vespers_1=True,
            has_vespers_2=False,
        )
    ],
    # TODO -- 2038 Corpus Christi is on 24th of June when not transferred.
}
*)
