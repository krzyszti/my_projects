from django.conf.urls import patterns, url
from django.contrib.auth.views import logout, login

urlpatterns = patterns('player.views',
                       url(r'^$', 'index', name='index'),
                       url(r'^index$', 'index', name='index'),
                       url(r'^login$', login, name='login'),
                       url(r'^logout$', logout, {'next_page':'index'}, name='logout'),
                       url(r'^register$', 'register', name='register'),
                       url(r'^playerList$', 'playerList', name='playerList'),
                       )