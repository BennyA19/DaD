#!/usr/bin/env python
# -*- coding: utf-8 -*-

#  Starten aus DaD/dad:
#  python manage.py  runscript db_import


import pandas as pd
import sqlite3

from django.db import DataError
from  catalog.models import Word, IPA, Language

# DB_NAME = "./scripts/struct_2020-04-25.sqlite3"
DB_NAME = "./scripts/sqlite_db/struct_2020-11-24.sqlite3"

# Read sqlite query results into a pandas DataFrame
con = sqlite3.connect(DB_NAME)
load_query = "SELECT * from data_de limit 1000"
# titles mit pid ranjoinen
data_de = pd.read_sql_query(load_query, con)

# def run():

def write_words():
    print(f"Anzahl {data_de.size}: Starte Import!")
    for w in data_de.itertuples():
    # wort vorher suchen -> Tabelle über pid gruppieren
        entry = w.pid.split(":")[2]
        # print(_entry)
        # IPA kommt aus multi.de!
        ipa = IPA(ipa=str(w.col1), syllable=str(w.col3), stress=str(w.col4),
                  sampa=str(w.col5))
        # col6 = index
        try:
            ipa.save()
        except DataError: 
            print("Fehler bei IPA anlegen!")
            print("bei Zeile: ", w)
        lang_name = w.col2
        #
        # Wie zeigt sich eine M:N-Relation mit Language?
        #
        print(f"Lang:{lang_name}")
        # leer = deutsch
        if  lang_name == '':
            lang=None
        else:
            try:
                lang = Language.objects.get(name=str(w.col2))
            except:
                lang = Language(name=str(w.col2))
                lang.save()
        w = Word(entry=entry, ipa=ipa)
        w.save() # create ID
        w.language.add(lang)
        w.save()
    print("Import abgeschlossen")

#
# updated in Vergangenheit setzen
#
def delete_all():
    Language.objects.all().delete()
    IPA.objects.all().delete()
    Word.objects.all().delete()

#def run():
#    write_words()


