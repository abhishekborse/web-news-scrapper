from bs4 import BeautifulSoup
import requests


class SlashdotScrapper:
    def __init__(self):
        self.url = 'https://slashdot.org/'
        self.page = requests.get(self.url)
        self.soup = BeautifulSoup(self.page.content, 'html.parser')

    def get_extracted_data(self):
        news_data = []
        articles = self.soup.find_all('article')
        for article in articles:
            article_title = article.find('span', {'class': 'story-title'})
            if not article_title:
                continue
            article_title = article_title.find("a", {"href": True})
            article_text = article.find('div', {'class': 'body'})
            if not article_text:
                continue
            article_text = article_text.find('div', {'class': 'p'})
            link = article_title['href'] if article_title else None
            title = article_title.text if article_title else None
            body = article_text.text if article_text else None
            if link and title:
                news_data.append({
                    'url': f'https:{link}',
                    'title': title,
                    'news_body': body,
                    'source': 'slashdot'
                })
        return news_data
