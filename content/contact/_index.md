+++
title = "Contact Us"
date  = "2025-05-27T10:00:00-07:00"
draft = false
+++

<div class="contact-grid">

  <!-- Contact Info Card -->
  <section class="contact-info">
    <h2>Get in Touch</h2>
    <ul class="contact-list">
      <li>
        <a href="mailto:labs@itj.com">
          {{< icon name="email" >}}
          <span>labs@itj.com</span>
        </a>
      </li>
      <li>
        <a href="https://wa.me/526644164937" target="_blank">
          {{< icon name="whatsapp" >}}
          <span>+52 664 416 4937</span>
        </a>
      </li>
      <li>
        <a href="https://www.linkedin.com/company/itj/" target="_blank">
          {{< icon name="linkedin" >}}
          <span>LinkedIn</span>
        </a>
      </li>
    </ul>
  </section>

  <!-- Contact Form Card -->
  <section class="contact-form">
    <h2>Send us a message</h2>
    <form action="https://formsubmit.co/labs@itj.com" method="POST">
      <input type="hidden" name="_subject" value="New message from AI Solutions website" />
      <input type="hidden" name="_captcha" value="false" />
      <input type="hidden" name="_next" value="https://itj-labs.github.io/department-site/" />
      <div class="form-group">
        <label for="name">Your Name</label>
        <input type="text" id="name" name="name" placeholder="Jane Doe" required />
      </div>
      <div class="form-group">
        <label for="email">Your Email</label>
        <input type="email" id="email" name="email" placeholder="you@example.com" required />
      </div>
      <div class="form-group">
        <label for="message">Message</label>
        <textarea id="message" name="message" placeholder="How can we help you today?" rows="6" required></textarea>
      </div>
      <button type="submit">Send Message</button>
    </form>
  </section>

</div>
