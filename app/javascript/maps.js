function post (){
  const link_europe = document.getElementById("link_europe");
  link_europe.addEventListener("click", () => {
    console.log("イベント発火");
  });
};

window.addEventListener('load', post);