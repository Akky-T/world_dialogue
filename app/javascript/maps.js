function post (){
  const link_azia_oceania = document.getElementById("link_europe");
  link_azia_oceania.addEventListener("click", () => {
    console.log("イベント発火");
  });
};

window.addEventListener('load', post);