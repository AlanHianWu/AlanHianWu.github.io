"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// messing around to see how it works
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
        db.close();
    };
    //test
};
