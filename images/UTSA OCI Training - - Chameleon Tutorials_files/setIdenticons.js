// base64 encoded PNG
function setIdenticons() {
    var identicons = document.getElementsByClassName("identicon");

    for (var i = 0; i < identicons.length; i++) {
        var identicon = identicons[i];
        var name = identicon.getAttribute("data-name");

        var shaObj = new jsSHA("SHA-512", "TEXT");
        shaObj.setHMACKey("abc", "TEXT");
        shaObj.update(name);
        var hmac = shaObj.getHMAC("HEX");
        var data = new Identicon(hmac, 300).toString();

        identicon.src="data:image/png;base64," + data;
    }
}

window.onload = setIdenticons;
