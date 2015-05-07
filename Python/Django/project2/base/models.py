from django.db import models
# from django.contrib.auth.models import User


class Country(models.Model):
    name = models.CharField(max_length=50)
    nationality = models.CharField(max_length=50)


class Province(models.Model):
    name = models.CharField(max_length=50)
    owner = models.ForeignKey(Country)


class Money(models.Model):
    pln = models.FloatField(default=0)


class Skills(models.Model):
    management = models.FloatField(default=0)


class Player(models.Model):
    name = models.CharField(max_length=30)
    age = models.IntegerField(default=18)
    nationality = models.ForeignKey(Country)
    location = models.ForeignKey(Province)
    money = models.ForeignKey(Money)
    skills = models.ForeignKey(Skills)