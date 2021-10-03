��                          L     4   Z  T   �  �   �     �  7   �  9   �     -  �   E          -  �  C  :     �   >  -     /   A  U   q  �   �  �   �	    
  _   -  	   �  �   �  h  "     �  [   �  �   �  ]   �  �        �  �  �  L   �  4     T   O  �   �     i  7   {  9   �     �  �        �     �  �    :   �  �   �  -   �  /     U   1  �   �  �   P    �  _   �  	   M  �   W  h  �     K  [   ]  �   �  ]   s  �   �     �   Add a CNAME record in your DNS that points the domain to: ``readthedocs.io`` Add a domain that you wish to point at Read the Docs Add a project domain in the :guilabel:`Domains` project admin page for your project. After configuring your custom domain on Read the Docs, you can see the status of the certificate on the domain page in your project admin dashboard (:guilabel:`Domains` > :guilabel:`Edit Domain`). Alternate Domains An example nginx configuration for pip would look like: As another example, fabric's dig record looks like this:: Broadly, the steps are: By default, when you setup a custom domain to host documentation at Read the Docs, we will attempt to provision a domain validated SSL certificate for the domain. This service is generously provided by Cloudflare. Custom Domain SSL Custom Domain Support Due to a limitation, a domain cannot be proxied on Cloudflare to another Cloudflare account that also proxies. This results in a "CNAME Cross-User Banned" error. In order to do SSL termination, we must proxy this connection. If you don't want us to do SSL termination for your domain -- **which means you are responsible for the SSL certificate** -- then set your CNAME to ``cloudflare-to-cloudflare.readthedocs.io`` instead of ``readthedocs.io``. Enable proxying to us, with a custom ``X-RTD-SLUG`` header Every project has a subdomain that is available to serve its documentation. If you go to <slug>.readthedocs.io, it should show you the latest version of documentation. A good example is https://pip.readthedocs.io For more details, see this `previous issue`_. Have a server listening on 443 that you control If you change the CNAME record, the SSL certificate issuance can take about one hour. If you have an old project that has an underscore (_) in the name, it will use a subdomain with a hyphen (-). `RFC 1035 <http://tools.ietf.org/html/rfc1035>`_ has more information on valid subdomains. If you would prefer to do your own SSL termination on a server you own and control, you can do that although the setup is a bit more complex. If your domain has configured CAA records, please do not forget to include Cloudflare CAA entries, see their `Certification Authority Authorization (CAA) FAQ <https://support.cloudflare.com/hc/en-us/articles/115000310832-Certification-Authority-Authorization-CAA-FAQ>`_. Procure an SSL certificate for your domain and provision it and the private key on your server. Proxy SSL Read the Docs supports a number of custom domains for your convenience. Shorter URLs make everyone happy, and we like making people happy! Some older setups configured a CNAME record pointing to ``readthedocs.org`` or another variation. While these continue to resolve, they do not yet allow us to acquire SSL certificates for those domains. Point the CNAME to ``readthedocs.io`` and re-request a certificate by saving the domain in the project admin (:guilabel:`Domains` > :guilabel:`Edit Domain`). Subdomain Support Using pip as an example, https://pip.pypa.io resolves, but is hosted on our infrastructure. We don't currently support pointing subdomains or naked domains to a project using ``A`` records. It's best to point a subdomain, ``docs.example.com`` for example, using a CNAME record. You can also host your documentation from your own domain by adding a domain to your project: You can also use `rtfd.io` and `rtfd.org` for short URLs for Read the Docs. For example, https://pip.rtfd.io redirects to its documentation page. Any use of `rtfd.io` or `rtfd.org` will simply be redirected to `readthedocs.io`. rtfd.org Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-17 19:05-0500
PO-Revision-Date: 2018-09-18 00:15+0000
Last-Translator: Anthony <aj@ohess.org>
Language: pt_BR
Language-Team: Portuguese (Brazil) (http://www.transifex.com/readthedocs/readthedocs-docs/language/pt_BR/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Add a CNAME record in your DNS that points the domain to: ``readthedocs.io`` Add a domain that you wish to point at Read the Docs Add a project domain in the :guilabel:`Domains` project admin page for your project. After configuring your custom domain on Read the Docs, you can see the status of the certificate on the domain page in your project admin dashboard (:guilabel:`Domains` > :guilabel:`Edit Domain`). Alternate Domains An example nginx configuration for pip would look like: As another example, fabric's dig record looks like this:: Broadly, the steps are: By default, when you setup a custom domain to host documentation at Read the Docs, we will attempt to provision a domain validated SSL certificate for the domain. This service is generously provided by Cloudflare. Custom Domain SSL Custom Domain Support Due to a limitation, a domain cannot be proxied on Cloudflare to another Cloudflare account that also proxies. This results in a "CNAME Cross-User Banned" error. In order to do SSL termination, we must proxy this connection. If you don't want us to do SSL termination for your domain -- **which means you are responsible for the SSL certificate** -- then set your CNAME to ``cloudflare-to-cloudflare.readthedocs.io`` instead of ``readthedocs.io``. Enable proxying to us, with a custom ``X-RTD-SLUG`` header Every project has a subdomain that is available to serve its documentation. If you go to <slug>.readthedocs.io, it should show you the latest version of documentation. A good example is https://pip.readthedocs.io For more details, see this `previous issue`_. Have a server listening on 443 that you control If you change the CNAME record, the SSL certificate issuance can take about one hour. If you have an old project that has an underscore (_) in the name, it will use a subdomain with a hyphen (-). `RFC 1035 <http://tools.ietf.org/html/rfc1035>`_ has more information on valid subdomains. If you would prefer to do your own SSL termination on a server you own and control, you can do that although the setup is a bit more complex. If your domain has configured CAA records, please do not forget to include Cloudflare CAA entries, see their `Certification Authority Authorization (CAA) FAQ <https://support.cloudflare.com/hc/en-us/articles/115000310832-Certification-Authority-Authorization-CAA-FAQ>`_. Procure an SSL certificate for your domain and provision it and the private key on your server. Proxy SSL Read the Docs supports a number of custom domains for your convenience. Shorter URLs make everyone happy, and we like making people happy! Some older setups configured a CNAME record pointing to ``readthedocs.org`` or another variation. While these continue to resolve, they do not yet allow us to acquire SSL certificates for those domains. Point the CNAME to ``readthedocs.io`` and re-request a certificate by saving the domain in the project admin (:guilabel:`Domains` > :guilabel:`Edit Domain`). Subdomain Support Using pip as an example, https://pip.pypa.io resolves, but is hosted on our infrastructure. We don't currently support pointing subdomains or naked domains to a project using ``A`` records. It's best to point a subdomain, ``docs.example.com`` for example, using a CNAME record. You can also host your documentation from your own domain by adding a domain to your project: You can also use `rtfd.io` and `rtfd.org` for short URLs for Read the Docs. For example, https://pip.rtfd.io redirects to its documentation page. Any use of `rtfd.io` or `rtfd.org` will simply be redirected to `readthedocs.io`. rtfd.org 