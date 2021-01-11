let object1 = {'a':{'b':{'c':'d'}}};
let key1 = 'a.b.c';
 
let object2 = {'x':{'y':{'z':'a'}}};
let key2 = 'x.y.z';



function getFinalValue(object, key) {
    
    const keys = key.split('.');
    let obj = object;
    for (let ikey of keys) {
        for (let [objKey, value] of Object.entries(obj)) {
            if(!keys.includes(objKey)) {
                continue; //run till we find a match
            }
            obj = value;
        }
    }
    return obj;
}


console.log('value is - '+getFinalValue(object1, key1));
console.log('value is - '+getFinalValue(object2, key2));
