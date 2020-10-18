from rest_framework.serializers import ModelSerializer, HyperlinkedIdentityField

from news.models import News


class NewsSerializers(ModelSerializer):
    update_url = HyperlinkedIdentityField(view_name='news:news-api-detail')

    class Meta:
        model = News
        fields = ('id', 'title', 'news_body', 'source', 'url', 'update_url')


class CreateNewsSerializers(ModelSerializer):
    class Meta:
        model = News
        fields = ()
