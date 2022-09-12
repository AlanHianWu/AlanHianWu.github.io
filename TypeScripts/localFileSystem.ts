
// messing around to see how it works
const indexedDB = window.indexedDB;


const request = indexedDB.open("exampleDB", 1);

// error handling
request.onerror = function (event) {
    console.error("can't open DB");
    console.error(event);
};

request.onupgradeneeded = function () {
    const db = request.result;

    // createobjectstore is the same as tables
    // create keypath for primary key
    const store = db.createObjectStore("ExampleDB", {keyPath: 'id'});
    store.createIndex('Example_catagory-0', ['catagory-0'], {unique: false});
    store.createIndex('Example_catagory-1', ['catagory-1', 'catagory-2'], {unique: false});
    
};

// note inserts and lookup don't usally belong in here
request.onsuccess = function () {
    const db = request.result;
    const transaction = db.transaction("ExampleDB", "readwrite");

    const store = transaction.objectStore("ExampleDB");
    const index = store.index("Example_catagory-0");
    const makeIndex = store.index("Example_catagory-1");

    store.put({'id': 1, 'catagory-0': 2, 'catagory-2': 3});


    const idQuery = store.get(1);
    const indexQuery = index.getAll(2);
    const makeIndexQuery = makeIndex.get('');

    idQuery.onsuccess = function () {
        console.log("idQuery sucess! ", idQuery.result);
    };

    // close db
    transaction.oncomplete = function () {
        db.close();
    };
    //test

};


export {}