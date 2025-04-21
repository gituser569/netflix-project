#!/bin/bash

# Create directory for the page
mkdir -p netflix_clone
cd netflix_clone

# Create index.html
cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Netflix</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="hero">
        <div class="overlay"></div>
        <div class="content">
            <h1>Unlimited movies, TV shows, and more</h1>
            <p>Watch anywhere. Cancel anytime.</p>
            <form>
                <input type="email" placeholder="Email address" required>
                <button type="submit">Get Started &gt;</button>
            </form>
        </div>
    </div>
</body>
</html>
EOF

# Create style.css
cat << 'EOF' > style.css
body, html {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    height: 100%;
}

.hero {
    background: url('https://assets.nflxext.com/ffe/siteui/vlv3/29c61d2f-a3e2-4a3a-8442-0b91ddc8e2f1/9496e5c8-cbfb-4db4-8710-12e2f4ebfa46/US-en-20230417-popsignuptwoweeks-perspective_alpha_website_medium.jpg') no-repeat center center/cover;
    height: 100vh;
    position: relative;
    color: white;
}

.overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.6);
}

.content {
    position: relative;
    z-index: 1;
    top: 40%;
    text-align: center;
    transform: translateY(-50%);
    padding: 0 20px;
}

.content h1 {
    font-size: 3em;
    margin-bottom: 0.5em;
}

.content p {
    font-size: 1.3em;
    margin-bottom: 1em;
}

form input[type="email"] {
    padding: 10px;
    font-size: 1em;
    width: 300px;
    max-width: 80%;
}

form button {
    padding: 10px 20px;
    font-size: 1em;
    background-color: #e50914;
    color: white;
    border: none;
    cursor: pointer;
    margin-left: 10px;
}

form button:hover {
    background-color: #f6121d;
}
EOF

echo "✅ Netflix-style HTML page created in 'netflix_clone/'"
