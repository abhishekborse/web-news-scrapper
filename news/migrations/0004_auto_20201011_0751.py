# Generated by Django 3.1.1 on 2020-10-11 07:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0003_auto_20201011_0750'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='news_body',
            field=models.TextField(null=True),
        ),
    ]
