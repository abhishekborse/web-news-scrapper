from news.scrapper.qz_india_scrapper import QzIndiaScrapper
from news.scrapper.slashdot_scrapper import SlashdotScrapper
from news.scrapper.time_scrapper import TimeScrapper
from news.scrapper.washingtonpost_scrapper import WashingtonPostScrapper
from news.models import News


class WebScrapper:
    def __init__(self):
        self.qz_india_scrapper = QzIndiaScrapper()
        self.slashdot_scrapper = SlashdotScrapper()
        self.time_scrapper = TimeScrapper()
        self.washington_post_scrapper = WashingtonPostScrapper()

    def get_extracted_data_to_save(self):
        news_data = []
        qz_india_scrapper = self.qz_india_scrapper.get_extracted_data()
        slashdot_scrapper = self.slashdot_scrapper.get_extracted_data()
        time_scrapper = self.time_scrapper.get_extracted_data()
        washington_post_scrapper = self.washington_post_scrapper.get_extracted_data()
        news_data.extend(qz_india_scrapper)
        news_data.extend(slashdot_scrapper)
        news_data.extend(time_scrapper)
        news_data.extend(washington_post_scrapper)
        news_data = self.remove_empty_body(news_data)
        return news_data

    def remove_empty_body(self, news_data):
        cleaned_data = [data for data in news_data if data.get('title', None) and data.get('news_body', None)]
        return cleaned_data
