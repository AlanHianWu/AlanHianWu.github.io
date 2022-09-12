"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// messing around indexedDB to see how it works
const indexedDB = window.indexedDB;
const request = indexedDB.open("exampleDB", 1);
// error handling
request.onerror = function (event) {
    console.error("hello, can't open DB type error here");
    console.error(event);
};
request.onupgradeneeded = function () {
    const db = request.result;
    // createobjectstore is the same as tables
    // create keypath for primary key
    const store = db.createObjectStore("cars", { keyPath: 'id' });
    store.createIndex('cars_colour', ['colour'], { unique: false });
    store.createIndex('colour_and_make', ['colour', 'make'], { unique: false });
};
// note inserts and lookup don't usally belong in here
request.onsuccess = function () {
    const db = request.result;
    const transaction = db.transaction("cars", "readwrite");
    const store = transaction.objectStore("cars");
    console.log('REQUEST ON SUCESS: ', store);
    const index = store.index('cars_colour');
    const makeIndex = store.index("colour_and_make");
    store.put({ id: 1, colour: 'red', make: 'tesla' });
    const idQuery = store.get(1);
    const indexQuery = index.getAll(2);
    const makeIndexQuery = makeIndex.get('');
    idQuery.onsuccess = function () {
        console.log("idQuery sucess! ", idQuery.result);
    };
    idQuery.onerror = function (event) {
        console.log("idQuery error! ", event);
    };
    indexQuery.onsuccess = function () {
        console.log("indexQuery sucess! ", indexQuery.result);
    };
    indexQuery.onerror = function (event) {
        console.log("indexQuery error! ", event);
    };
    makeIndexQuery.onsuccess = function () {
        console.log("makeIndexQuery sucess! ", makeIndexQuery.result);
    };
    makeIndexQuery.onerror = function (event) {
        console.log("makeIndexQuery error! ", event);
    };
    // close db
    transaction.oncomplete = function () {
        console.log('DB closed');
        db.close();
    };
    //test
};
// end of indexedDB
// start of localStorage
localStorage.setItem('name', 'Bob');
console.log('Local Storage HERE! ', localStorage.getItem('name'));
// end of localStorage
// start of SessionStorage
sessionStorage.setItem('name', 'Alice');
console.log('Session Storage HERE! ', sessionStorage.getItem('name'));
// end of SessionStorage
// start of Cookies
document.cookie = 'name=marry; expires=' + new Date(2023, 0, 1).toUTCString();
console.log('COOKIE HERE! ', document.cookie);
// end of Cookies
// start of caching
// check avaible
if (navigator.serviceWorker) {
    // console.log('service supported');
    window.addEventListener('load', () => {
        // register path is relative to the html page so the service worker js file needs to be in the same dir as the html arhhhh.
        navigator.serviceWorker
            .register('/TypeScripts/js/serviceWorker.js')
            .then(reg => console.log('service worker regestered!'))
            .catch(err => console.log(`service worker: error ${err}`));
    });
}
;
// end of caching
// see storage Manager
console.log('Storage? => ', navigator.storage.estimate());
