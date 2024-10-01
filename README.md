<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>XulbuX's GitHub Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background: linear-gradient(45deg, #f3f4f6, #e5e7eb);
        }
        h1 {
            color: #2563eb;
            text-align: center;
            font-size: 2.5em;
            margin-bottom: 30px;
            animation: fadeIn 1.5s;
        }
        .profile-section {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .profile-section:hover {
            transform: translateY(-5px);
        }
        h2 {
            color: #4b5563;
            border-bottom: 2px solid #e5e7eb;
            padding-bottom: 10px;
        }
        ul {
            list-style-type: none;
            padding-left: 0;
        }
        li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        .icon {
            margin-right: 10px;
            font-size: 1.2em;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .skills {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .skill {
            text-align: center;
            animation: bounceIn 1s;
        }
        @keyframes bounceIn {
            0% { transform: scale(0.1); opacity: 0; }
            60% { transform: scale(1.2); opacity: 1; }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>
    <h1>👋 Welcome to XulbuX's Coding Universe!</h1>
    
    <div class="profile-section">
        <h2>About Me</h2>
        <ul>
            <li><span class="icon">🚀</span> Passionate coder and modding enthusiast</li>
            <li><span class="icon">🌟</span> Transforming ideas into digital reality</li>
            <li><span class="icon">🎮</span> Exploring the intersection of gaming and programming</li>
        </ul>
    </div>

    <div class="profile-section">
        <h2>Current Focus</h2>
        <ul>
            <li><span class="icon">🐍</span> Mastering the art of Python</li>
            <li><span class="icon">🌐</span> Crafting beautiful web experiences with HTML and CSS</li>
            <li><span class="icon">🔧</span> Diving deep into the world of modding and customization</li>
        </ul>
    </div>

    <div class="profile-section">
        <h2>Skills in Progress</h2>
        <div class="skills">
            <div class="skill">
                <img src="/api/placeholder/80/80" alt="Python logo">
                <p>Python</p>
            </div>
            <div class="skill">
                <img src="/api/placeholder/80/80" alt="HTML5 logo">
                <p>HTML</p>
            </div>
            <div class="skill">
                <img src="/api/placeholder/80/80" alt="CSS3 logo">
                <p>CSS</p>
            </div>
        </div>
    </div>

    <div class="profile-section">
        <h2>Let's Connect!</h2>
        <p>Feel free to explore my repositories and don't hesitate to reach out for collaborations or just a friendly chat about coding and modding!</p>
    </div>
</body>
</html>
