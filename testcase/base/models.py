from django.db import models


class Genre(models.Model):
    name = models.CharField(max_length=30)


class Band(models.Model):
    name = models.CharField(max_length=30)
    city = models.CharField(max_length=60)
    country = models.CharField(max_length=50)
    website = models.URLField()

    def __str__(self):
        return self.name


class Artist(models.Model):
    name = models.CharField(max_length=60)
    instrument = models.CharField(max_length=60)
    band = models.ForeignKey(Band)


class Album(models.Model):
    name = models.CharField(max_length=30)
    price = models.FloatField(max_length=10)
    year = models.DateField()
    band = models.ForeignKey(Band)
    genre = models.ForeignKey(Genre)


class Song(models.Model):
    name = models.CharField(max_length=30)
    composer = models.ForeignKey(Artist)
    album = models.ForeignKey(Album)