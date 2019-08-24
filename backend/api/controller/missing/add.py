# import pymysql
from app import app
from db import mysql
import json
from flask import jsonify
from flask import flash, request
from werkzeug.security import generate_password_hash, check_password_hash
from flask_cors import CORS
import time
from utils.utils import not_found, create_session, calculate_age, verify_session




def missing_add():
    try:
        # print(request.form.getlist())
        _fname = request.form.getlist("fname")[0]
        _lname = request.form.getlist("lname")[0]
        _alias = request.form.getlist("alias")[0]
        _gender = request.form.getlist("gender")[0]
        _age = request.form.getlist("age")[0]
        _address = request.form.getlist("address")[0]
        _city = request.form.getlist("city")[0]
        _nationality = request.form.getlist("nationality")[0]
        _lang = request.form.getlist("languages_known")[0]
        _height = request.form.getlist("height")[0]
        _weight = request.form.getlist("weight")[0]
        _identifications = request.form.getlist("identifications")[0]
        _eye_color = request.form.getlist("eye_color")[0]
        _skin_color = request.form.getlist("skin_color")[0]
        _hair_color = request.form.getlist("hair_color")[0]
        _conditions = request.form.getlist("conditions")[0]
        _medications = request.form.getlist("medications")[0]
        _prescribed_by = request.form.getlist("prescribed_by")[0]
        _med_hist = request.form.getlist("med_hist")[0]
        _other_med = request.form.getlist("other_med")[0]
        _fam_phone = request.form.getlist("fam_phone")[0]
        _pol_phone = request.form.getlist("pol_phone")[0]
        _pol_address = request.form.getlist("pol_address")[0]
        _skey = request.form.getlist("skey")[0]
        _uid = request.form.getlist("uid")[0]
        _date_created = int(time.time())

        # validate the received values
        if _uid and _skey and _fname and _date_created and _pol_phone and _pol_address and verify_session(_skey, _uid) and request.method == "POST":
            # save edits
            sql = "INSERT INTO missing(fname, lname, alias, gender, age, address, city, nationality, languages_known, height, weight, identifications, eye_color, skin_color, hair_color, conditions, medications, prescribed_by, med_hist, other_med, fam_phone, pol_phone, pol_address, uid, date_created) VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"
            data = (_fname, _lname, _alias, _gender, _age, _address, _city, _nationality, _lang, _height, _weight, _identifications, _eye_color, _skin_color, _hair_color, _conditions, _medications, _prescribed_by, _med_hist, _other_med, _fam_phone, _pol_phone, _pol_address, _uid, _date_created)
            conn = mysql.connect()
            cursor = conn.cursor()
            cursor.execute(sql, data)
            # print(rows)
            sql2 = "SELECT mid FROM missing ORDER BY date_created DESC;"
            cursor.execute(sql2)
            row = cursor.fetchone()
            conn.commit()
            resp = jsonify(data = row, valid=True)
            resp.status_code = 200
            # print(resp)
            return resp
        else:
            return not_found()
    except Exception as e:
        print('====================== EXCEPTION ========================')
        print(e)
    finally:
        print('Done')
        cursor.close()
        conn.close()
