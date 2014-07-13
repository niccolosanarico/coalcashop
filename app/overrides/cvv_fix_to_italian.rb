Deface::Override.new(:virtual_path => 'spree/content/cvv',
                     :name => 'cvv_fix_to_italian',
                     :remove => 'p'
                     )

Deface::Override.new(:virtual_path => 'spree/content/cvv',
                     :name => 'cvv_fix_to_italian_add_ita',
                     :insert_after => 'h1',
                     :text => '
                        <p>
                          Per i circuiti Visa, Mastercard, Discover, il codice CVV &egrave; dato dalle ultime 3
                          cifre riportate sul retro della carta o subito sopra lo spazio per la firma. Per il
                          circuito American Express, il CVV &egrave; rappresentato dalle 4 cifre sul fronte della carta,
                          al di sopra del numero della carta stessa.
                        </p>
                        <p>
                          Per ridurre il rischio di frodi, le compagnie di carte di credito hanno introdotto un codice
                          aggiuntivo. Visa lo indica con "CVV" (Card Verification Value), Mastercard lo chiama "CVC" (Card Validation
                          Code), Discover lo chiama "CID" (Card ID).
                          Si tratta di un codice di sicurezza di 3 o 4 cifre localizzato solitamente sul retro delle carte, verso la fine della
                          sezione per la firma.
                        </p>
                    ')
