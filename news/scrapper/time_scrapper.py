from bs4 import BeautifulSoup
import requests


class TimeScrapper:
    def __init__(self):
        self.url = 'https://www.time.com/'
        self.page = requests.get(self.url)
        self.soup = BeautifulSoup(self.page.content, 'html.parser')

    def get_extracted_data(self):
        news_data = []
        articles = self.soup.find_all('article')
        for article in articles:
            article_title = article.find('div', {'class': 'content'}).find('h2', {'class': 'title'}).find("a", {
                "href": True})
            article_text = article.find('div', {'class': 'content'}).find('p', {'class': 'summary'})
            link = article_title['href'] if article_title else None
            title = article_title.text if article_title else None
            body = article_text.text if article_text else None
            if link and title:
                news_data.append({
                    'url': f"https://www.time.com{link}",
                    'title': title,
                    'news_body': body,
                    'source': 'time'
                })
        return news_data
