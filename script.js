import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.1/firebase-app.js";



const firebaseConfig = {
    apiKey: "AIzaSyCpRie1xq0HIUfFDhS70JA8ea9zUdygfuI",
    authDomain: "plushare.firebaseapp.com",
    projectId: "plushare",
    storageBucket: "plushare.appspot.com",
    messagingSenderId: "215045470631",
    appId: "1:215045470631:web:014e47b9b9c107a8a71e82"
};


function login() {
    console.log('Login function called!');
}



const firebase = initializeApp(firebaseConfig);
function login() {
    console.log('clicked')
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    firebase.auth().signInWithEmailAndPassword(email, password)
        .then((userCredential) => {
            // Login successful, do something (redirect, display message, etc.)
            console.log("Login successful", userCredential);
        })
        .catch((error) => {
            // Handle errors
            const errorCode = error.code;
            const errorMessage = error.message;
            console.error("Login failed", errorCode, errorMessage);
        });
}

