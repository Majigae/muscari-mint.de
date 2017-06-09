<article>

	<form name="contact" method="post" action="<?php $_SERVER['PHP_SELF'] ?>">

		<input type="text" name="name" placeholder="Name"><br>
		<input type="text" name="mail" placeholder="E-Mail-Adresse"><br>
		<input type="text" name="subject" placeholder="Betreff"><br>
		<textarea name="message" placeholder="Nachricht"></textarea><br>
		<input type="submit" name="submit" value="Send">

	</form>

</article>