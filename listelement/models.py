from django.db import models

# Create your models here.
class Category(models.Model):
    title = models.CharField(max_length=255)
    url_clean = models.CharField(max_length=255)


class Type(models.Model):
    title = models.CharField(max_length=255)
    url_clean = models.CharField(max_length=255)

class Element(models.Model):
    title = models.CharField(max_length=255)
    url_clean = models.CharField(max_length=255)
    description = models.TextField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    type = models.ForeignKey(Type, on_delete=models.CASCADE)