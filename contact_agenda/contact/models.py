# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Contact(models.Model):
    contact_id = models.AutoField(primary_key=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)
    contact_relation = models.ForeignKey('ContactRelation', models.DO_NOTHING, blank=True, null=True)
    contact_address = models.ForeignKey('ContactAddress', models.DO_NOTHING, blank=True, null=True)
    contact_name = models.CharField(max_length=30)
    contact_lastname = models.CharField(max_length=30)
    phone_number = models.IntegerField(unique=True)
    contact_email = models.CharField(unique=True, max_length=40, blank=True, null=True)
    contact_birthday = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contact'


class ContactAddress(models.Model):
    contact_address_id = models.AutoField(primary_key=True)
    address_1 = models.CharField(max_length=70, blank=True, null=True)
    address_2 = models.CharField(max_length=70, blank=True, null=True)
    city = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contact_address'


class ContactRelation(models.Model):
    contact_relation_id = models.AutoField(primary_key=True)
    contact_relation_text = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contact_relation'



class Session(models.Model):
    sessions_id = models.AutoField(primary_key=True)
    user = models.ForeignKey('User', models.DO_NOTHING, blank=True, null=True)
    user_sesion_id = models.CharField(unique=True, max_length=400, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'session'


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    user_nickname = models.CharField(unique=True, max_length=20)
    user_firstname = models.CharField(max_length=20)
    user_lastname = models.CharField(max_length=20)
    password = models.CharField(max_length=400, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
