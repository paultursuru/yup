
function veggiesSearch () {
  const form = document.querySelector('.pg-form')

  form.addEventListener("keyup", (event) => {
    const btn = document.querySelector('.pg-btn');
    btn.click();
  });
};


export { veggiesSearch }
