# Generated by Django 3.1.3 on 2020-12-07 16:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('scripts', '0004_auto_20201207_1558'),
    ]

    operations = [
        migrations.RenameField(
            model_name='script',
            old_name='script_base64',
            new_name='code_base64',
        ),
    ]