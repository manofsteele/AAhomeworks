document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById("mycanvas"); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  canvasEl.height = 500;
  canvasEl.width = 500;
  const ctx = canvasEl.getContext("2d");
  ctx.fillStyle = "red";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(250, 250, 100, 0, 2 * Math.PI);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();

  ctx.fillStyle = "blue";
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(45, 360);
  ctx.lineTo(250, 45);
  ctx.lineTo(455, 360);
  ctx.lineTo(45, 360);
  ctx.strokeStyle = "purple";
  ctx.lineWidth = 10;
  ctx.stroke();
});
