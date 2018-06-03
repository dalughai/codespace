<h1>Buy "My Book"</h1>
  <p>It's all about me!</p>

  <!-- this is copied from the Stripe checkout embed -->
  <form action="your-server-side-code" method="POST">
  <script
    src="https://checkout.stripe.com/checkout.js" class="stripe-button"
    data-key="pk_test_BoQ6nuKBoeRBsC5TtBU5RPDL"
    data-amount="999"
    data-name="Demo Site"
    data-description="Example charge"
    data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
    data-locale="auto"
    data-currency="eur">
  </script>
</form>
  <!-- end of Stripe embed -->