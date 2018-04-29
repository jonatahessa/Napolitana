function main() {
    document.querySelector("#select-tipo").addEventListener("change", hideShowBroto);
    hideShowBroto();
}

function hideShowBroto() {
  if (document.querySelector("#select-tipo").value == 'PROMOCAO') {
    document.querySelector("#calzone").style.display = 'none';
    document.querySelector("#broto").style.display = 'none';
  } else if (document.querySelector("#select-tipo").value == 'PORCAO') {
    document.querySelector("#broto").style.display = 'block';
    document.querySelector("#calzone").style.display = 'none';
  } else {
    document.querySelector("#broto").style.display = 'block';
    document.querySelector("#calzone").style.display = 'block';
  }
}

window.addEventListener("load", main);
