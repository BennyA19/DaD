#!/usr/bin/env python
# -*- coding: utf-8 -*-

#  Starten aus DaD/dad:
#  python manage.py  runscript db_import
#

Q_TITLES = "select * from titles " 

LATEST = " and latest = 1"

Q_DATA = """select pid, rev, latest, col1 as ipa, col2 as lang, 
         col3 as syl, col4 as stress, col5 as sampa,
         col6 as idx, col7 as comment, col8 as status
         from data_de where pid = '%s'"""

Q_MULTI =  "select * from multi_de  where pid = '%s' "

MULTI_COLREF = {1 : "ipa", 3 : "syllable", 4 : "stress",
                5 : "sampa"}

FORCE_DUPLICATE = False

import pandas as pd
import sqlite3

from django.db import DataError
from catalog.models import Word, IPA, Language

# DB_NAME = "./scripts/struct_2020-04-25.sqlite3"
DB_NAME = "./scripts/sqlite_db/struct_2020-11-24.sqlite3"

# Read sqlite query results into a pandas DataFrame
CON = sqlite3.connect(DB_NAME)
load_query = "SELECT * from data_de limit 1000"
# titles mit pid ranjoinen
#data_de = pd.read_sql_query(q_a_dur, con)


def get_titles(pid):
    where  =  ""
    # titles mit pid ranjoinen
    if pid != None:
        where = f" where pid = '{pid}'"
    query = Q_TITLES + where 
    # print(query)
    data = pd.read_sql_query(query, CON)
    return data


def get_data(pid):
    query = Q_DATA % pid + LATEST
    # print(query)
    data = pd.read_sql_query(query, CON)
    return data

def get_multi(pid):
    # titles mit pid ranjoinen
    query = Q_MULTI % pid + LATEST
    # print(query)
    data = pd.read_sql_query(query, CON)
    return data

def main(pid="de:A:A-Dur"):
    titles = get_titles(pid)
    for title in titles.itertuples():
        print(title.title, title.pid)
        wc = Word.objects.filter(entry=title.title).count()
        if not FORCE_DUPLICATE and wc > 0:
            print("continue: ", wc)
            continue
            # nächste pid
        data = get_data(title.pid)
        # print(data)
        for d in data.itertuples():
            # data_de: lang, entry, index
            # nur 1 Eintrag!     
            word = Word(entry=title.title, ipa=None, index=d.idx)
            # print(f"Lang:{d.lang}")
            # leer = deutsch
            if  d.lang == '':
                lang = None 
            else:
                lang, created = Language.objects.get_or_create(name=d.lang)
                # print(lang, created)
            word.save()
            word.language.add(lang)
            # print(word)
            ipas = get_multi(title.pid)
            # print(ipas)
            i_min = int(ipas["row"].min())
            i_max = int(ipas["row"].max()) + 1
            for i in range(i_min, i_max):
                ipa_data = ipas[ipas["row"] == i]
                # print("ipa", ipa_data)
                ipa = IPA(syllable=d.syl)
                for ipa_r in ipa_data.itertuples():
                    ipa.__dict__[MULTI_COLREF[ipa_r.colref]] = ipa_r.value
                ipa.save()
                word.default_ipa.add(ipa)
                # print(ipa)
            word.save()

#
# updated in Vergangenheit setzen
#
def delete_all():
    Language.objects.all().delete()
    IPA.objects.all().delete()
    Word.objects.all().delete()

#def run():
#    write_words()


