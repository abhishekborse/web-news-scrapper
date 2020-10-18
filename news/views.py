from rest_framework.permissions import IsAuthenticated

from news.models import News
from news.scrapper.web_scrapper import WebScrapper
from news.serializers import NewsSerializers, CreateNewsSerializers
from rest_framework.viewsets import generics, ModelViewSet
from rest_framework.response import Response
from rest_framework import filters


class NewsListAPIView(generics.ListAPIView):
    queryset = News.objects.all()
    serializer_class = NewsSerializers
    filter_backends = [filters.SearchFilter]
    search_fields = ['title', 'source']
    permission_classes = (IsAuthenticated,)


class NewsAPI(ModelViewSet):
    queryset = News.objects.all()
    serializer_class = NewsSerializers
    filter_backends = [filters.SearchFilter]
    search_fields = ['title', 'source']
    permission_classes = (IsAuthenticated,)

    def create(self, request, *args, **kwargs):
        ws = WebScrapper()
        news_data = ws.get_extracted_data_to_save()
        batch = [News(title=row['title'], news_body=row['news_body'], source=row['source'],
                      url=row['url']) for row in news_data]
        news = News.objects.bulk_create(batch, ignore_conflicts=True)
        serializer = NewsSerializers(news, many=True, context={'request': request})
        return Response(serializer.data)

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())
        serializer = NewsSerializers(queryset, many=True, context={'request': request})
        return Response(serializer.data)
