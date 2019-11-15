const changeBtnToInput = () => {
  console.log('Recherche de bouton');
  const btn = document.getElementById('add-cocktail');
  const input = document.getElementById('cocktail-name')

  const onBtnClic = (e) => {
    e.preventDefault
    console.log('Changing btn');
    btn.classList.add('d-none');
    input.classList.remove('d-none');
  }

  if (btn) {
    btn.addEventListener('click', onBtnClic);
  }
}

export { changeBtnToInput };
