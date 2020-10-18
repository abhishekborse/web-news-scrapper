from bs4 import BeautifulSoup
import requests


class QzIndiaScrapper:
    def __init__(self):
        self.url = 'https://qz.com/india/'
        self.page = requests.get(self.url)
        self.soup = BeautifulSoup(self.page.content, 'html.parser')

    def get_extracted_data(self):
        news_data = []
        h3_tags = self.soup.find_all('h3')
        for h3_tag in h3_tags:
            p_tags = h3_tag.next_sibling.find_all('p')
            body = ' '.join([p_tag.text for p_tag in p_tags])
            news_data.append({
                'url': None,
                'title': h3_tag.text,
                'news_body': body,
                'source': 'qz'
            })
        return news_data
