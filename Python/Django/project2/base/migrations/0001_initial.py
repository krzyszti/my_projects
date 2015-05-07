# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('nationality', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Money',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('pln', models.FloatField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='player',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=30)),
                ('age', models.IntegerField(default=18)),
            ],
        ),
        migrations.CreateModel(
            name='Province',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('owner', models.ForeignKey(to='base.Country')),
            ],
        ),
        migrations.CreateModel(
            name='Skills',
            fields=[
                ('id', models.AutoField(auto_created=True, verbose_name='ID', serialize=False, primary_key=True)),
                ('management', models.FloatField(default=0)),
            ],
        ),
        migrations.AddField(
            model_name='player',
            name='location',
            field=models.ForeignKey(to='base.Province'),
        ),
        migrations.AddField(
            model_name='player',
            name='money',
            field=models.ForeignKey(to='base.Money'),
        ),
        migrations.AddField(
            model_name='player',
            name='nationality',
            field=models.ForeignKey(to='base.Country'),
        ),
        migrations.AddField(
            model_name='player',
            name='skills',
            field=models.ForeignKey(to='base.Skills'),
        ),
    ]
