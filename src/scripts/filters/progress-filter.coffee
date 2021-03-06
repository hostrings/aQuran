app.filter 'progress', [ ->
    strings =
        'STORE.FETCHING' : 'Loading ${storeName} database from the server...'
        'STORE.INSERTING': 'Storing ${storeName} for offline use...'
        'STORE.UPDATING' : 'Updating ${storeName} database...'

    (message) ->
        _.template strings[message.action], message.data
]