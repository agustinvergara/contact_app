from django.urls import path
from contact.api.views import *

app_name = 'contact-api'

urlpatterns = [
    path('contact/<int:contact_id>', api_contactserializer_detailview, name='api-user'),
]