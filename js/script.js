document.addEventListener("DOMContentLoaded", function () {
const boxes=document.querySelectorAll(".task-box"), count=document.getElementById("taskCount");
function update(){if(count)count.textContent=`${document.querySelectorAll(".task-box:checked").length}/4 completed`;}
boxes.forEach(b=>b.addEventListener("change",update));update();

const login=document.getElementById("loginForm");
if(login)login.addEventListener("submit",e=>{e.preventDefault();localStorage.setItem("placeTrackUser",document.getElementById("loginEmail").value);location.href="index.html";});

const signup=document.getElementById("signupForm");
if(signup)signup.addEventListener("submit",e=>{e.preventDefault();localStorage.setItem("placeTrackUser",document.getElementById("signupEmail").value);alert("Account created successfully.");location.href="index.html";});

const save=document.getElementById("saveProfile"),msg=document.getElementById("profileMessage");
if(save)save.addEventListener("click",()=>{msg.textContent="Profile saved successfully.";setTimeout(()=>msg.textContent="",2500);});

document.querySelectorAll(".practice-btn").forEach(b=>b.addEventListener("click",()=>alert("Practice section will open here.")));
});
function demoLogin(){localStorage.setItem("placeTrackUser","demo@placetrack.com");location.href="index.html";}
function logout(){localStorage.removeItem("placeTrackUser");location.href="login.html";}