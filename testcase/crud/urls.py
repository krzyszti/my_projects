from django.conf.urls import patterns, url

urlpatterns = patterns('crud.views',
                       url(r'^$', 'index', name='index'),
                       url(r'^index$', 'index', name='index'),
                       url(r'^create/band$', 'createBand', name='createBand'),
                       url(r'^read/band$', 'readBand', name='readBand'),
                       url('^update/band/(?P<pk>[\d]+)$', 'updateBand', name='updateBand'),
                       url(r'^update/band/$', 'updateBandPk', name='updateBandPk'),
                       )