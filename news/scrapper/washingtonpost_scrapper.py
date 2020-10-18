from bs4 import BeautifulSoup
import requests


class WashingtonPostScrapper:
    def __init__(self):
        self.url = 'https://www.washingtonpost.com/'
        self.page = requests.get(self.url)
        self.soup = BeautifulSoup(self.page.content, 'html.parser')

    def get_page(self):
        page = requests.get(self.url)
        soup = BeautifulSoup(page.content, 'html.parser')
        return soup

    def get_title(self, element):
        link = element.find("a", {"href": True})
        span = link.find("span")
        return span.text

    def get_link(self, element):
        link = element.find("a", {"href": True})
        return link['href']

    def get_extracted_data(self):
        news_data = []
        h2_tags = self.soup.findAll("h2", {"class": "font--headline"})
        h2_tags = list(set(h2_tags))
        for index, link in enumerate(h2_tags):
            href_link = self.get_link(link)
            href_text = self.get_title(link)
            if href_link:
                card = link.parent.parent.parent.parent
                news_body = set()
                for content in card:
                    news_body.add(content.text)
                news_body = list(news_body)
                news_data.append({
                    'url': href_link,
                    'title': href_text,
                    'news_body': news_body[0],
                    'source': 'washingtonpost'
                })
        return news_data
