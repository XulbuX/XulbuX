<div align="center">

  <!-- Particle Animation -->
  <canvas id="particles-js" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; z-index: -1;"></canvas>

\ \ / / | || | | | \ \ / / \ V /_ | || |_ | |_ \ V / > <| | | | || ' | | | | | > <
/ . \ || | || |) | | || |/ . \ // __,|||.__/||_,/_/ _\

<h1>👋 Hi, I'm XulbuX! Nice to see you here.</h1>

<!-- Rotating 3D Username -->
<div id="3d-username" style="height: 200px; width: 300px;"></div>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&pause=1000&color=38F7F7&center=true&vCenter=true&width=435&lines=Passionate+Coder;Modding+Enthusiast;UX+Design+Aficionado)](https://git.io/typing-svg)

</div>

<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script>
particlesJS.load('particles-js', 'https://cdn.jsdelivr.net/particles.js/2.0.0/demo/particles.json', function() {
  console.log('particles.js loaded');
});
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"></script>
<script>
var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera(75, window.innerWidth/window.innerHeight, 0.1, 1000);
var renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.getElementById('3d-username').appendChild(renderer.domElement);

var geometry = new THREE.TextGeometry('XulbuX', {size: 5, height: 1});
var material = new THREE.MeshBasicMaterial({color: 0x38F7F7});
var textMesh = new THREE.Mesh(geometry, material);
scene.add(textMesh);

camera.position.z = 10;

var animate = function () {
  requestAnimationFrame(animate);
  textMesh.rotation.x += 0.01;
  textMesh.rotation.y += 0.01;
  renderer.render(scene, camera);
};

animate();
</script>
