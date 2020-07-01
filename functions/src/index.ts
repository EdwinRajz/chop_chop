import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
import algoliasearch from 'algoliasearch';

const ALGOLIA_APP_ID = 'QBA7WQDNJ8';
const ALGOLIA_ADMIN_KEY = '70600e8d07bfd646b9694c59d8bc39dd';
const ALGOLIA_INDEX_NAME = 'products';
const client = algoliasearch(ALGOLIA_APP_ID, ALGOLIA_ADMIN_KEY);
admin.initializeApp();
const index = client.initIndex(ALGOLIA_INDEX_NAME)

export const onCreateProduct = functions
    .firestore
    .document(`products/{id}`)
    .onWrite(async (change, context) => {
        const id: string = context.params.id;

        if (!change.after.exists) {
            await index.deleteObject(id);
        } else {
            const data = change.after.data()!;
            await index.saveObject({'objectID': id, ...data});
        }
    });