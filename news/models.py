from django.db import models


class News(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255, unique=True)
    news_body = models.TextField(null=True)
    source = models.CharField(max_length=255)
    url = models.TextField(null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.title
