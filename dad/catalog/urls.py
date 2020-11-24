from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('ipas/', views.IpaListView.as_view(), name='ipas'),
    path('ipa/<int:pk>', views.IpaDetailView.as_view(), name='ipa-detail'),      ##int:pk = pk is the expected variable to continue working with (primary key)
    path('words/', views.WordListView.as_view(), name='words'),
    path('word/<int:pk>', views.WordDetailView.as_view(), name='word-detail'),      ##int:pk = pk is the expected variable to continue working with (primary key)
    path('audio/<int:pk>', views.index, name='audio'),
]