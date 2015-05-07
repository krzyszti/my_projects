from django.conf.urls import patterns, url

urlpatterns = patterns('crud.views',
                       url(r'^$', 'index', name='index'),
                       url(r'^index$', 'index', name='index'),
                       url(r'^create/band$', 'createBand', name='createBand'),
                       url(r'^read/band$', 'readBand', name='readBand'),
                       url('^update/band/(?P<pk>[0-9]+)/$', 'updateBand', name='updateBand'),
                       url('^delete/band/(?P<pk>[0-9]+)/$', 'deleteBand', name='deleteBand'),
                       url(r'^update/band/$', 'updateBandPk', name='updateBandPk'),
                       url(r'^delete/band/$', 'deleteBandPk', name='deleteBandPk'),
                       url(r'^genres/$', 'genreList', name='genreList'),
                       url(r'^genres/(?P<pk>[0-9]+)/$', 'genreDetail', name='genreDetail'),
                       )