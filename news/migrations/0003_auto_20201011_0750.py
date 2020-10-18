# Generated by Django 3.1.1 on 2020-10-11 07:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0002_remove_news_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='title',
            field=models.CharField(max_length=255, unique=True),
        ),
        migrations.AlterField(
            model_name='news',
            name='url',
            field=models.TextField(null=True),
        ),
    ]
