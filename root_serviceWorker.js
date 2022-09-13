const cacheName = 'v1';

const cacheAssets =  [
    'index.html'
]

// call install event
self.addEventListener('install', event => {
    console.log('service worker installed!');

    // caching
    event.waitUntil(caches.open(cacheName)
        .then( cache => {
            console.log('service worker caching index');
            cache.addAll(cacheAssets); 
        })
        .then( () => self.skipWaiting())
    );
});

self.addEventListener('activate', event => {
    console.log('service worker activated');
});